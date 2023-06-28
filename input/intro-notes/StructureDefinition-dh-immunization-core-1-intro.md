The purpose of this profile is to provide a core representation of an immunization for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a statement of the administration or non-administration of a vaccine.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Immunization](http://hl7.org/fhir/R4/immunization.html) that are supported. 

Where a more specific Immunization profile is applicable, e.g. record of immunisation from AIR, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core Immunization standard for:
* Query for a patient's immunisations
* Record or update an immunisation record for a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
None.


### Boundaries and relationships
The following profiles build on the [ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html) profile to define specific immunisation record types:
* [ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html).
