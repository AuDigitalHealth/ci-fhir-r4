#### Base Practitioner
The purpose of this profile is to provide a base model for the concept of a practitioner; defining fundamental concepts that form a conforming representation of a practitioner to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* an Australian address conforms to [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html)
* a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)
* if more than one identifier is sent, only one of each type is sent

When sending to the My Health Record system it is expected that:
* an HPI-I is sent

#### Boundaries and relationships
This profile is referenced by [Base PractitionerRole](StructureDefinition-practitionerrole-dh-base-1.html), and [PractitionerRole with Mandatory Identifier](StructureDefinition-practitionerrole-ident-1.html).  