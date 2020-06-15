#### Simple Pathology Observation
The purpose of this profile is to represent key elements of clinical relevance (such as test name and specimen collection date) to accompany a rich text representation of a pathology report as issued by the diagnostic service provider for the electronic exchange of pathology reports between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

The context of this profile is the My Health Record Pathology Report.

The observation may represent the result of a simple test such as haemoglobin or it may group the set of results produced by a multi-test study or panel such as a full blood count, or urine specimen study. In the latter cases, the observation carries the code of the study / panel and references the individual tests that make up the study / panel as ‘has-member’ child observations.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* status is sent as 'preliminary', 'final', or 'amended'
* category is sent with an additional category indicating the diagnostic service that performed the pathology test
* effective[x] is the specimen collection date time
 
When sending observations that group the set of results by a multi-test study or panel:
* a study / panel observation is sent with individual component tests in Observation.hasMember
* an individual component test observation is referenced by that study / panel observation (Observation.hasMember) rather than directly at the diagnostic report level (DiagnosticReport.result)

When sending to the My Health Record system it is expected that all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html).

#### Boundaries and relationships
This profile supports the identification of tests performed for a patient enabling an individual to determine if the Pathology Report is of interest but does not directly support reporting of the actual results of pathology tests (see [Atomic Pathology Observation](StructureDefinition-observation-path-atomic-1.html) for atomic reporting).

This profile is referenced by [My Health Record Pathology Report](StructureDefinition-diagnosticreport-path-mhr-1.html), and [Atomic Pathology Report](StructureDefinition-diagnosticreport-path-atomic-1.html).