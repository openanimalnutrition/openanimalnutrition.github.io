# Maximum Provenance Value Set - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## ValueSet: Maximum Provenance Value Set 

 **References** 

* [Maximum Provenance](StructureDefinition-maximum-provenance.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "maximum-provenance-vs",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/ValueSet/maximum-provenance-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.48.5"
  }],
  "version" : "0.1.0",
  "name" : "MaximumProvenanceVS",
  "title" : "Maximum Provenance Value Set",
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
  "description" : "All codes in the Maximum Provenance Codes code system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/maximum-provenance-code"
    }]
  }
}

```
