### Base PractitionerRole
The purpose of this profile is to provide a base model for the concept of a practitioner role to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia. The base concept supported is a practitioner, in a role, on behalf of an organisation.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul> 
    <li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
    <li>if more than one identifier is sent, only one of each type is sent</li>
</ul>

When sending as a patient's general practitioner it is expected that practitioner name and code are sent.

#### Boundaries and relationships
Other related practitioner role attributes, considered to be agnostic to the particular healthcare event the practitioner is participating in (in this practitioner role) are better represented in other resources rather than directly part of the PractitionerRole. These attributes include:
* the locations at which this practitioner performs the services – the healthcare event specific location will be represented using a [Location](https://www.hl7.org/fhir/location.html) that is referenced from a clinical statement such as a [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
* the healthcare services this practitioner provides in this role (some or none of which may have been performed in this event) – the healthcare services provided in the event will be represented using a [HealthcareService](https://www.hl7.org/fhir/healthcareservice.html) that is referenced from a clinical statement

This profile is referenced by 
[My Health Record Patient](StructureDefinition-patient-mhr-1.html),
[Patient with Mandatory Identifier](StructureDefinition-patient-ident-1.html).