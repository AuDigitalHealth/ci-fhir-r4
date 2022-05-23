#### ADHA Diagnostic Result Observation
The purpose of this profile is to provide a representation of a diagnostic result observation made during a diagnostic investigation for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

This profile is designed to set an Observation standard for:
* exchanging diagnostic results
* TBD

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html), 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html), 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), and
[ADHA Diagnostic Result Group](StructureDefinition-dh-observation-diagnosticresultgroup-1.html). 

These profiles build on this profile ([ADHA Diagnostic Result Observation](StructureDefinition-dh-observation-diagnosticresult-1.html)) to define specific diagnostic results:
* [ADHA Imaging Result Observation](StructureDefinition-dh-observation-diagnosticresult-imag-1.html)
* [ADHA Pathology Result Observation](StructureDefinition-dh-observation-diagnosticresult-path-1.html)
