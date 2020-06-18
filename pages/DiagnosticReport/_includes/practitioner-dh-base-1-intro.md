#### Base Practitioner
The purpose of this profile is to provide a base model for the concept of a practitioner; defining fundamental concepts that form the representation of a practitioner to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* if more than one identifier is sent, only one of each type is sent
* if sent, name is sent with at least family name
* telecom is sent
* an Australian address conforms to [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html)

#### Boundaries and relationships
The concept of a practitioner in this implementation guide is expected to be within a practitioner role as a practitioner that performs the role(s). 
A practitioner is expected to be identified by an associated practitioner role.


This profile is not intended for facilitating administration of the practitioner canonical record. 


This profile is referenced by [Base PractitionerRole](StructureDefinition-practitionerrole-dh-base-1.html), and [PractitionerRole with Mandatory Identifier](StructureDefinition-practitionerrole-ident-1.html).

