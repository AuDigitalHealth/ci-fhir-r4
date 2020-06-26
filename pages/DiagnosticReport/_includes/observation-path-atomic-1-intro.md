#### Atomic Pathology Observation
<p>The purpose of this profile is to represent an atomic representation of a pathology test observation issued by the diagnostic service provider for the electronic exchange of pathology test observations between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.</p>
<p>This profile may be used for a variety of pathology scenarios, but does not directly support structured reporting; this is outside of the scope of this implementation guide. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.</p>
<p>The observation may represent the result of a simple test such as haematocrit or it may group the set of results produced by a multi-test study or panel such as a full blood count, or urine specimen study. In the latter cases, the observation carries the code of the study / panel and the overall comments in the note element, or a global interpretation by the producer of the study in the interpretation element. The observation references the individual test results that make up the study / panel as ‘has-member’ child observations.</p>

#### Implementation guidance
<p>For the overarching usage scenarios in this implementation guide it is expected that:</p>
* status will be 'preliminary', 'final', or 'amended'
* category will be sent with an additional category indicating the diagnostic service that performed the pathology test
* effective[x] is the specimen collection date time
* performer when sent as an Organization is the performing laboratory, and when sent as a PractitionerRole is the performing pathologist including their employing organisation. Either, or both may be provided.

This profile is referenced by [Atomic Pathology Report](StructureDefinition-diagnosticreport-path-atomic-1.html).