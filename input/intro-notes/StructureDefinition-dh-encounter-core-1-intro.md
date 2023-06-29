This profile identifies the additional constraints, extensions, and value sets that build on and extend [Encounter](http://hl7.org/fhir/R4/encounter.html) that are supported. 

This profile is designed to set a core Encounter standard for:
* Query for a patient's encounters
* Query for records associated with a specific patient encounter
* Record or update an encounter and records associated with an encounter

This profile may be referred to by APIs, which will be listed here when available.

### Profile specific guidance
- `Encounter.type` supports categorisation and provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. 
- In an exchange with the My Health Record system `Encounter.status` is "finished".
- The Encounter resource can represent a reason using either a code with `Encounter.reasonCode`, or a reference with `Encounter.reasonReference` to a Condition or other resource.
  - Although both are marked as must support, sending systems are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.

