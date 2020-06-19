### Base PractitionerRole
The purpose of this profile is to provide a base model for the concept of a PractitionerRole; defining fundamental concepts that form a conforming representation of a PractitionerRole to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile supports the representation of a patient's general practitioner. 

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul> 
      <li>code is equivalent to the practitioner's professional role, e.g. 62247001 |General practitioner|</li>
      <li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
</ul>

When sending to the My Health Record system it is expected that: 
<ul>
    <li>an HPI-I is sent</li>
    <li>an organisation name is included as either:
    <ul>
        <li>a reference to an Organization resource with Organization.name, or</li> 
        <li>organization.display with the organisation's name</li>
    </ul>
    </li>
</ul>

#### Boundaries and relationships
This profile is referenced by 
[My Health Record Patient](StructureDefinition-patient-mhr-1.html),
[Patient with Mandatory Identifier](StructureDefinition-patient-ident-1.html).