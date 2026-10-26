# Animal Nutrients Value Set - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## ValueSet: Animal Nutrients Value Set 

 **References** 

* [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "animal-nutrient-vs",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/animal-nutrient-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.48.2"
  }],
  "version" : "0.1.0",
  "name" : "AnimalNutrientVS",
  "title" : "Animal Nutrients Value Set",
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
  "description" : "All codes in the Animal Nutrients code system (a stub in v0.1).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/animal-nutrient"
    }]
  }
}

```
