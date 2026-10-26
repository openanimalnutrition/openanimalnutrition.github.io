# Life Stages - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## CodeSystem: Life Stages 

This Code system is referenced in the definition of the following value sets:

* [Life Stages Value Set](ValueSet-life-stage-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "life-stage",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/life-stage",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.16.4"
  }],
  "version" : "0.1.0",
  "name" : "LifeStageCS",
  "title" : "Life Stages",
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
  "description" : "Life stages for which requirement standards set nutrient requirements.",
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
    "code" : "growth",
    "display" : "Growth"
  },
  {
    "code" : "gestation-lactation",
    "display" : "Gestation / Lactation"
  },
  {
    "code" : "adult-maintenance",
    "display" : "Adult maintenance"
  },
  {
    "code" : "all-life-stages",
    "display" : "All life stages"
  }]
}

```
