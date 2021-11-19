#### Identified Practitioner
The purpose of this profile is to define a core representation a practitioner for the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile is designed to set a core Practitioner for:
* Insert ADHA API Endpoint
* Insert ADHA API Endpoint
* 
#### Implementation guidance
The following guidance applies:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
<li>if more than one identifier is sent, only one of each type is sent</li>
<li>if sent, name is sent with at least family name</li>
<li>telecom is sent</li>
<li>an Australian address conforms to <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html">AU Base Address</a></li>
</ul>

#### Boundaries and relationships
The concept of a practitioner in this implementation guide is always within the context of a practitioner role - as the practitioner that performs the role(s). 

This profile is referenced by 
[Australian Digital Health Agency Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html)..