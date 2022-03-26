#### Identified Practitioner
The purpose of this profile is to define a core representation a practitioner for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. The concept of a practitioner in this implementation guide is always within the context of a practitioner role - as the practitioner that performs the role(s). 

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Practitioner](http://hl7.org/fhir/R4/practitioner.html) that are supported. 

A [Practitioner](http://hl7.org/fhir/R4/practitioner.html) resource is used within the context of a referencing [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) resource. 

This profile is designed to set a core Practitioner for:
* Querying practitioners referenced in PractitionerRole resources
* Recording or updating a practitioner referenced by a PractitionerRole resource

#### Guidance
The following guidance applies:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
<li>if more than one identifier is sent, only one of each type is sent</li>
<li>if sent, name is sent with at least family name</li>
<li>an Australian address conforms to <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html">AU Base Address</a></li>
</ul>

#### Boundaries and relationships
This profile is referenced by 
[ADHA Advance Care Directive Custodian Record Document Composition](StructureDefinition-dh-composition-acdcr-1.html), 
[ADHA Record of Claim against MBS](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html), 
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html), and 
[ADHA Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html).