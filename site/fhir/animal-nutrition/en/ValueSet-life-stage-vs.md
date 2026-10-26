# Life Stages Value Set - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## ValueSet: Life Stages Value Set 

 **References** 

* [Life Stage](StructureDefinition-nutrient-life-stage.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "life-stage-vs",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/life-stage-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.48.4"
  }],
  "version" : "0.1.0",
  "name" : "LifeStageVS",
  "title" : "Life Stages Value Set",
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
  "description" : "All codes in the Life Stages code system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/life-stage"
    }]
  }
}

```
