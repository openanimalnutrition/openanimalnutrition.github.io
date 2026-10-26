# Example canine patient - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## Example Patient: Example canine patient

Anonymous Patient Female, DoB Unknown

-------

| | |
| :--- | :--- |
| Active: | true |
| Patient Animal: | * species: Dog (Canis lupus familiaris)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExampleCaninePatient",
  "extension" : [{
    "extension" : [{
      "url" : "species",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/animal-species",
          "code" : "canine"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-animal"
  }],
  "active" : true,
  "gender" : "female"
}

```
