#### ADHA PBS Claim Item
The purpose of this profile is to define a representation of the prescription item claimed in a claim against the Pharmaceutical Benefits Schedule (PBS) or Repatriation Pharmaceutical Benefits Scheme (RPBS) for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

The purpose of this profile is to define a record of the PBS prescription claimed in a record of the claim of an item claimed against the Pharmaceutical Benefits Schedule (PBS) or Repatriation Pharmaceutical Benefits Scheme (RPBS) for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile is designed to set a MedicationRequest standard for:
* Querying prescription items in a PBS claim (ExplanationOfBenefit) resource
* Querying prescription items in an RPBS claim (ExplanationOfBenefit) resources
* Recording or updating a prescription item in an PBS claim (ExplanationOfBenefit) resource
* Recording or updating a prescription items in an RPBS claim (ExplanationOfBenefit) resource

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- In an exchange with the My Health Record system references to a Medication resource will be [contained](http://hl7.org/fhir/R4/references.html#contained).


#### Boundaries and relationships
This profile is referenced by 
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html).