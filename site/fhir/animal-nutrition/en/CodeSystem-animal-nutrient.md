# Animal Nutrients (STUB) - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## CodeSystem: Animal Nutrients (STUB) 

This Code system is referenced in the definition of the following value sets:

* [Animal Nutrients Value Set](ValueSet-animal-nutrient-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "animal-nutrient",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/animal-nutrient",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.16.2"
  }],
  "version" : "0.1.0",
  "name" : "AnimalNutrientCS",
  "title" : "Animal Nutrients (STUB)",
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
  "description" : "STUB. Populate from the canonical nutrient list; map to SNOMED-vet / LOINC where possible. Ratio nutrients (e.g. Ca:P) need explicit handling, and non-linear ratios are excluded from the component model by design (see the [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.html) profile). Which ratios count as non-linear is an open point on the [Decile Basis and Band Computation](band-computation.html) page.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "protein",
    "display" : "Crude protein"
  },
  {
    "code" : "calcium",
    "display" : "Calcium"
  },
  {
    "code" : "phosphorus",
    "display" : "Phosphorus"
  },
  {
    "code" : "potassium",
    "display" : "Potassium"
  },
  {
    "code" : "ca-p-ratio",
    "display" : "Calcium:Phosphorus ratio"
  },
  {
    "code" : "vitamin-d",
    "display" : "Vitamin D"
  }]
}

```
