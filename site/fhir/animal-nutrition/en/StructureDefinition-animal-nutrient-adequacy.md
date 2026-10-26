# Animal Nutrient Adequacy Assessment - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Resource Profile: Animal Nutrient Adequacy Assessment 

**Usages:**

* Examples for this Profile: [Observation/ExampleAdultMaintenanceAdequacy](Observation-ExampleAdultMaintenanceAdequacy.md) and [Observation/ExampleRestrictedMaintenanceAdequacy](Observation-ExampleRestrictedMaintenanceAdequacy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/openanimalnutrition.fhir.animalnutrition|current/StructureDefinition/StructureDefinition-animal-nutrient-adequacy.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-animal-nutrient-adequacy.csv), [Excel](../StructureDefinition-animal-nutrient-adequacy.xlsx), [Schematron](../StructureDefinition-animal-nutrient-adequacy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "animal-nutrient-adequacy",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/animal-nutrient-adequacy",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.42.1"
  }],
  "version" : "0.1.0",
  "name" : "AnimalNutrientAdequacy",
  "title" : "Animal Nutrient Adequacy Assessment",
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
  "description" : "The result of the agnostic, mathematical check of a diet's resolved nutrient\nprofile against a selected requirement standard (NRC / AAFCO / FEDIAF) for a\ngiven species and life stage.\n\nEach assessed nutrient is a component carrying the diet's level, the applicable\nmin/max requirement range, the common-basis decile expression, and a\nper-nutrient interpretation. The decile expression is computed as stated,\nproposed and pending ratification, on the\n[Decile Basis and Band Computation](band-computation.html) page. The top-level\ninterpretation is the overall complete-and-balanced verdict.\n\nRatio nutrients such as Ca:P are components like any other nutrient, with a\nunitless quantity (UCUM `1`). Non-linear ratio nutrients are excluded from the\ncomponent model by design.\n\nA component's interpretation is `excess` only when the value is above an\nauthoritative maximum, one set by a standards body for the animal and the use\nit is applied to (maxProvenance\n`authoritative`), and not below a minimum set by the applied standard,\nincluding one raised for a caloric restriction or by the AAFCO dry matter\nfactor (below). Above a conditional, template-set or derived-provisional\nmaximum, and not below the minimum, the interpretation stays `adequate`. The\nband is then `range-d10` (\"Highest (90% of Range or\nGreater)\"), which alone does not show that the maximum was exceeded:\nreferenceRange.high holds the maximum, and maxProvenance says what kind it is.\n\nWhere a caloric restriction, or the AAFCO dry matter factor for a food below\n4 kcal/g of dry matter, raises a minimum set by the applied standard,\nreferenceRange.low holds the raised minimum, and the band is computed from it.\nA value below it is `deficient`, even if it meets the minimum that applies\nwith no adjustment. A verdict checked under a caloric restriction above 0 records the\npercentage in `caloricRestriction`. This rule, the condition on `excess` above,\nand which minimums they cover are stated, proposed and pending ratification, on\nthe [Decile Basis and Band Computation](band-computation.html) page.\n\n`performer` is optional. When a veterinarian, nutritionist or clinic ran or\nreviewed the check, name them (Practitioner, PractitionerRole or Organization).\nThe organization that only operates the checking software is not the performer\nunless it also reviewed this verdict. Software cannot be the performer of an\nObservation in FHIR R5 (`performer` does not accept a Device). When software\ncomputed the verdict, record it in `device`: a Device whose `name` and\n`version` give the software's name and version, so a reader can tell which\nchecker, and which version of it, produced the verdict.\n\nSCOPE: this profile models the VERDICT. Ingredient selection, fortification,\nand rounding (i.e. how a passing diet is produced) are out of scope by design.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Observation.extension:appliedStandard",
      "path" : "Observation.extension",
      "sliceName" : "appliedStandard",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.extension:lifeStage",
      "path" : "Observation.extension",
      "sliceName" : "lifeStage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-life-stage"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.extension:caloricRestriction",
      "path" : "Observation.extension",
      "sliceName" : "caloricRestriction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/caloric-restriction"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/oan-assessment-code",
          "code" : "diet-adequacy"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Veterinarian, nutritionist or clinic who ran or reviewed the check (optional)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/adequacy-interpretation-vs"
      }
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "Software that computed the verdict, with its name and version (optional)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "One per assessed nutrient",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.extension",
      "path" : "Observation.component.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component.extension:maxProvenance",
      "path" : "Observation.component.extension",
      "sliceName" : "maxProvenance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/maximum-provenance"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.extension:decile",
      "path" : "Observation.component.extension",
      "sliceName" : "decile",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-decile"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/animal-nutrient-vs"
      }
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.interpretation",
      "path" : "Observation.component.interpretation",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/adequacy-interpretation-vs"
      }
    },
    {
      "id" : "Observation.component.referenceRange",
      "path" : "Observation.component.referenceRange",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.referenceRange.low",
      "path" : "Observation.component.referenceRange.low",
      "short" : "Requirement minimum"
    },
    {
      "id" : "Observation.component.referenceRange.high",
      "path" : "Observation.component.referenceRange.high",
      "short" : "Maximum or ceiling (see maxProvenance)"
    }]
  }
}

```
