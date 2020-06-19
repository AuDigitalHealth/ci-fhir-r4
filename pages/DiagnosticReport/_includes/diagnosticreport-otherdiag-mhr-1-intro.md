#### My Health Record Other Diagnostic Report
The purpose of this profile is to define a short form representation providing a rich text representation of the report as issued by the diagnostic service provider with supporting key elements of clinical relevance for the electronic exchange of other diagnostic investigations (such as echo cardiogram or colonoscopy or hearing test) between healthcare providers and the My Health Record system infrastructure in Australia.

A Specialist or Other Diagnostic Report is created by an authoring diagnostic provider in response to an order for a diagnostic investigation and contains a specialist or other healthcare provider’s analysis of one or more diagnostic investigation results. Thus the values of diagnostic report elements that are present in both a FHIR resource and the PDF document shall be consistent.

A registered portal or registered repository shall not be a producer of a specialist or other diagnostic report.

A Specialist or Other Diagnostic Report is intended to support a broad set of diagnostic reports including:
* cardiology field - ECG, echo cardiogram, angiocardiography
* neurology field - EEG, EMG, evoked potentials, nerve conduction tests
* gastroenterology field - endoscopy, colonoscopy
* respiratory field - pulmonary function tests
* audiology - hearing tests
* sleep studies

#### Usage scenarios
The following are the overarching usage scenarios this profile is intended to support:
* A clinical information system (CIS) sends or receives a specialist or other diagnostic report with the My Health Record system
* A contracted service provider (CSP) sends or receives a specialist or other diagnostic report with the My Health Record system
* A CSP sends or receives a specialist or other diagnostic report with a CIS or another CSP
* A registered portal or registered repository receives a specialist or other diagnostic report

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html">HPI-O scoped</a> if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a>) for more information)</li>
<li>status is 'preliminary', 'final', or 'amended'</li>
<li>category is sent with additional categories indicating the diagnostic service that performed each diagnostic investigation referenced in the report</li>
<li>code matches one Observation.code referenced in result</li>
<li>performer is sent as a reference to a PractitionerRole resource with:
    <ul>
        <li>PractitionerRole.identifier as a HPI-I</li>
        <li>PractitionerRole.practitioner as reference to a Practitioner resource with:
        <ul>
            <li>Practitioner.name.family</li>
            <li>Practitioner.telecom</li>   
            <li>Practitioner.address</li>   
        </ul></li>
        <li>PractitionerRole.organization as reference to an Organization resource with:
        <ul>
            <li>Organization.identifier as a HPI-O</li>
            <li>Organization.name</li>
            <li>Organization.address</li> 
         </ul></li>
        <li>PractitionerRole.code describing the professional role, e.g. 17561000 |Cardiologist|</li>
    </ul></li>
<li>The set of performers is consistent with each Observation.performer referenced in the report</li>
<li>the attached PDF is viewable by any individual that is a My Health Record participant; it does not have any of these features: encryption, password protection, printing or copying restrictions, embedded fonts (as not all PDF viewers support them)</li>
</ul>

#### Boundaries and relationships
This profile supports the identification of tests performed for a patient enabling an individual to determine if the attached Diagnostic Report is of interest but does not directly support reporting of the actual results of diagnostic investigations (see [Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html) for atomic reporting).

This profile is referenced by [Other Diagnostic Report](StructureDefinition-composition-otherdiagreport-1.html).