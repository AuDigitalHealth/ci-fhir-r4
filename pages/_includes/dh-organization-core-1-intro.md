#### Australian Digital Health Agency Core Organization
The purpose of this profile is to define a core representation of an organisation for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Organization](http://hl7.org/fhir/R4/organization.html) that are supported. 

This profile is designed to set a core Organization for:
* Insert ADHA API Endpoint
* Insert ADHA API Endpoint
* 
#### Guidance
The following guidance applies:
* an Australian address conforms to the [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) profile
* if more than one identifier is sent, only one of each type is sent

When sending to the My Health Record system: 
* an HPI-O is sent
* name is sent

#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Composition](StructureDefinition-dh-composition-core-1.html), 
[ADHA Document Composition](StructureDefinition-dh-composition-document-1.html), 
[ADHA Participant Device](StructureDefinition-dh-device-participant-1.html), 
[ADHA System Device](StructureDefinition-dh-device-system-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), 
[ADHA Core Location](StructureDefinition-dh-location-core-1.html), 
[ADHA Core HealthcareService](StructureDefinition-dh-healthcareservice-core-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-1.html),
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-1.html),
[ADHA Core Patient](StructureDefinition-dh-patient-core-1.html), 
[ADHA My Health Record Patient](StructureDefinition-dh-patient-mhr-1.html),
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html),
[ADHA Core Organization](StructureDefinition-dh-organization-core-1.html), and
[ADHA Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html). 