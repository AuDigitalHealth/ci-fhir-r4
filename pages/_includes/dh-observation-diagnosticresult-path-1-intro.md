#### ADHA Pathology Result Observation
The purpose of this profile is to represent a pathology test observation issued by the diagnostic service provider for the electronic exchange of pathology test observations between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

This profile is designed to set an Observation standard for:
* Query for pathology related tests results for a patient
* Record or update pathology results belonging to a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches to “laboratory” observations. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The Observation resource can represent a result using one or both of a single value with `Observation.value`, or set of component results using `Observation.component.value`.
  - Although both are marked as must support, sending systems are not required to support both a single value and a set of components, but they **SHALL** support *at least one* of these elements
  - A receiving or persisting system **SHALL** support both elements


#### Boundaries and relationships
This profile is referenced by 
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html), 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html), 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), and
[ADHA Diagnostic Result Group](StructureDefinition-dh-observation-diagnosticresultgroup-1.html). 