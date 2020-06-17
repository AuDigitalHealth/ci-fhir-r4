#### Atomic Other Diagnostic Report
The purpose of this profile is to define an atomic representation of a report as issued by the diagnostic service provider to support the electronic exchange of other diagnostic investigations (such as echo cardiogram or colonoscopy or hearing test) between healthcare providers in Australia.

This profile is intended to support point-to-point exchange between an authoring diagnostic provider and a requesting healthcare provider without the need for a ‘document’ wrapper.

A Specialist or Other Diagnostic Report is created by an authoring diagnostic provider in response to an order for a diagnostic investigation and contains specialist or other healthcare provider’s analysis of one or more diagnostic investigation results. The original diagnostic report may be attached in one or more formats (e.g. PDF and MS Word) that may contain one or more diagnostic investigation results. Thus the values of diagnostic report elements that are present in both a FHIR resource and an attached report shall be consistent.

#### Usage scenarios
The following are the overarching usage scenarios this profile is intended to support:
* A CIS sends or receives a specialist or other diagnostic report with another CIS

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/index.html">HPI-O scoped</a> if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a>) for more information</li>
<li>status is 'preliminary', 'final', or 'amended'</li>
<li>category is sent with additional categories indicating the diagnostic service that performed each diagnostic investigation referenced in the report</li>
<li>code matches one Observation.code referenced in result</li>
<li>effective[x] is the earliest specimen collection date time</li>
<li>performer is sent as one Organization (diagnostic provider) and one or more PractitionerRoles (performing specialist or other healthcare provider)</li>
<li>performing diagnostic provider is sent as a reference to an Organization resource with:
    <ul>
        <li>Organization.identifier</li>
        <li>Organization.name</li>
        <li>Organization.address</li> 
  </ul></li>      
<li>performing specialist or other healthcare provider is sent as a reference to a PractitionerRole resource with:
    <ul>
        <li>PractitionerRole.practitioner as reference to a Practitioner resource with:
        <ul>
            <li>Practitioner.name</li>
            <li>Practitioner.telecom</li>   
        </ul></li>
        <li>PractitionerRole.organization as either a reference to an Organization resource or PractitionerRole.organization.identifier and PractitionerRole.organization.display with the organisation's name</li>
        <li>PractitionerRole.code describing the professional role, e.g. 40204001 |Haematologist|</li>
    </ul></li>
<li>The set of performers is consistent with each Observation.performer referenced in the report</li>
<li>result is a choice between different simple observations or an atomic observations; each caters to different types of support for different purposes; either, or both, may be provided</li>
</ul>


#### Boundaries and relationships
This profile is primarily intended to support point-to-point exchange; when sending to the My Health Record system it is expected that a specialist or other diagnostic report (including an atomic representation) would additionally conform to [My Health Record Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-mhr-1.html).

This profile is referenced by [Other Diagnostic Report](StructureDefinition-composition-otherdiagreport-1.html).