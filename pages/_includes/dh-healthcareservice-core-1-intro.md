The purpose of this profile is to define a core representation of a healthcare service for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.
In the context of an exchange of health information an healthcare service is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html) that are supported. 

A [HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html) resource is used within the context of a referencing resource. 

This profile is designed to set a core HealthcareService for:
* Recording or updating a healthcare service referenced by another resource
* Reading healthcare services referenced by another resource


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Authoring PractitionerRole](StructureDefinition-dh-practitionerrole-author-1.html),
[Australian Digital Health Agency Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html), 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html), and
[ADHA MBS Service Claim Item](StructureDefinition-dh-servicerequest-mbs-claim-1.html).