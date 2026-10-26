# Maximum Provenance - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Extension: Maximum Provenance 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.md)
* Examples for this Extension: [Observation/ExampleAdultMaintenanceAdequacy](Observation-ExampleAdultMaintenanceAdequacy.md) and [Observation/ExampleRestrictedMaintenanceAdequacy](Observation-ExampleRestrictedMaintenanceAdequacy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/openanimalnutrition.fhir.animalnutrition|current/StructureDefinition/StructureDefinition-maximum-provenance.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-maximum-provenance.csv), [Excel](../StructureDefinition-maximum-provenance.xlsx), [Schematron](../StructureDefinition-maximum-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "maximum-provenance",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/maximum-provenance",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.42.3"
  }],
  "version" : "0.1.0",
  "name" : "MaximumProvenance",
  "title" : "Maximum Provenance",
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
  "description" : "The kind of maximum a nutrient's range high is: AUTHORITATIVE (set by a standards body for the animal and the use it is applied\nto), CONDITIONAL (a standard's figure with a condition the check\ndoes not verify), TEMPLATE-SET (set or computed by the source template) or\nDERIVED-PROVISIONAL (computed by a disclosed rule from the minimum). Only a\nvalue above an authoritative maximum is `excess`. How the source template's\nmaximum types map to these codes is stated, proposed and pending ratification,\non the [Decile Basis and Band Computation](band-computation.html) page.\n\nDerived ceilings prioritize consistency and determinism, NOT toxicological\ncalibration, and are revisable by the governance body. This flag exists so a\nconsumer can see at a glance which ceilings are authoritative and which are\nnot.",
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
      "short" : "Maximum Provenance",
      "definition" : "The kind of maximum a nutrient's range high is: AUTHORITATIVE (set by a standards body for the animal and the use it is applied\nto), CONDITIONAL (a standard's figure with a condition the check\ndoes not verify), TEMPLATE-SET (set or computed by the source template) or\nDERIVED-PROVISIONAL (computed by a disclosed rule from the minimum). Only a\nvalue above an authoritative maximum is `excess`. How the source template's\nmaximum types map to these codes is stated, proposed and pending ratification,\non the [Decile Basis and Band Computation](band-computation.html) page.\n\nDerived ceilings prioritize consistency and determinism, NOT toxicological\ncalibration, and are revisable by the governance body. This flag exists so a\nconsumer can see at a glance which ceilings are authoritative and which are\nnot."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/maximum-provenance"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/maximum-provenance-vs"
      }
    }]
  }
}

```
