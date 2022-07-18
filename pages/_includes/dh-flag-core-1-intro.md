The purpose of this profile is to provide a core representation of a flag (e.g. warning or notification) for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Flag](http://hl7.org/fhir/R4/flag.html) that are supported. 

Where a more specific Flag profile is applicable, e.g. AIR notice, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core Flag standard for:
* Query for a flag (alert or notice) associated with a patient
* Record or update a flag (alert or notice) associated with a patient


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.

These profiles build on this profile ([ADHA Core Flag](StructureDefinition-dh-flag-core-1.html)) to define specific flags:
* [ADHA Australian Immunisation Register Notice](StructureDefinition-dh-flag-air-1.html)
