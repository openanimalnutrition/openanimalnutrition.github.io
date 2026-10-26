#!/usr/bin/env bash
# Publishes one release of the Open Animal Nutrition IG into site/fhir with HL7's IG Publisher in
# publication mode (-go-publish). .github/workflows/release.yml runs it on GitHub; the same
# command runs locally.
#
# Usage: publishing/release.sh <version> <ig-source> <publisher.jar> <work-dir> [publisher options]
#   <ig-source>      the IG repository checked out at tag v<version>; it is built in place
#   <publisher.jar>  the IG Publisher (the workflow pins its version and checksum)
#   <work-dir>       a new folder for the history page template, the registry file, the
#                    publisher's temporary files and its log and build zip
#   publisher options, e.g. "-tx n/a" for a build without the terminology server
#
# The publisher first checks the release (versions, paths, that it is not yet published), then
# builds the guide twice more and writes into site/fhir: animal-nutrition/<version>/ (the
# permanent copy), animal-nutrition/ (the current release), the version history page, the
# package list and the feeds.
set -euo pipefail

VERSION=${1:?usage: release.sh <version> <ig-source> <publisher.jar> <work-dir> [options]}
IG=$(realpath -e -- "${2:?ig-source}")
JAR=$(realpath -e -- "${3:?publisher.jar}")
WORK=$(realpath -m -- "${4:?work-dir}")
shift 4
HERE=$(cd -- "$(dirname -- "$0")" && pwd)
SITE=$(realpath -e -- "$HERE/../site")
CANONICAL=https://openanimalnutrition.org/fhir/animal-nutrition

# HL7's history page template, at a pinned commit. It declares no license, so it is fetched for
# each release rather than copied into this repository.
HISTORY_REPO=https://github.com/HL7/fhir-ig-history-template.git
HISTORY_COMMIT=8a90b35a2d839cc463eaf3d1c04a02ea60abb998

[[ "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] || { echo "not a version: $VERSION" >&2; exit 2; }
[ ! -e "$WORK" ] || { echo "work dir must not exist yet: $WORK" >&2; exit 2; }

# 1. The release request and the IG must both name this version.
node - "$IG" "$VERSION" "$CANONICAL" <<'EOF'
const fs = require('fs');
const [ig, version, canonical] = process.argv.slice(2);
const pr = JSON.parse(fs.readFileSync(`${ig}/publication-request.json`, 'utf8'));
const m = fs.readFileSync(`${ig}/sushi-config.yaml`, 'utf8').match(/^version:\s*(\S+)\s*$/m);
const problems = [];
if (pr.version !== version) problems.push(`publication-request.json has version ${pr.version}`);
if (!m || m[1] !== version) problems.push(`sushi-config.yaml has version ${m ? m[1] : '(none)'}`);
if (pr.path !== `${canonical}/${version}`) problems.push(`publication-request.json has path ${pr.path}`);
if (!pr.desc) problems.push('publication-request.json has no desc');
if (problems.length) { console.error(`release ${version}: ${problems.join('; ')}`); process.exit(1); }
EOF

mkdir -p "$WORK"

# 2. The history page template, changed so that the page loads nothing from hl7.org (the
#    homepage's Privacy section): its two scripts and four icons are served from this site.
git clone -q "$HISTORY_REPO" "$WORK/ig-history"
git -C "$WORK/ig-history" -c advice.detachedHead=false checkout -q "$HISTORY_COMMIT"
rm -rf "$WORK/ig-history/.git"
sed -i 's#src="https://hl7.org/fhir/history-cm.js"#src="history-cm.js"#; s#src="https://hl7.org/fhir/history.js"#src="history.js"#' \
  "$WORK/ig-history/history.template"
sed -i 's#https://hl7.org/fhir/assets/images/#history-icons/#g' "$WORK/ig-history/history.js"
mkdir "$WORK/ig-history/history-icons"
while read -r sum name; do
  curl -fsSL --proto '=https' -o "$WORK/ig-history/history-icons/$name" "https://hl7.org/fhir/assets/images/$name"
  echo "$sum  $WORK/ig-history/history-icons/$name" | sha256sum -c --quiet -
done <<'EOF'
c80bbbe530b89537cecca8b98f0635729a03697d2fadb8743fb3b7d982ef4dd1 page.png
7facc70753b14d7e3d0f4d5c03175d0296dd7a04dd97c4ced820ade1d1ea14a4 download.gif
d2b0c46d219b7e93b4f9363cc5beb6127f7f217f27e5838792a3ad95c15c1c31 qa.png
3427654727cda23f9b123f314a8f21c6ebe0ba94c4828a4d69135cc1d048b832 npm.png
EOF
printf '\nhistory.js=overwrite\nhistory-cm.js=overwrite\nhistory-icons=overwrite\n' >> "$WORK/ig-history/manifest.ini"
if grep -qE 'src="(https?:)?//' "$WORK/ig-history/history.template" "$WORK/ig-history/history.js"; then
  echo "the history page template still loads from another site" >&2; exit 1
fi

# 3. The registry file the publisher updates. This guide is not listed in HL7's FHIR IG
#    registry; the updated file is kept with the run's log in case it is listed later.
echo '{ "guides" : [] }' > "$WORK/fhir-ig-list.json"

# 4. The ordinary build, which publication mode requires first; a release has no errors.
(cd "$IG" && java -Xmx8g -jar "$JAR" -ig . "$@")
node -e '
const qa = JSON.parse(require("fs").readFileSync(process.argv[1], "utf8"));
console.log(`QA: ${qa.errs} errors, ${qa.warnings} warnings`);
if (qa.errs !== 0) { console.error("the build has errors; fix them before a release"); process.exit(1); }
' "$IG/output/qa.json"

# 5. Publication mode. The first release needs the guide's folder to exist.
mkdir -p "$SITE/fhir/animal-nutrition"
java -Xmx8g -jar "$JAR" -go-publish -source "$IG" -web "$SITE/fhir" \
  -registry "$WORK/fhir-ig-list.json" -history "$WORK/ig-history" -templates "$HERE/templates" \
  -temp "$WORK/temp" -zips "$WORK/zips" "$@"

# 6. The guide's search page loads a search box from DuckDuckGo and no page links to it.
find "$SITE/fhir" -name searchform.html -delete

# 7. What the homepage's Privacy section says about the guide's pages: no page loads a script
#    or a frame from another site, and the only image from another site is HL7's help icon.
bad=$(grep -rhoE '<(script|iframe|img)[^>]*src="(https?:)?//[^"]*"|<link[^>]*href="(https?:)?//[^"]*"' \
        --include='*.html' "$SITE/fhir" \
        | grep -vE 'src="https?://hl7\.org/fhir/R5/help16\.png"|href="https://openanimalnutrition\.org/' \
        | sort -u || true)
if [ -n "$bad" ]; then
  echo "pages load from another site, which the homepage's Privacy section does not state:" >&2
  echo "$bad" >&2
  exit 1
fi
echo "Published $VERSION into $SITE/fhir"
