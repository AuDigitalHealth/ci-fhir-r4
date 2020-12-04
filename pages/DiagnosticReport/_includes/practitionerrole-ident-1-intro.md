### PractitionerRole with Mandatory Identifier
The purpose of this profile is to define a representation of a practitioner role where unambiguous identification of a practitioner role is mandatory in the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
<li>if more than one identifier is sent, only one of each type is sent</li>
</ul>

When sending to the My Health Record system it is expected that one identifier is an HPI-I.

#### Boundaries and relationships
Other related practitioner role attributes, considered to be agnostic to the particular healthcare event the practitioner is participating in (in this practitioner role) are better represented in other resources rather than directly part of the PractitionerRole. These attributes include:
* the locations at which this practitioner performs the services – the healthcare event specific location will be represented using a [Location](https://www.hl7.org/fhir/location.html) that is referenced from a clinical statement such as a [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
* the healthcare services this practitioner provides in this role (some or none of which may have been performed in this event) – the healthcare services provided in the event will be represented using a [HealthcareService](https://www.hl7.org/fhir/healthcareservice.html) that is referenced from a clinical statement

This profile is referenced by 
[Atomic Other Diagnostic Observation](StructureDefinition-observation-otherdiag-atomic-1.html),
[Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html), 
[My Health Record Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-mhr-1.html),
[Order Details for Other Diagnostic Report](StructureDefinition-servicerequest-otherdiag-report-1.html),
[Other Diagnostic Report](StructureDefinition-composition-otherdiagreport-1.html)and
[Simple Other Diagnostic Observation](StructureDefinition-observation-otherdiag-simple-1.html).