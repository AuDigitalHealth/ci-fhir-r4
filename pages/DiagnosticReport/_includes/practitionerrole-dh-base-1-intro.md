### Base PractitionerRole
The purpose of this profile is to provide a base model for the concept of a practitioner role; defining fundamental concepts that build a conforming representation of a practitioner role to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile serves to identify and describe the professional roles performed by an individual healthcare provider. It further supports the representation of a practitioner role by associating other entities involved with these roles and the specialities performed by a practitioner. They include the organisation for which the roles are perfomed, physical locations where the roles are performed and the healthcare services the roles support for an organisation. 

#### Usage scenarios
This profile supports scenarios where it is useful to know the practitioner and the professional capacity with which they are acting. It covers a broad range of possible uses. E.g. performer, recorder, asserter, referrer, interpreter, requester, etc.  (if its preferred here are more specific examples: perfomer of medication administration, recorder of clinincal condition, asserter of allergy, interpreter of imaging study, requester of service, etc.)

Within this implementation guide, it supports the representation of a patient's general practitioner. 

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul> 
      <li>a code is included that is equivalent to the practitioner's professional role, e.g. 62247001 |General practitioner|</li>
      <li>a pracitioner name is included as either:
      <ul>
          <li>a reference to a practitioner resource with Practitioner.name, or</li> 
          <li>practitioner.display with the practitioner's name</li>
      </ul>
      </li>
      <li>if a local identifier is sent, and a local namespace is not available, an <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier is used (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
      <li>if more than one identifier is sent, only one of each type is sent</li>
</ul>

When sending to the My Health Record system it is expected that: 
<ul>
    <li>an organisation name is included as either:
    <ul>
        <li>a reference to an Organization resource with Organization.name, or</li> 
        <li>organization.display with the organisation's name</li>
    </ul>
    </li>
</ul>

This profile is referenced by 
[My Health Record Patient](StructureDefinition-patient-mhr-1.html),
[Patient with Mandatory Identifier](StructureDefinition-patient-ident-1.html).