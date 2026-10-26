# Adequacy Interpretation - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## CodeSystem: Adequacy Interpretation 

This Code system is referenced in the definition of the following value sets:

* [Adequacy Interpretation Value Set](ValueSet-adequacy-interpretation-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "adequacy-interpretation",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/adequacy-interpretation",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.16.1"
  }],
  "version" : "0.1.0",
  "name" : "AdequacyInterpretationCS",
  "title" : "Adequacy Interpretation",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-26T20:14:00+00:00",
  "publisher" : "DVM Consulting, Inc. (provisional steward)",
  "contact" : [{
    "name" : "DVM Consulting, Inc. (provisional steward)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://openanimalnutrition.org"
    }]
  }],
  "description" : "Per-nutrient and overall interpretations of a diet's nutrient levels against the applied requirement standard. The rules for `deficient` and `excess` are stated, proposed and pending ratification, on the [Decile Basis and Band Computation](band-computation.html) page.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "adequate",
    "display" : "Meets the requirement"
  },
  {
    "code" : "deficient",
    "display" : "Below the minimum",
    "definition" : "Below a minimum set by the applied standard, including one raised for a caloric restriction or by the AAFCO dry matter factor, and the arginine and large-breed puppy calcium minimums the source template computes from a standard's own rule. Whether a value below a minimum that the source template supplies or computes otherwise is deficient is an open point. Proposed, pending ratification."
  },
  {
    "code" : "excess",
    "display" : "Above an authoritative maximum",
    "definition" : "Above an authoritative maximum (maxProvenance `authoritative`), and not below a minimum set by the applied standard, including one raised for a caloric restriction or by the AAFCO dry matter factor, as stated on the [Decile Basis and Band Computation](band-computation.html) page. Not used above conditional, template-set or derived-provisional maximums. Proposed, pending ratification."
  },
  {
    "code" : "complete-balanced",
    "display" : "Overall: complete and balanced"
  },
  {
    "code" : "not-complete-balanced",
    "display" : "Overall: not complete and balanced"
  }]
}

```
