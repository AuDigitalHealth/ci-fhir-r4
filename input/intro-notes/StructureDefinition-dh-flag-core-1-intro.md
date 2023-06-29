This profile identifies the additional constraints, extensions, and value sets that build on and extend [Flag](http://hl7.org/fhir/R4/flag.html) that are supported. 

Where a more specific Flag profile is applicable, e.g. AIR notice, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core Flag standard for:
* Query for a flag (alert or notice) associated with a patient
* Record or update a flag (alert or notice) associated with a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
None.


### Boundaries and relationships
The following profiles build on the [ADHA Core Flag](StructureDefinition-dh-flag-core-1.html) profile to define specific flags:
* [ADHA Australian Immunisation Register Notice](StructureDefinition-dh-flag-air-1.html).
