#### Australian Digital Health Agency Core Condition
The purpose of this profile is to provide a core representation of a condition for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a statement of a condition, problem, or diagnosis including asserting negation for specific conditions or problems.

This profile is designed to set a core Specimen for:
* Insert ADHA API Endpoint
* Insert ADHA API Endpoint

#### Implementation guidance
The following guidance applies:
* verificationStatus is 'confirmed'
* an active condition is sent with clinicalStatus 'active'
* a refuted condition is sent with a negation code and verificationStatus of ‘unconfirmed’ or ‘confirmed’ depending on the level of certainty

#### Boundaries and relationships
This profile is referenced by 
[Australian Digital Health Agency Core TBD](StructureDefinition-dh-tbd-core-1.html), and 
[Australian Digital Health Agency Core TBD](StructureDefinition-dh-tbd-core-1.html).