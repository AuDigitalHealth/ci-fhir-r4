This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

Where a more specific Observation profile is applicable, e.g. pathology result observation or imaging result observation, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set an Observation standard for:
* Query for diagnostic examination results for a patient
* Record or update diagnostic examination results belonging to a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The Observation resource can represent a result using one or both of a single value with `Observation.value`, or set of results using either `Observation.component.value` or `Observation.hasMember`.
  - Although all are marked as must support, sending systems are not required to support all choices, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.
- `Observation.identifier` may contain the same identifier as in the order or report connecting the resources that are related to a single request fulfilment workflow.


### Boundaries and relationships
These profiles build on this profile ([ADHA Diagnostic Result Observation](StructureDefinition-dh-observation-diagnosticresult-1.html)) to define specific diagnostic results:
* [ADHA Imaging Result Observation](StructureDefinition-dh-observation-diagnosticresult-imag-1.html)
* [ADHA Pathology Result Observation](StructureDefinition-dh-observation-diagnosticresult-path-1.html)
