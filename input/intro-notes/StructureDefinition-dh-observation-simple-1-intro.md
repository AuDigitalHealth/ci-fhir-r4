The purpose of this profile is to provide a representation of an observation, for simple measurements or assertions, for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

This profile is designed to set an Observation standard for:
* TBD

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Antenatal observations will represent the pregnant individual as `Observation.subject` and the fetus as `Observation.focus`.


### Boundaries and relationships
This profile is referenced by 
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html), 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html), 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), 
[ADHA Medicare Overview Composition](StructureDefinition-dh-composition-mov-1.html), 
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html),
[ADHA Personal Observations Composition](StructureDefinition-dh-composition-po-1.html), 
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html), 
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html), and 
[ADHA Core List](StructureDefinition-dh-list-core-1.html).
