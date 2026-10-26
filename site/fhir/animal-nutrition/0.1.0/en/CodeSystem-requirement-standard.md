# Requirement Standards - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## CodeSystem: Requirement Standards 

This Code system is referenced in the definition of the following value sets:

* [Requirement Standards Value Set](ValueSet-requirement-standard-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "requirement-standard",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/requirement-standard",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.16.8"
  }],
  "version" : "0.1.0",
  "name" : "RequirementStandardCS",
  "title" : "Requirement Standards",
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
  "description" : "Published nutrient requirement standards an adequacy check can be run against. Each standards body's code has a child code for each edition (is-a); record the edition's code when the edition is known. The editions are those the source template, Version 21OCT26b, cites.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "hierarchyMeaning" : "is-a",
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "NRC",
    "display" : "National Research Council",
    "definition" : "The nutrient requirements of dogs and cats published by the National Research Council, edition not stated.",
    "concept" : [{
      "code" : "NRC-2006",
      "display" : "NRC 2006",
      "definition" : "The 2006 NRC Nutrient Requirements of Dogs and Cats."
    }]
  },
  {
    "code" : "AAFCO",
    "display" : "Association of American Feed Control Officials",
    "definition" : "The dog and cat food nutrient profiles published by the Association of American Feed Control Officials, edition not stated.",
    "concept" : [{
      "code" : "AAFCO-2026",
      "display" : "AAFCO 2026",
      "definition" : "The 2026 AAFCO Official Publication (Dog and Cat Food Nutrient Profiles)."
    }]
  },
  {
    "code" : "FEDIAF",
    "display" : "European Pet Food Industry Federation",
    "definition" : "The nutritional guidelines for cats and dogs published by the European Pet Food Industry Federation, edition not stated.",
    "concept" : [{
      "code" : "FEDIAF-2025",
      "display" : "FEDIAF September 2025",
      "definition" : "The FEDIAF Nutritional Guidelines, September 2025."
    }]
  }]
}

```
