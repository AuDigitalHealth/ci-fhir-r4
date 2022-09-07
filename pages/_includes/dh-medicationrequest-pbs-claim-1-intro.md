The purpose of this profile is to define a representation of the prescription item claimed in a claim against the Pharmaceutical Benefits Scheme (PBS) or Repatriation Pharmaceutical Benefits Scheme (RPBS) for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) that are supported. 

This profile is designed to set a MedicationRequest standard for:
* Recording or updating a prescription item in an PBS claim ([ExplanationOfBenefit](http://hl7.org/fhir/R4/explanationofbenefit.html) resource)
* Reading a prescription items in an RPBS claim ([ExplanationOfBenefit](http://hl7.org/fhir/R4/explanationofbenefit.html) resource)

Operations, including querying, on prescription items in PBS claims ([MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) resource) are expected to be within the context of an [ExplanationOfBenefit](http://hl7.org/fhir/R4/explanationofbenefit.html) resource query.


#### Profile specific guidance
None.

#### Boundaries and relationships
This profile is referenced by 
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html).