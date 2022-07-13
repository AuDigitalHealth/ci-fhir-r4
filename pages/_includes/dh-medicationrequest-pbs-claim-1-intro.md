The purpose of this profile is to define a representation of the prescription item claimed in a claim against the Pharmaceutical Benefits Schedule (PBS) or Repatriation Pharmaceutical Benefits Scheme (RPBS) for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile is designed to set a MedicationRequest standard for:
* Recording or updating a prescription item in an PBS claim (ExplanationOfBenefit) resource
* Reading a prescription items in an RPBS claim (ExplanationOfBenefit) resource

Operations, including querying, on prescription items in PBS claims (MedicationRequest resource) are expected to be within the context of an ExplanationOfBenefit resource query.

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
None.

#### Boundaries and relationships
This profile is referenced by 
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html).