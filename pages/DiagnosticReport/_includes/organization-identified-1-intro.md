#### Identified Organization
The purpose of this profile is to define a representation of an organisation where identifying information is known. This profile is intended to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* an Australian address conforms to the [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) profile
* if more than one identifier is sent, only one of each type is sent

When sending to the My Health Record system it is expected that: 
* an HPI-O is sent
* name is sent

#### Boundaries and relationships
This profile is referenced by [Identified Practitioner](StructureDefinition-practitioner-identified-1.html), 
[My Health Record Patient](StructureDefinition-patient-mhr-1.html),
[Organization with Mandatory Identifier](StructureDefinition-organization-ident-1.html),
[Order Details for Diagnostic Report](StructureDefinition-servicerequest-diag-report-1.html), 
[Patient with Mandatory Identifier](StructureDefinition-patient-ident-1.html) and
[PractitionerRole with Mandatory Identifier](StructureDefinition-practitionerrole-ident-1.html).