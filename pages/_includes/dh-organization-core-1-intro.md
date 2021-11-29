#### Australian Digital Health Agency Core Organization
The purpose of this profile is to define a core representation of an organisation for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile is designed to set a core Organization for:
* Insert ADHA API Endpoint
* Insert ADHA API Endpoint
* 
#### Implementation guidance
The following guidance applies:
* an Australian address conforms to the [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) profile
* if more than one identifier is sent, only one of each type is sent

When sending to the My Health Record system: 
* an HPI-O is sent
* name is sent

#### Boundaries and relationships
This profile is referenced by 
[Australian Digital Health Agency Core Location](StructureDefinition-dh-location-core-1.html), 
[Australian Digital Health Agency Core HealthcareService](StructureDefinition-dh-healthcareservice-core-1.html), 
[Australian Digital Health Agency Core Patient](StructureDefinition-dh-patient-core-1.html), 
[Australian Digital Health Agency My Health Record Patient](StructureDefinition-dh-patient-mhr-1.html),
[Australian Digital Health Agency Core Organization](StructureDefinition-dh-organization-core-1.html),
[Australian Digital Health Agency Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html), 
[TBD](StructureDefinition-TBD-1.html) and
[TBD](StructureDefinition-TBD-1.html).