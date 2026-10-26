# Nutrient Decile Bands - Open Animal Nutrition — Adequacy Interoperability Guide v0.1.0

## CodeSystem: Nutrient Decile Bands 

This Code system is referenced in the definition of the following value sets:

* [Nutrient Decile Bands Value Set](ValueSet-nutrient-decile-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "nutrient-decile",
  "url" : "https://openanimalnutrition.org/fhir/animal-nutrition/CodeSystem/nutrient-decile",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.4.642.40.1004.16.6"
  }],
  "version" : "0.1.0",
  "name" : "NutrientDecileCS",
  "title" : "Nutrient Decile Bands",
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
  "description" : "The 14 bands of the Dynamic Decile System: four bands below the requirement minimum, as a share of the minimum, and ten deciles from the minimum to the range high. Where an entry gets a band, a value above the range high is in range-d10 unless it is below the minimum. The computation is stated, proposed and pending ratification, on the [Decile Basis and Band Computation](band-computation.html) page.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [{
    "code" : "below-min-lt25",
    "display" : "Very Severely Restricted (<25% of Min)"
  },
  {
    "code" : "below-min-25-50",
    "display" : "Severely Restricted (25 to <50% of Min)"
  },
  {
    "code" : "below-min-50-75",
    "display" : "Moderately Restricted (50 to <75% of Min)"
  },
  {
    "code" : "below-min-75-100",
    "display" : "Slightly Restricted (75 to <100% of Min)"
  },
  {
    "code" : "range-d1",
    "display" : "Lowest/Just Above Min (Min to <10% of Range)"
  },
  {
    "code" : "range-d2",
    "display" : "Lower (10 to <20% of Range)"
  },
  {
    "code" : "range-d3",
    "display" : "Low (20 to <30% of Range)"
  },
  {
    "code" : "range-d4",
    "display" : "Low Moderate (30 to <40% of Range)"
  },
  {
    "code" : "range-d5",
    "display" : "Mid Moderate (40 to <50% of Range)"
  },
  {
    "code" : "range-d6",
    "display" : "High Moderate (50 to <60% of Range)"
  },
  {
    "code" : "range-d7",
    "display" : "High (60 to <70% of Range)"
  },
  {
    "code" : "range-d8",
    "display" : "Higher (70 to <80% of Range)"
  },
  {
    "code" : "range-d9",
    "display" : "Near Highest (80 to <90% of Range)"
  },
  {
    "code" : "range-d10",
    "display" : "Highest (90% of Range or Greater)"
  }]
}

```
