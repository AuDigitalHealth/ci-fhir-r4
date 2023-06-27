This profile identifies the additional constraints, extensions, and value sets that build on and extend [List](http://hl7.org/fhir/R4/list.html) that are supported. 

This profile is designed to set a List standard for:
* Query for a list of a patient's medicine item use at a point in time
* Record or update a list of a patient's medicine item use

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
None.


### Boundaries and relationships
This profile is referenced by 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), and 
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html).

These profiles build on this profile ([ADHA Core List](StructureDefinition-dh-list-core-1.html)) to define specific document compositions:
* [ADHA Practitioner Medicine Review List](StructureDefinition-dh-list-medication-use-pmr-1.html) 
