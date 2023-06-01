The purpose of this profile is to provide a core representation of a flag (e.g. warning or notification) for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Flag](http://hl7.org/fhir/R4/flag.html) that are supported. 

Where a more specific Flag profile is applicable, e.g. AIR notice, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core Flag standard for:
* Query for a flag (alert or notice) associated with a patient
* Record or update a flag (alert or notice) associated with a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


### Profile specific guidance
None.


### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html). 

The following profiles build on the [ADHA Core Flag](StructureDefinition-dh-flag-core-1.html) profile to define specific flags:
* [ADHA Australian Immunisation Register Notice](StructureDefinition-dh-flag-air-1.html).
