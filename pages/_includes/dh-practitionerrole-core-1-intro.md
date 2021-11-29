### Australian Digital Health Agency Core PractitionerRole
The purpose of this profile is to provide a core representation of a practitioner in a role, on behalf of an organisation, for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) that are supported. 

#### Guidance
The following guidance applies:
<ul> 
    <li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
    <li>if more than one identifier is sent, only one of each type is sent</li>
</ul>

When sending as a patient's general practitioner, practitioner name and code are sent.

When sending to the My Health Record system, practitioner name, organisation name, and code are sent.

#### Boundaries and relationships
Other related practitioner role attributes, considered to be agnostic to the particular healthcare event the practitioner is participating in (in this practitioner role) are better represented in other resources rather than directly part of the PractitionerRole. These attributes include:
* the locations at which this practitioner performs the services – the healthcare event specific location will be represented using a [Location](https://www.hl7.org/fhir/location.html) that is referenced from a clinical statement such as a [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
* the healthcare services this practitioner provides in this role (some or none of which may have been performed in this event) – the healthcare services provided in the event will be represented using a [HealthcareService](https://www.hl7.org/fhir/healthcareservice.html) that is referenced from a clinical statement

This profile is referenced by 
[Australian Digital Health Agency Core Patient](StructureDefinition-dh-patient-core-1.html), 
[Australian Digital Health Agency My Health Record Patient](StructureDefinition-dh-patient-mhr-1.html),
[TBD](StructureDefinition-TBD-1.html), 
[TBD](StructureDefinition-TBD-1.html) and
[TBD](StructureDefinition-TBD-1.html).