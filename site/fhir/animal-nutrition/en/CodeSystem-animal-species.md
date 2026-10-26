# Animal Species (STUB) - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## CodeSystem: Animal Species (STUB) 

This Code system is referenced in the definition of the following value sets:

* [Animal Species Value Set](ValueSet-animal-species-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "animal-species",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/animal-species",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.16.3"
  }],
  "version" : "0.1.0",
  "name" : "AnimalSpeciesCS",
  "title" : "Animal Species (STUB)",
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
  "description" : "STUB. v0.1 implemented coverage only. TODO: bind to an external species value set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "canine",
    "display" : "Dog (Canis lupus familiaris)"
  },
  {
    "code" : "feline",
    "display" : "Cat (Felis catus)"
  }]
}

```
