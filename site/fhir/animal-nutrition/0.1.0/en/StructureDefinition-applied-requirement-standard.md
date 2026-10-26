# Applied Requirement Standard - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Extension: Applied Requirement Standard 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.md)
* Examples for this Extension: [Observation/ExampleAdultMaintenanceAdequacy](Observation-ExampleAdultMaintenanceAdequacy.md) and [Observation/ExampleRestrictedMaintenanceAdequacy](Observation-ExampleRestrictedMaintenanceAdequacy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/openanimalnutrition.fhir.animalnutrition|current/StructureDefinition/StructureDefinition-applied-requirement-standard.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-applied-requirement-standard.csv), [Excel](../StructureDefinition-applied-requirement-standard.xlsx), [Schematron](../StructureDefinition-applied-requirement-standard.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "applied-requirement-standard",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.42.2"
  }],
  "version" : "0.1.0",
  "name" : "AppliedRequirementStandard",
  "title" : "Applied Requirement Standard",
  "status" : "draft",
  "date" : "2026-10-26T20:13:21+00:00",
  "publisher" : "DVM Consulting, Inc. (provisional steward)",
  "contact" : [{
    "name" : "DVM Consulting, Inc. (provisional steward)",
    "telecom" : [{
      "system" : "url",
      "value" : "https://openanimalnutrition.org"
    }]
  }],
  "description" : "Which published requirement standard the adequacy check was run against, by its edition's code when the edition is known (for example AAFCO-2026). A variable selection, never hardcoded into the check.",
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
      "short" : "Applied Requirement Standard",
      "definition" : "Which published requirement standard the adequacy check was run against, by its edition's code when the edition is known (for example AAFCO-2026). A variable selection, never hardcoded into the check."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/requirement-standard-vs"
      }
    }]
  }
}

```
