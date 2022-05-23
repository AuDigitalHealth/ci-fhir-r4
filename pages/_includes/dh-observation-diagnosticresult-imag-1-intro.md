#### ADHA Imaging Result Observation
The purpose of this profile is to represent a diagnostic imaging observation issued by the diagnostic service provider for the electronic exchange of imaging examination observations between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia. The observation may represent the result of a simple examination or study series.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

This profile is designed to set an Observation standard for:
* Query for diagnostic imaging related tests results for a patient
* Record or update diagnostic imaging results belonging to a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches to “imaging” observations. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html), 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html), 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), and
[ADHA Diagnostic Result Group](StructureDefinition-dh-observation-diagnosticresultgroup-1.html). 