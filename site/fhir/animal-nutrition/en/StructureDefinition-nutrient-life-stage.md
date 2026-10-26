# Life Stage - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Extension: Life Stage 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.md)
* Examples for this Extension: [Observation/ExampleAdultMaintenanceAdequacy](Observation-ExampleAdultMaintenanceAdequacy.md) and [Observation/ExampleRestrictedMaintenanceAdequacy](Observation-ExampleRestrictedMaintenanceAdequacy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/openanimalnutrition.fhir.animalnutrition|current/StructureDefinition/StructureDefinition-nutrient-life-stage.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-nutrient-life-stage.csv), [Excel](../StructureDefinition-nutrient-life-stage.xlsx), [Schematron](../StructureDefinition-nutrient-life-stage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nutrient-life-stage",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-life-stage",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.42.5"
  }],
  "version" : "0.1.0",
  "name" : "NutrientLifeStage",
  "title" : "Life Stage",
  "status" : "draft",
  "date" : "2026-10-26T20:14:00+00:00",
  "publisher" : "DVM Consulting, Inc. (provisional steward)",
  "contact" : [{
    "name" : "DVM Consulting, Inc. (provisional steward)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://openanimalnutrition.org"
    }]
  }],
  "description" : "The life stage whose requirements were applied (e.g. growth, adult maintenance). A variable selection.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Observation"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Life Stage",
      "definition" : "The life stage whose requirements were applied (e.g. growth, adult maintenance). A variable selection."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-life-stage"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/life-stage-vs"
      }
    }]
  }
}

```
