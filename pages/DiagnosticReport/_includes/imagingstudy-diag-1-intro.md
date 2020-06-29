#### Diagnostic Imaging Study
The purpose of this profile is to represent key elements of clinical relevance of an imaging study in a diagnostic imaging report context. This profile is intended to support the electronic exchange of diagnostic imaging reports between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

A single Diagnostic Report will typically include several diagnostic imaging studies, one for each imaging examination performed.

#### Implementation guidance
When sending to the My Health Record system it is expected that:
* all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html).
* if sent, endPoint is sent with the URI of the image set location in endPoint.display

#### Boundaries and relationships
This profile is referenced by [Simple Imaging Observation](StructureDefinition-observation-imag-simple-1.html), [Simple Other Diagnostic Observation](StructureDefinition-observation-otherdiag-simple-1.html),  [Atomic Imaging Observation](StructureDefinition-observation-imag-atomic-1.html), and [Atomic Other Diagnostic Observation](StructureDefinition-observation-otherdiag-atomic-1.html).