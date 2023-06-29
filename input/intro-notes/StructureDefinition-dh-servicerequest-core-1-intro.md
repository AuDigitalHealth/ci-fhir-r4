This profile identifies the additional constraints, extensions, and value sets that build on and extend [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) that are supported. 

Where a more specific ServiceRequest profile is applicable an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core ServiceRequest standard for:
* Query for a request for a service associated with a patient
* Record or update a request for a service associated with a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `ServiceRequest.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The ServiceRequest resource can represent a reason as a code with `ServiceRequest.reasonCode`, or a reference with `ServiceRequest.reasonReference` to a Condition or other resource.
  - Although both are marked as must support, sending systems are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.
- The ServiceRequest resource can represent the desired performer as a code with `ServiceRequest.performerType`, or a reference with `ServiceRequest.performer` to a HealthcareService or other resource.
  - Although both are marked as must support, sending systems are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.
- `ServiceRequest.supportingInfo` is broad to accommodate a wide variety of use cases by allowing a reference to any resource. 
   - Sending systems **SHALL** ensure references to external resources are only to resources that conform to at least an ADHA Core profile and the resource type is supported by the Conformance/Capability statement for that endpoint and conform.
