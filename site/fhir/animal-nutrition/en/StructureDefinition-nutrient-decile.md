# Nutrient Decile (Common-Basis Expression) - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Extension: Nutrient Decile (Common-Basis Expression) 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.md)
* Examples for this Extension: [Observation/ExampleAdultMaintenanceAdequacy](Observation-ExampleAdultMaintenanceAdequacy.md) and [Observation/ExampleRestrictedMaintenanceAdequacy](Observation-ExampleRestrictedMaintenanceAdequacy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/openanimalnutrition.fhir.animalnutrition|current/StructureDefinition/StructureDefinition-nutrient-decile.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-nutrient-decile.csv), [Excel](../StructureDefinition-nutrient-decile.xlsx), [Schematron](../StructureDefinition-nutrient-decile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nutrient-decile",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-decile",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.42.4"
  }],
  "version" : "0.1.0",
  "name" : "NutrientDecile",
  "title" : "Nutrient Decile (Common-Basis Expression)",
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
  "description" : "The diet's level for this nutrient on the common mathematical basis used to compare across standards, expressed as a band of the Dynamic Decile System: four bands below the minimum and ten deciles from the minimum to the range high. Where an entry gets a band, a value above the range high is in range-d10 (Highest) unless it is below the minimum. The decile basis and band computation are stated on the [Decile Basis and Band Computation](band-computation.html) page, proposed and pending ratification by the governance body.",
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
    "expression" : "Observation.component"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Nutrient Decile (Common-Basis Expression)",
      "definition" : "The diet's level for this nutrient on the common mathematical basis used to compare across standards, expressed as a band of the Dynamic Decile System: four bands below the minimum and ten deciles from the minimum to the range high. Where an entry gets a band, a value above the range high is in range-d10 (Highest) unless it is below the minimum. The decile basis and band computation are stated on the [Decile Basis and Band Computation](band-computation.html) page, proposed and pending ratification by the governance body."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-decile"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/nutrient-decile-vs"
      }
    }]
  }
}

```
