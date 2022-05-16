#### ADHA Core Practitioner
The purpose of this profile is to define a core representation a practitioner for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. The concept of a practitioner in this implementation guide is always within the context of a practitioner role - as the practitioner that performs the role(s). 

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Practitioner](http://hl7.org/fhir/R4/practitioner.html) that are supported. 

A [Practitioner](http://hl7.org/fhir/R4/practitioner.html) resource is used within the context of a referencing [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) resource. 

This profile is designed to set a core Practitioner for:
* Querying practitioners referenced in PractitionerRole resources
* Recording or updating a practitioner referenced by a PractitionerRole resource

#### Profile specific guidance
None.

#### Boundaries and relationships
This profile is referenced by
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Advance Care Directive Custodian Record Composition](StructureDefinition-dh-composition-acdcr-1.html), 
[ADHA Authoring Care Agency Employee](StructureDefinition-dh-practitionerrole-author-cae-1.html), 
[ADHA Authoring PractitionerRole](StructureDefinition-dh-practitionerrole-author-1.html), and 
[ADHA Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html).