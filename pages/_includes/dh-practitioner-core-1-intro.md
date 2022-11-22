The purpose of this profile is to define a core representation of a practitioner for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. The concept of a practitioner in this implementation guide is always within the context of a practitioner role - as the practitioner that performs the role(s). 
In the context of an exchange of health information a practitioner is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Practitioner](http://hl7.org/fhir/R4/practitioner.html) that are supported. 

A [Practitioner](http://hl7.org/fhir/R4/practitioner.html) resource is used within the context of a referencing resource (most commonly a PractitionerRole resource). 

This profile is designed to set a core Practitioner standard for:
* Querying practitioners referenced in PractitionerRole or other resources
* Recording or updating a practitioner referenced by a PractitionerRole or other resource


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by
[ADHA Authoring PractitionerRole](StructureDefinition-dh-practitionerrole-author-1.html) and 
[ADHA Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html).