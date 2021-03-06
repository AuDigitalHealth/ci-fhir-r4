#### Atomic Pathology Observation
The purpose of this profile is to represent an atomic representation of a pathology test observation issued by the diagnostic service provider for the electronic exchange of pathology test observations between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile is intended to support point-to-point exchange between an authoring pathology provider and a requesting healthcare provider.

This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.

The observation may represent the result of a simple test such as haematocrit or it may group the set of results produced by a multi-test study or panel such as a full blood count, or urine specimen study. In the latter cases, the observation carries the code of the study / panel and the overall comments in the note element, or a global interpretation by the producer of the study in the interpretation element. The observation references the individual test results that make up the study / panel as ‘has-member’ child observations.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
<li>status is sent as 'preliminary', 'final', or 'amended'</li>
<li>category is sent with an additional category indicating the diagnostic service that performed the pathology test</li>
<li>effective[x] is the specimen collection date time</li>
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
</ul>

When sending observations that group the set of results by a multi-test study or panel:
* a study / panel observation is sent with individual component tests in Observation.hasMember
* an individual component test observation is referenced by that study / panel observation (Observation.hasMember) rather than directly at the diagnostic report level (DiagnosticReport.result)

When sending to the My Health Record system it is expected that all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html).

#### Boundaries and relationships
This profile does not provide full support for structured pathology reporting. It is expected that this support is best handled by a set of profiles that represent the structured reporting requirements for each specific protocol (see for example [RCPA's structured pathology reporting of cancer](https://www.rcpa.edu.au/Library/Practising-Pathology/Structured-Pathology-Reporting-of-Cancer)); this is not in the scope of this implementation guide at this time.

This profile is referenced by [Atomic Pathology Report](StructureDefinition-diagnosticreport-path-atomic-1.html) and [Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html).