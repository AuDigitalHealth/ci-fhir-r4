The purpose of this profile is to provide a core representation of a condition for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a statement of a condition, problem, or diagnosis including asserting negation for specific conditions or problems.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Condition](http://hl7.org/fhir/R4/condition.html) that are supported. 

This profile is designed to set a core Condition standard for:
* Query for a patient's conditions
* Record or update a condition belonging to a patient


#### Profile specific guidance
- `Condition.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- An active condition is represented using "active" in `Condition.clinicalStatus`.
- To represent that a patient does not have a condition or history of condition, an appropriate negation code is used in `Condition.code`.
- Refutation is not expected to be handled except as above - an appropriate negation code in `Condition.code` and `Condition.verificationStatus` of "confirmed" or "unconfirmed".


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html) and 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html).