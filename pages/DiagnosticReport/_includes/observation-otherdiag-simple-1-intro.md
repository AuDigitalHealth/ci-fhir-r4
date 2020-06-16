#### Simple Other Diagnostic Observation
The purpose of this profile is to represent key elements of clinical relevance (such as diagnostic examination name and clinically relevant date time) to accompany a rich text representation of a diagnostic report as issued by the diagnostic service provider for the electronic exchange of other diagnostic reports (such as echo cardiogram or colonoscopy or hearing test) between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

The context of this profile is the My Health Record Other Diagnostic Report.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>status is sent as 'preliminary', 'final', or 'amended'</li>
<li>category is sent with an additional category indicating the diagnostic service that performed the diagnostic procedure</li>
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
</ul>

When sending observations that group the set of results by of a multi-modality procedure or multi-test study / panel:
* a multi-modality procedure or multi-test study / panel observation is sent with individual component examinations in Observation.hasMember
* an individual component examination observation is referenced by that multi-modality procedure or multi-test study / panel observation (Observation.hasMember) rather than directly at the diagnostic report level (DiagnosticReport.result)

When sending to the My Health Record system it is expected that all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html).

#### Boundaries and relationships
This profile supports the identification of diagnostic examinations performed for a patient enabling an individual to determine if the Diagnostic Report is of interest but does not directly support reporting of the actual results of diagnostic examinations (see [Atomic Other Diagnostic Observation](StructureDefinition-observation-otherdiag-atomic-1.html) for atomic reporting).

This profile is referenced by [My Health Record Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-mhr-1.html), and [Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html).