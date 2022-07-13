The purpose of this profile is to provide a core representation of a condition for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a statement of a condition, problem, or diagnosis including asserting negation for specific conditions or problems.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Condition](http://hl7.org/fhir/R4/condition.html) that are supported. 

This profile is designed to set a core Condition standard for:
* Query for a patient's conditions
* Record or update a condition belonging to a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- `Condition.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. 
- An active condition is represented using "active" in `Condition.clinicalStatus`
- To represent that a patient does not have a condition or history of condition, an appropriate negation code is used in `Condition.code`
- Refutation is not expected to be handled except as above - an appropriate negation code in `Condition.code` and `Condition.clinicalStatus` of "confirmed" or "unconfirmed"


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html),
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), 
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html),
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html),  
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), and 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).
