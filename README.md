# openanimalnutrition.org

The website of Open Animal Nutrition: the homepage and the published Implementation Guide (IG),
served by GitHub Pages at https://openanimalnutrition.org/. The checker is a separate service,
at https://checker.openanimalnutrition.org/, from the
[animal-nutrition-checker](https://github.com/openanimalnutrition/animal-nutrition-checker)
repository; the IG's source is the
[animal-nutrition-ig](https://github.com/openanimalnutrition/animal-nutrition-ig) repository.

## What is here

| Path | What |
|---|---|
| `site/index.html`, `site/style.css` | The homepage: plain HTML and one stylesheet, no scripts. |
| `site/404.html` | The page for an address that does not exist. |
| `site/fhir/` | The IG's published versions, written only by the release workflow: `animal-nutrition/<version>/` for each release, the current release in `animal-nutrition/`, its version history page, package list and feeds. Not edited by hand. |
| `publishing/` | `release.sh`, which publishes a release with HL7's IG Publisher, and the header and footer of the version history page. |
| `.github/workflows/` | `pages.yml` publishes `site/` on every push to main; `release.yml` publishes a release of the IG. |

## Publishing a release of the IG

1. In the IG repository, in one pull request: set the new version in `sushi-config.yaml` and in
   `publication-request.json` (`version`, and `path`, which ends with the version); describe the
   release in one paragraph in `desc`; after the first release, `first` is `false`. Merge it.
2. In the IG repository: Releases > Draft a new release, tag `v<version>` on main, publish it.
3. Here: Actions > release > Run workflow, and enter the version. In about 15 minutes it opens a
   pull request with the release; the run's page keeps the publisher's log.
4. Look at the pull request (the new version's folder and `history.html`) and merge it. The
   site shows the release a few minutes later.

The release stops, and publishes nothing, if the versions disagree, the version is already
published, the IG build has errors, or a page would load something from another site that the
homepage's Privacy section does not state.

## Privacy

The homepage's Privacy section states what these pages load. `release.sh` keeps it true: HL7's
version history page template loads two scripts and four icons from hl7.org, and the script
serves copies from this site instead; it removes the IG's search page, which loads a search box
from DuckDuckGo and is linked from no page; and it checks every page before a release.

## License

CC0 1.0 Universal (`LICENSE`) for this project's own content. The published IG also contains
files made by HL7's FHIR tools and third-party scripts (for example jQuery and Bootstrap) under
their own licenses; CC0 covers only what the contributors can waive.
