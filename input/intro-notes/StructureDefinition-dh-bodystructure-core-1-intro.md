The purpose of this profile is to provide a core representation of a body structure for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [BodyStructure](http://hl7.org/fhir/R4/bodystructure.html) that are supported. 

Where a more specific BodyStructure profile is applicable, e.g. diagnostic result or vital signs, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core BodyStructure standard for:
* Recording or updating body structures
* Reading body structures

Operations, including querying, on body structures are expected to be within the context of another resource query.

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
None.


### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html). 

The following profiles build on the [ADHA Core BodyStructure](StructureDefinition-dh-bodystructure-core-1.html) profile to define specific roles:
* [ADHA Organ or Tissue for Donation BodyStructure](StructureDefinition-dh-bodystructure-aodr-1.html).