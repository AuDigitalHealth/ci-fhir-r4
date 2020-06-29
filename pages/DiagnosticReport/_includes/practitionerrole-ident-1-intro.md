### PractitionerRole with Mandatory Identifier
The purpose of this profile is to define a representation of a practitioner role where unambiguous identification of a practitioner role is mandatory in the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

The context for this profile is largely authoring of diagnostic content including observations, reports, and orders.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>identifier - if there isn’t a local identifier namespace available then an identifier can be sent with a HPI-O scoped or ABN-scoped identifier namespace (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
<li>code will be a value equivalent to the author’s professional role, e.g. 309352002 |Neuroendocrinologist|, 40204001 |Haematologist|, or 78729002 |Diagnostic radiologist|</li>
<li>practitioner will be the performing diagnostic service provider (e.g. specialist, radiologist, pathologist) and will be sent as a reference to a Practitioner resource</li>
<li>organization will be the employing organisation and will be sent as a reference to an Organization resource</li>
</ul>
When sending to the My Health Record system it is expected that one identifier is an HPI-I.

#### Boundaries and relationships
Other related practitioner role attributes, considered to be agnostic to the particular healthcare event the practitioner is participating in (in this practitioner role) are better represented in other resources rather than directly part of the PractitionerRole. These attributes include:

* the locations at which this practitioner performs the services – the healthcare event specific location will be represented using a [Location](https://www.hl7.org/fhir/location.html) that is referenced from a clinical statement such as a [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
* the healthcare services this practitioner provides in this role (some or none of which may have been performed in this event) – the healthcare services provided in the event will be represented using a [HealthcareService](https://www.hl7.org/fhir/healthcareservice.html) that is referenced from a clinical statement

This profile is referenced by [Pathology Report](StructureDefinition-composition-pathreport-1.html), [My Health Record Pathology Report](StructureDefinition-diagnosticreport-path-mhr-1.html), [Atomic Pathology Report](StructureDefinition-diagnosticreport-path-atomic-1.html), [Order Details for Pathology Report](StructureDefinition-servicerequest-path-report-1.html), [Atomic Pathology Observation](StructureDefinition-observation-path-atomic-1.html), and [Collected Specimen](StructureDefinition-specimen-collect-1.html).