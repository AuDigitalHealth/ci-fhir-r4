The purpose of this profile is to define a representation of a related person in the role of an author or observer for exchange usage scenarios to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.
In the context of an exchange of health information a related person is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) that are supported. 

A [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) resource is used within the context of a referencing resource. 

This profile is designed to set a RelatedPerson standard for:
* Recording or updating am authoring related person referenced by another resource
* Reading authoring related persons referenced by another resource
 

#### Profile specific guidance
- See the [Representing communication preferences](guidance.html#representing-communication-preferences) section for guidance


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html), 
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), and 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).
