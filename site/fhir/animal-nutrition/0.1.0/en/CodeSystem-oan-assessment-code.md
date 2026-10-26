# OAN Assessment Codes - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## CodeSystem: OAN Assessment Codes 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "oan-assessment-code",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/oan-assessment-code",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.16.7"
  }],
  "version" : "0.1.0",
  "name" : "OANAssessmentCS",
  "title" : "OAN Assessment Codes",
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
  "description" : "Codes for the kind of assessment an Open Animal Nutrition observation records.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "diet-adequacy",
    "display" : "Diet nutrient adequacy assessment"
  }]
}

```
