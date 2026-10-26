# Maximum Provenance Codes - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## CodeSystem: Maximum Provenance Codes 

This Code system is referenced in the definition of the following value sets:

* [Maximum Provenance Value Set](ValueSet-maximum-provenance-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "maximum-provenance-code",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/maximum-provenance-code",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.16.5"
  }],
  "version" : "0.1.0",
  "name" : "MaximumProvenanceCS",
  "title" : "Maximum Provenance Codes",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-26T20:13:21+00:00",
  "publisher" : "DVM Consulting, Inc. (provisional steward)",
  "contact" : [{
    "name" : "DVM Consulting, Inc. (provisional steward)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://openanimalnutrition.org"
    }]
  }],
  "description" : "The kind of maximum a nutrient's range high is, which decides whether a value above it can be `excess`: only an authoritative maximum can. How the source template's maximum types map to these codes is stated, proposed and pending ratification, under Maximum types on the [Decile Basis and Band Computation](band-computation.html) page.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "authoritative",
    "display" : "Authoritative (set by a standards body)",
    "definition" : "A maximum or safe upper limit that a standards body sets for the animal and use it is applied to: in the source template, NRC's safe upper limits (as printed, as greater-than values and per kg BW^0.75 or BW^0.67, except those NRC states only for its reference kitten or queen), NRC's presumed safe maximum for choline, AAFCO's maximums (except while the AAFCO dry matter factor applies) and FEDIAF's nutritional maximums (except one used beyond the life stage it is stated for), and a maximum the source template copies from one of these. A value above it, and not below a minimum set by the applied standard, is `excess`."
  },
  {
    "code" : "conditional",
    "display" : "Conditional (a standard's figure with a condition the check does not verify)",
    "definition" : "A standard's figure that is not a maximum for every diet and animal the check covers: a maximum that applies only under a condition the check does not verify (for example a FEDIAF legal maximum, for nutrients added as additives), a maximum used beyond the life stage or reference animal it is stated for, a level a FEDIAF footnote states to be safe, or an AAFCO maximum while the AAFCO dry matter factor applies. A value above it is not `excess`."
  },
  {
    "code" : "template-set",
    "display" : "Template-set (set or computed by the source template)",
    "definition" : "A maximum that the source template sets or computes itself: its own estimates, fixed values and maximums calculated from other limits. A value above it is not `excess`."
  },
  {
    "code" : "derived-provisional",
    "display" : "Derived-provisional (computed from the minimum; revisable)",
    "definition" : "The minimum times a disclosed multiplier, where no maximum is set: a banding device, not a safe limit. A value above it is not `excess`."
  }]
}

```
