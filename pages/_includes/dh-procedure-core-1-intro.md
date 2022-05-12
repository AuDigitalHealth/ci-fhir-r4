#### ADHA Core Procedure
The purpose of this profile is to provide a core representation of a procedure for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Procedure](http://hl7.org/fhir/R4/procedure.html) that are supported. 

This profile is designed to set a core Procedure standard for:
* Query for procedures performed for a patient
* Record or update a procedure performed for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
* status is 'completed'


#### Boundaries and relationships
This profile is referenced by 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-phs-1.html),
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html), 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), and 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html). 
