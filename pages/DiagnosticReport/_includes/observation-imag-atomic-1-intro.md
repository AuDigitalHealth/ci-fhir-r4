#### Atomic Imaging Observation
The purpose of this profile is to represent an atomic representation of a diagnostic imaging examination observation issued by the diagnostic service provider for the electronic exchange of imaging examination observations between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile is intended to support point-to-point exchange between an authoring diagnostic imaging provider and a requesting healthcare provider.

The observation may represent the result of a simple examination or it may group the set of results produced by a multi-modality study. In the latter cases, the observation carries the code of the study and the overall comments in the note element, or a global interpretation by the producer of the study in the interpretation element. The observation references the individual examination results that make up the study as ‘has-member’ child observations.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>status is sent as 'preliminary', 'final', or 'amended'</li>
<li>category is sent with an additional category indicating the diagnostic service that performed the imaging examination</li>
<li>effective[x] is the date time the imaging study was performed</li>
<li>performer is sent as a reference to a PractitionerRole resource with:
    <ul>
        <li>PractitionerRole.practitioner as reference to a Practitioner resource with:
        <ul>
            <li>Practitioner.name</li>
            <li>Practitioner.telecom</li>   
            <li>Practitioner.address</li>   
        </ul></li>
        <li>PractitionerRole.organization as reference to an Organization resource with:
        <ul>
            <li>Organization.name</li>
            <li>Organization.address</li> 
         </ul></li>
        <li>PractitionerRole.code describing the professional role, e.g. 66862007 |Radiologist|</li>
    </ul></li>
</ul>

When sending observations that group the set of results of a multi-modality procedure:
* a multi-modality procedure observation is sent with individual component examinations in Observation.hasMember
* an individual component examination observation is referenced by that multi-modality procedure observation (Observation.hasMember) rather than directly at the diagnostic report level (DiagnosticReport.result)

When sending to the My Health Record system it is expected that all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html).

#### Boundaries and relationships
This profile is referenced by [Atomic Diagnostic Imaging Report](StructureDefinition-diagnosticreport-imag-atomic-1.html) and [Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html).