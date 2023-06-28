The purpose of this profile is to provide a core representation of a composition for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. A composition is a set of resources composed into a single coherent clinical statement.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

Where a more specific Composition profile is applicable an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core Composition standard for:
* exchanging a clinical statement 
* Query for a clinical statement for a patient
* Record or update a clinical statement record for a patient


### Profile specific guidance
None.


### Boundaries and relationships
These profiles build on this profile ([ADHA Core Composition](StructureDefinition-dh-composition-core-1.html)) to define specific document compositions:
* [ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html)