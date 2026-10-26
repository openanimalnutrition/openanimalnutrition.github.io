# Caloric Restriction - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Extension: Caloric Restriction 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.md)
* Examples for this Extension: [Observation/ExampleRestrictedMaintenanceAdequacy](Observation-ExampleRestrictedMaintenanceAdequacy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/openanimalnutrition.fhir.animalnutrition|current/StructureDefinition/StructureDefinition-caloric-restriction.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-caloric-restriction.csv), [Excel](../StructureDefinition-caloric-restriction.xlsx), [Schematron](../StructureDefinition-caloric-restriction.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "caloric-restriction",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/caloric-restriction",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.42.6"
  }],
  "version" : "0.1.0",
  "name" : "CaloricRestriction",
  "title" : "Caloric Restriction",
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
  "description" : "The intentional caloric restriction that the check was run under, as a\npercentage of the animal's energy need, in UCUM `%`: 25 means that the animal\nis fed 25% less energy than it needs. Most of the applied standard's per-Mcal\nminimums are then multiplied by 1 ÷ (1 − restriction ÷ 100) (under an AAFCO\nselection, together with any AAFCO dry matter factor), so a nutrient can be\n`deficient` although it meets the minimum that applies with no restriction.\nThe source template accepts 0 (none) or a number from 1 to 55. Present only\nfor a restriction above 0, and absent when none was entered (blank or 0 in the\ntemplate). An intake\nentered in place of the calculated energy requirement is not a restriction.\nNeither it nor the template's figure for how far it falls below that\nrequirement (cell N4 on the template's Standards tab) is recorded here. Which\nminimums are raised, and the rule that makes a value below them `deficient`,\nare stated, proposed and pending ratification, on the\n[Decile Basis and Band Computation](band-computation.html) page.",
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
      "short" : "Caloric Restriction",
      "definition" : "The intentional caloric restriction that the check was run under, as a\npercentage of the animal's energy need, in UCUM `%`: 25 means that the animal\nis fed 25% less energy than it needs. Most of the applied standard's per-Mcal\nminimums are then multiplied by 1 ÷ (1 − restriction ÷ 100) (under an AAFCO\nselection, together with any AAFCO dry matter factor), so a nutrient can be\n`deficient` although it meets the minimum that applies with no restriction.\nThe source template accepts 0 (none) or a number from 1 to 55. Present only\nfor a restriction above 0, and absent when none was entered (blank or 0 in the\ntemplate). An intake\nentered in place of the calculated energy requirement is not a restriction.\nNeither it nor the template's figure for how far it falls below that\nrequirement (cell N4 on the template's Standards tab) is recorded here. Which\nminimums are raised, and the rule that makes a value below them `deficient`,\nare stated, proposed and pending ratification, on the\n[Decile Basis and Band Computation](band-computation.html) page."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/caloric-restriction"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.value[x].value",
      "path" : "Extension.value[x].value",
      "min" : 1
    },
    {
      "id" : "Extension.value[x].comparator",
      "path" : "Extension.value[x].comparator",
      "max" : "0"
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Extension.value[x].code",
      "path" : "Extension.value[x].code",
      "min" : 1,
      "patternCode" : "%"
    }]
  }
}

```
