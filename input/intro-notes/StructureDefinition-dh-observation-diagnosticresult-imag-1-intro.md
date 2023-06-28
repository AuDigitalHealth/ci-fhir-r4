The purpose of this profile is to represent a diagnostic imaging observation issued by the diagnostic service provider for the electronic exchange of imaging examination observations between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia. The observation may represent the result of a simple examination or study series.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

This profile is designed to set an Observation standard for:
* Query for diagnostic imaging related tests results for a patient
* Record or update diagnostic imaging results belonging to a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches to “imaging” observations. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The Observation resource can represent a result using one or both of a single value with `Observation.value`, or set of results using either `Observation.component.value` or `Observation.hasMember`.
  - Although all are marked as must support, sending systems are not required to support all choices, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.
- `Observation.identifier` may contain the same identifier as in the order or report connecting the resources that are related to a single request fulfilment workflow.

