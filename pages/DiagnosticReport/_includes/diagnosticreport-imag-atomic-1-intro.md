#### Atomic Diagnostic Imaging Report
The purpose of this profile is to define an atomic representation of a diagnostic imaging report issued by the diagnostic service provider for the electronic exchange of diagnostic imaging reports between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile is intended to support point-to-point exchange between an authoring diagnostic imaging provider and a requesting healthcare provider without the need for a 'document' wrapper.

A Diagnostic Imaging Report is created by an authoring imaging provider in response to a diagnostic imaging order and contains a radiologist’s analysis of one or more examination results. The original diagnostic report may be attached in one or more formats (e.g. PDF and MS Word format) that may contain one or more diagnostic imaging examination results. Thus the values of diagnostic report elements that are present in both a FHIR resource and an attached report shall be consistent.

#### Usage scenarios
The following are the overarching usage scenarios this profile is intended to support:
* A CIS sends or receives a diagnostic imaging report with another CIS

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>one identifier is an Accession Number</li>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html">HPI-O scoped</a> if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a>) for more information</li>
<li>status is 'preliminary', 'final', or 'amended'</li>
<li>category is sent with additional categories indicating the diagnostic service that performed each imaging examination referenced in the report</li>
<li>code matches one Observation.code referenced in result</li>
<li>effective[x] is the date time the imaging study was performed</li>
<li>performer is sent as one Organization (imaging provider) and one or more PractitionerRoles (performing radiologist)</li>
<li>performing imaging provider is sent as a reference to an Organization resource with:
    <ul>
        <li>Organization.identifier</li>
        <li>Organization.name</li>
        <li>Organization.address</li> 
  </ul></li>      
<li>performing radiologist is sent as a reference to a PractitionerRole resource with:
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

When sending a report of a multi-modality procedure:
<ul>
<li>result is sent with the Observation representing the multi-modality procedure observation</li>  
<li>code is sent with the same code in that multi-modality procedure Observation</li>  
<li>the individual component examinations are referenced by that Observation (Observtion.hasMember) and not directly referenced by the DiagnosticReport</li>  
</ul>

#### Boundaries and relationships
This profile is primarily intended to support point-to-point exchange; when sending to the My Health Record system it is expected that a diagnostic imaging report (including an atomic representation) would additionally conform to [My Health Record Diagnostic Imaging Report](StructureDefinition-diagnosticreport-imag-mhr-1.html).

This profile is referenced by [Diagnostic Imaging Report](StructureDefinition-composition-imagreport-1.html).
