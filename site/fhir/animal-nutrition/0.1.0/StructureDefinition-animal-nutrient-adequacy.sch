<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Observation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:extension[@url = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard']) &gt;= 1">extension with URL = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard']) &lt;= 1">extension with URL = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/applied-requirement-standard': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-life-stage']) &gt;= 1">extension with URL = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-life-stage': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-life-stage']) &lt;= 1">extension with URL = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-life-stage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/caloric-restriction']) &lt;= 1">extension with URL = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/caloric-restriction': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &gt;= 1">interpretation: minimum cardinality of 'interpretation' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &lt;= 1">interpretation: maximum cardinality of 'interpretation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:component</sch:title>
    <sch:rule context="f:Observation/f:component">
      <sch:assert test="count(f:extension[@url = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/maximum-provenance']) &lt;= 1">extension with URL = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/maximum-provenance': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-decile']) &lt;= 1">extension with URL = 'https://openanimalnutrition.org/fhir/animal-nutrition/StructureDefinition/nutrient-decile': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &gt;= 1">interpretation: minimum cardinality of 'interpretation' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &lt;= 1">interpretation: maximum cardinality of 'interpretation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:component/f:referenceRange</sch:title>
    <sch:rule context="f:Observation/f:component/f:referenceRange">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:low) &lt;= 1">low: maximum cardinality of 'low' is 1</sch:assert>
      <sch:assert test="count(f:high) &lt;= 1">high: maximum cardinality of 'high' is 1</sch:assert>
      <sch:assert test="count(f:normalValue) &lt;= 1">normalValue: maximum cardinality of 'normalValue' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:age) &lt;= 1">age: maximum cardinality of 'age' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
