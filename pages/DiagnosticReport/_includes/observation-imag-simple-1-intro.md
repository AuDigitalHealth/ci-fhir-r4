#### Simple Imaging Observation
The purpose of this profile is to represent key elements of clinical relevance (such as imaging examination name and image date time) to accompany a rich text representation of a diagnostic imaging report as issued by the diagnostic service provider for the electronic exchange of diagnostic imaging reports between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

The context of this profile is the My Health Record Diagnostic Imaging Report.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* status is sent as 'preliminary', 'final', or 'amended'
* category is sent with an additional category indicating the diagnostic service that performed the imaging examination
* effective[x] is the date time the imaging study was performed

When sending observations that group the set of results by of a multi-modality procedure:
* a multi-modality procedure observation is sent with individual component examinations in Observation.hasMember
* an individual component examination observation is referenced by that multi-modality procedure observation (Observation.hasMember) rather than directly at the diagnostic report level (DiagnosticReport.result)

When sending to the My Health Record system it is expected that all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html).

#### Boundaries and relationships
This profile supports the identification of tests performed for a patient enabling an individual to determine if the Diagnostic Imaging Report is of interest but does not directly support reporting of the actual results of imaging examinations (see [Atomic Imaging Observation](StructureDefinition-observation-imag-atomic-1.html) for atomic reporting).

This profile is referenced by [My Health Record Diagnostic Imaging Report](StructureDefinition-diagnosticreport-imag-mhr-1.html), and [Atomic Diagnostic Imaging  Report](StructureDefinition-diagnosticreport-imag-atomic-1.html).