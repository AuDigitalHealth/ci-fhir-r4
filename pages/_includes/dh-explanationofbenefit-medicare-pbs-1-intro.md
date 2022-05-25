#### ADHA Record of Claim against PBS or RPBS
The purpose of this profile is to define a representation of a record of a claim against the Pharmaceutical Benefits Schedule (PBS) or Repatriation Pharmaceutical Benefits Scheme (RPBS) for the electronic exchange of digital health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [ExplanationOfBenefit](http://hl7.org/fhir/R4/explanationofbenefit.html) that are supported. 

This profile is designed to set an ExplanationOfBenefit standard for:
* Query for a record of a PBS item claim associated with a patient
* Query for a record of an RPBS item claim associated with a patient
* Record or update a PBS item claim associated with a patient
* Record or update an RPBS item claim associated with a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- In an exchange with the My Health Record system references to a MedicationRequest resource will be [contained](http://hl7.org/fhir/R4/references.html#contained).


#### Boundaries and relationships
This profile is referenced by 
[ADHA Medicare Overview Composition](StructureDefinition-dh-composition-mov-1.html).

