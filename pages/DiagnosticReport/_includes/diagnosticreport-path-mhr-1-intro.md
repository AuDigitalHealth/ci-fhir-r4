#### My Health Record Pathology Report
The purpose of this profile is to define a short form representation of a pathology report, providing a rich text representation of the report as issued by the diagnostic service provider with supporting key elements of clinical relevance.  This profile is intended to support the electronic exchange of pathology reports between healthcare providers and the My Health Record system infrastructure in Australia.

A My Health Record Pathology Report is created by an authoring pathology provider and contains the pathologist’s analysis of one or more test results. There is a single PDF attachment of the original diagnostic report that may itself contain one or more pathology test results. Thus the values of diagnostic report elements that are present in both a FHIR resource and the PDF document shall be consistent.

There are specific requirements related to the management of pathology results provided to the My Health Record system, which are managed by the My Health Record system itself.

A registered portal or registered repository shall not be a producer of a pathology report.

#### Usage scenarios
The following are the overarching usage scenarios this profile is intended to support:
* A clinical information system (CIS) sends or receives a pathology report with the My Health Record system
* A contracted service provider (CSP) sends or receives a pathology report with the My Health Record system
* A CSP sends or receives a pathology report with a CIS or another CSP
* A registered portal or registered repository receives a pathology report

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html">HPI-O scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a>) for more information)</li>
<li>status is 'preliminary', 'final', or 'amended'</li>
<li>category is sent with additional categories indicating the diagnostic service that performed each pathology test observation referenced in the report</li>
<li>code matches one Observation.code referenced in result</li>
<li>effective[x] is the earliest specimen collection date time</li>
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
        <li>PractitionerRole.code describing the professional role, e.g. 40204001 |Haematologist|</li>
    </ul></li>
<li>The set of performers is consistent with each Observation.performer referenced in the report</li>
<li>the attached PDF is viewable by any individual that is a My Health Record participant; it does not have any of these features: encryption, password protection, printing or copying restrictions, embedded fonts (as not all PDF viewers support them)</li>
</ul>

When sending a report of a multi-test study or panel:
<ul>
<li>result is sent with the Observation representing the study / panel</li>  
<li>code is sent with the same code in that study / panel Observation</li>  
<li>the individual component tests are referenced by that Observation (Observtion.hasMember) and not directly referenced by the DiagnosticReport</li>  
</ul>

#### Boundaries and relationships
This profile supports the identification of tests performed for a patient enabling an individual to determine if the attached Pathology Report is of interest but does not directly support reporting of the actual results of pathology tests (see [Atomic Pathology Report](StructureDefinition-diagnosticreport-imag-atomic-1.html) for atomic reporting).

This profile is referenced by [Pathology Report](StructureDefinition-composition-pathreport-1.html).