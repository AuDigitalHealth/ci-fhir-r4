#### ADHA Core DiagnosticReport
The purpose of this profile is to define  a core representation of a diagnostic report issued by the diagnostic service provider to support the electronic exchange of the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) that are supported. 

This profile is designed to set a DiagnosticReport standard for:
* TBD


#### Profile specific guidance
- `DiagnosticReport.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. - An active condition is represented using "active" in `Condition.clinicalStatus`


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), and 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).
