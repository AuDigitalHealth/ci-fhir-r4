#### Atomic Pathology Report
The purpose of this profile is to define an atomic representation of a pathology report issued by the diagnostic service provider to support the electronic exchange of pathology reports between healthcare providers in Australia.

This profile is intended to support point-to-point exchange between an authoring pathology provider and a requesting healthcare provider without the need for a 'document' wrapper.

This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.

A Pathology Report is created by an authoring pathology provider in response to a pathology order and contains a pathologist’s analysis of one or more test results. The original diagnostic report may be attached in one or more formats (e.g. PDF and MS Word) that may contain one or more pathology test results. Thus the values of diagnostic report elements that are present in both a FHIR resource and an attached report shall be consistent.

#### Usage scenarios
The following are the overarching usage scenarios this profile is intended to support:
* A CIS sends or receives a pathology report with another CIS

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html">HPI-O scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a>) for more information</li>
<li>status is 'preliminary', 'final', or 'amended'</li>
<li>category is sent with additional categories indicating the diagnostic service that performed each pathology test observation referenced in the report</li>
<li>code matches one Observation.code referenced in result</li>
<li>effective[x] is the earliest specimen collection date time</li>
<li>performer is sent as one Organization (pathology laboratory) and one or more PractitionerRoles (performing pathologist)</li>
<li>performing pathology laboratory is sent as a reference to an Organization resource with:
    <ul>
        <li>Organization.identifier</li>
        <li>Organization.name</li>
        <li>Organization.address</li> 
  </ul></li>      
<li>performing pathologist is sent as a reference to a PractitionerRole resource with:
    <ul>
        <li>PractitionerRole.practitioner as reference to a Practitioner resource with:
        <ul>
            <li>Practitioner.name</li>
            <li>Practitioner.telecom</li>   
        </ul></li>
        <li>PractitionerRole.organization as either a reference to an Organization resource or PractitionerRole.organization.identifier and PractitionerRole.organization.display with the organisation's name</li>
        <li>PractitionerRole.code describing the professional role, e.g. 40204001 |Haematologist|</li>
    </ul></li>
<li>the set of performers is consistent with each Observation.performer referenced in the report</li>
<li>result is a choice between a simple observation or an atomic observation; each caters to different types of support for different purposes; either, or both, may be provided</li>
</ul>

When sending a report of a multi-test study or panel:
<ul>
<li>result is sent with the Observation representing the study / panel</li>  
<li>code is sent with the same code in that study / panel Observation</li>  
<li>the individual component tests are referenced by that Observation (Observtion.hasMember) and not directly referenced by the DiagnosticReport</li>  
</ul>

#### Boundaries and relationships
This profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA's structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time.

This profile is primarily intended to support point-to-point exchange; when sending to the My Health Record system it is expected that a pathology report (including an atomic representation) would additionally conform to [My Health Record Pathology Report](StructureDefinition-diagnosticreport-path-mhr-1.html).

This profile is referenced by [Pathology Report](StructureDefinition-composition-pathreport-1.html).