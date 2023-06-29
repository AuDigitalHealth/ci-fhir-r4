This profile identifies the additional constraints, extensions, and value sets that build on and extend [List](http://hl7.org/fhir/R4/list.html) that are supported. 

Where a more specific List profile is applicable, e.g. prescription or dispense history list, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core List standard for:
* Query for a list associated with a patient
* Record or update a list associated with a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
None.


### Boundaries and relationships
These profiles build on this profile ([ADHA Core List](StructureDefinition-dh-list-core-1.html)) to define specific lists:
* [ADHA Immunisation History List](StructureDefinition-dh-list-immunization-1.html)
* [ADHA Medication Use List](StructureDefinition-dh-list-medication-use-1.html) 
* [ADHA Prescription and or Dispense History List](StructureDefinition-dh-list-medication-pdl-1.html)

