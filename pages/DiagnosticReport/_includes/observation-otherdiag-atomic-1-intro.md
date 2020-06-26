#### Atomic Other Diagnostic Observation
The purpose of this profile is to represent an atomic representation of other diagnostic (not pathology and not diagnostic imaging) test observation issued by the diagnostic service provider for the electronic exchange of other diagnostic test observations between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile is intended to support point-to-point exchange between an authoring diagnostic provider and a requesting healthcare provider.

A Specialist or Other Diagnostic observation is intended to support a broad set of observations including:
* cardiology field - ECG, echo cardiogram, angiocardiography
* neurology field - EEG, EMG, evoked potentials, nerve conduction tests
* gastroenterology field - endoscopy, colonoscopy
* respiratory field - pulmonary function tests
* audiology - hearing tests
* sleep studies

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>status is sent as 'preliminary', 'final', or 'amended'</li>
<li>category is sent with a code indicating the diagnostic service that performed the diagnostic procedure</li>
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
        <li>PractitionerRole.code describing the professional role, e.g. 17561000 |Cardiologist|</li>
    </ul></li>
</ul>

When sending observations that group the set of results of a multi-modality procedure or multi-test study / panel:
* a multi-modality procedure or multi-test study / panel observation is sent with individual component examinations in Observation.hasMember
* an individual component examination observation is referenced by that multi-modality procedure or multi-test study / panel observation (Observation.hasMember) rather than directly at the diagnostic report level (DiagnosticReport.result)

When sending to the My Health Record system it is expected that all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html).

#### Boundaries and relationships
This profile is referenced by [Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html).