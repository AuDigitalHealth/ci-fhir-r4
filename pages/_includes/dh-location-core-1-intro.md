The purpose of this profile is to define a core representation of a location for the electronic exchange of digital health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.
In the context of an exchange of health information a location is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Location](http://hl7.org/fhir/R4/location.html) that are supported. 

A [Location](http://hl7.org/fhir/R4/location.html) resource is used within the context of a referencing resource. 

This profile is designed to set a core Location standard for:
* Recording or updating a location referenced by another resource
* Reading locations referenced by another resource


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Participant Device](StructureDefinition-dh-device-participant-1.html), 
[ADHA System Device](StructureDefinition-dh-device-system-1.html), 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Core HealthcareService](StructureDefinition-dh-healthcareservice-core-1.html), 
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-1.html),
[ADHA Authoring PractitionerRole](StructureDefinition-dh-practitionerrole-author-1.html), 
[ADHA Authoring Care Agency Employee](StructureDefinition-dh-practitionerrole-author-cae-1.html), and
[ADHA Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html).