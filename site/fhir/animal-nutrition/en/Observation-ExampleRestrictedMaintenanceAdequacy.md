# Adult-maintenance adequacy under a 25% caloric restriction, canine, vs NRC - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Example Observation: Adult-maintenance adequacy under a 25% caloric restriction, canine, vs NRC

Profile: [Animal Nutrient Adequacy Assessment](StructureDefinition-animal-nutrient-adequacy.md)

**Applied Requirement Standard**: NRC 2006

**Life Stage**: Adult maintenance

**Caloric Restriction**: 25 % (Details: UCUM code% = '%')

**status**: Final

**code**: Diet nutrient adequacy assessment

**subject**: [Anonymous Patient Female, DoB Unknown](Patient-ExampleCaninePatient.md)

**effective**: 2026-10-18

**performer**: [Example Veterinarian](Practitioner-ExampleVeterinarian.md)

**interpretation**: Overall: not complete and balanced

**device**: [Device](Device-ExampleAdequacyChecker.md)

> **component****Maximum Provenance**: derived-provisional**Nutrient Decile (Common-Basis Expression)**: below-min-75-100**code**: Calcium**value**: 1.2 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal')**interpretation**: Below the minimum

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 1.3333333 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal') | 5.3333333 g/Mcal (Details: UCUM codeg/Mcal = 'g/Mcal') |




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleRestrictedMaintenanceAdequacy",
  "meta" : {
    "profile" : ["https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/animal-nutrient-adequacy"]
  },
  "extension" : [{
    "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/requirement-standard",
        "code" : "NRC-2006"
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
  },
  {
    "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/caloric-restriction",
    "valueQuantity" : {
      "value" : 25,
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
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
  "effectiveDateTime" : "2026-10-18",
  "performer" : [{
    "reference" : "Practitioner/ExampleVeterinarian"
  }],
  "interpretation" : [{
    "coding" : [{
      "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/adequacy-interpretation",
      "code" : "not-complete-balanced"
    }]
  }],
  "device" : {
    "reference" : "Device/ExampleAdequacyChecker"
  },
  "component" : [{
    "extension" : [{
      "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/maximum-provenance",
      "valueCode" : "derived-provisional"
    },
    {
      "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-decile",
      "valueCode" : "below-min-75-100"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/animal-nutrient",
        "code" : "calcium"
      }]
    },
    "valueQuantity" : {
      "value" : 1.2,
      "system" : "http://unitsofmeasure.org",
      "code" : "g/Mcal"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/adequacy-interpretation",
        "code" : "deficient"
      }]
    }],
    "referenceRange" : [{
      "low" : {
        "value" : 1.3333333,
        "system" : "http://unitsofmeasure.org",
        "code" : "g/Mcal"
      },
      "high" : {
        "value" : 5.3333333,
        "system" : "http://unitsofmeasure.org",
        "code" : "g/Mcal"
      }
    }]
  }]
}

```
