The purpose of this profile is to provide a core representation of a generic observation for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

Where a more specific Observation profile is applicable, e.g. diagnostic result or vital signs, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core Observation standard for:
* Query for a generic observation for a patient
* Record or update a generic observation belonging to a patient


#### Profile specific guidance
- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Antenatal observations will represent the pregnant individual as `Observation.subject` and the fetus as `Observation.focus`.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), and
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html).