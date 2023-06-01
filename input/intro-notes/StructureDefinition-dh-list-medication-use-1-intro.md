The purpose of this profile is to define a representation of list that describes a patient's medicine item use at a point in time. The list may be partial, or complete, and may be a history or scoped to may be taking the medication now or has taken the medication in the past or will be taking the medication in the future. This profile is used to group individual statements of medicine item use in the List resource to construct various types of medication usage lists for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [List](http://hl7.org/fhir/R4/list.html) that are supported. 

This profile is designed to set a List standard for:
* Query for a list of a patient's medicine item use at a point in time
* Record or update a list of a patient's medicine item use

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


### Profile specific guidance
None.


### Boundaries and relationships
This profile is referenced by 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), and 
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html).

These profiles build on this profile ([ADHA Core List](StructureDefinition-dh-list-core-1.html)) to define specific document compositions:
* [ADHA Practitioner Medicine Review List](StructureDefinition-dh-list-medication-use-pmr-1.html) 
