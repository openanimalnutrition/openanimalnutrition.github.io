# Adult-maintenance adequacy, canine, vs AAFCO - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Example Observation: Adult-maintenance adequacy, canine, vs AAFCO

Profile: [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.md)

**Applied Requirement Standard**: AAFCO 2026

**Life Stage**: Adult maintenance

**status**: Final

**code**: Diet nutrient adequacy assessment

**subject**: [Anonymous Patient Female, DoB Unknown](Patient-ExampleCaninePatient.md)

**effective**: 2026-06-21

**performer**: [Example Veterinarian](Practitioner-ExampleVeterinarian.md)

**interpretation**: Overall: complete and balanced

**device**: [Device](Device-ExampleAdequacyChecker.md)

> **component****Maximum Provenance**: authoritative**Nutrient Decile (Common-Basis Expression)**: range-d2**code**: Calcium**value**: 2 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal')**interpretation**: Meets the requirement

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 1.25 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal') | 6.25 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal') |


> **component****Maximum Provenance**: derived-provisional**Nutrient Decile (Common-Basis Expression)**: range-d3**code**: Potassium**value**: 2.5 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal')**interpretation**: Meets the requirement

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 1.5 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal') | 6 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal') |




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleAdultMaintenanceAdequacy",
  "meta" : {
    "profile" : ["https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/animal-nutrient-adequacy"]
  },
  "extension" : [{
    "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/requirement-standard",
        "code" : "AAFCO-2026"
      }]
    }
  },
  {
    "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-life-stage",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/life-stage",
        "code" : "adult-maintenance"
      }]
    }
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/oan-assessment-code",
      "code" : "diet-adequacy"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleCaninePatient"
  },
  "effectiveDateTime" : "2026-06-21",
  "performer" : [{
    "reference" : "Practitioner/ExampleVeterinarian"
  }],
  "interpretation" : [{
    "coding" : [{
      "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/adequacy-interpretation",
      "code" : "complete-balanced"
    }]
  }],
  "device" : {
    "reference" : "Device/ExampleAdequacyChecker"
  },
  "component" : [{
    "extension" : [{
      "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/maximum-provenance",
      "valueCode" : "authoritative"
    },
    {
      "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-decile",
      "valueCode" : "range-d2"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/animal-nutrient",
        "code" : "calcium"
      }]
    },
    "valueQuantity" : {
      "value" : 2,
      "system" : "http://unitsofmeasure.org",
      "code" : "g/Mcal"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/adequacy-interpretation",
        "code" : "adequate"
      }]
    }],
    "referenceRange" : [{
      "low" : {
        "value" : 1.25,
        "system" : "http://unitsofmeasure.org",
        "code" : "g/Mcal"
      },
      "high" : {
        "value" : 6.25,
        "system" : "http://unitsofmeasure.org",
        "code" : "g/Mcal"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/maximum-provenance",
      "valueCode" : "derived-provisional"
    },
    {
      "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-decile",
      "valueCode" : "range-d3"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/animal-nutrient",
        "code" : "potassium"
      }]
    },
    "valueQuantity" : {
      "value" : 2.5,
      "system" : "http://unitsofmeasure.org",
      "code" : "g/Mcal"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/adequacy-interpretation",
        "code" : "adequate"
      }]
    }],
    "referenceRange" : [{
      "low" : {
        "value" : 1.5,
        "system" : "http://unitsofmeasure.org",
        "code" : "g/Mcal"
      },
      "high" : {
        "value" : 6,
        "system" : "http://unitsofmeasure.org",
        "code" : "g/Mcal"
      }
    }]
  }]
}

```
