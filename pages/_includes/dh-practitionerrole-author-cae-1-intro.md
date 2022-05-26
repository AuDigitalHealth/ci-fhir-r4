#### ADHA Authoring Care Agency Employee
The purpose of this profile is to define a representation of a care agency employee (practitioner) acting as an author or observer, on behalf of an organisation, for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) that are supported. 

A [PractitionerRole](http://hl7.org/fhir/R4/organization.html) resource is used within the context of a referencing resource. In the context of an exchange of health information a practitioner role is part of the context established for a set of healthcare-related information.

This profile is designed to set a PractitionerRole standard for:
* Recording or updating an authoring care agency employee referenced by another resource
* Reading an authoring care agency employee referenced by another resource

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Personal Health Notes Composition](StructureDefinition-dh-composition-phn-1.html), 
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html), and 
[ADHA Personal Observations Composition](StructureDefinition-dh-composition-po-1.html). 
