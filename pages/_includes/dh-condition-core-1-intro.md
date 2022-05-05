#### ADHA Core Condition
The purpose of this profile is to provide a core representation of a condition for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a statement of a condition, problem, or diagnosis including asserting negation for specific conditions or problems.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Condition](http://hl7.org/fhir/R4/condition.html) that are supported. 

This profile is designed to set a core Condition standard for:
* Query for a patient's conditions
* Record or update a condition belonging to a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Guidance
The following guidance applies:
* verificationStatus is 'confirmed'
* an active condition is sent with clinicalStatus 'active'
* a refuted condition is sent with a negation code and verificationStatus of ‘unconfirmed’ or ‘confirmed’ depending on the level of certainty

#### Boundaries and relationships
This profile is referenced by 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-phs-1.html),
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html),
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), and 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).
