The purpose of this profile is to provide a core representation of a procedure for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Procedure](http://hl7.org/fhir/R4/procedure.html) that are supported. 

This profile is designed to set a core Procedure standard for:
* Query for procedures performed for a patient
* Record or update a procedure performed for a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `Procedure.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- In an exchange with the My Health Record system `Procedure.status` is "completed".
- The Procedure resource can represent a reason as a code with `Procedure.reasonCode`, or a reference with `Procedure.reasonReference` to a Condition or other resource.
  - Although both are marked as must support, sending systems are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.
- A procedure including an implantable device should use `Procedure.focalDevice` with a reference to a Device resource.

