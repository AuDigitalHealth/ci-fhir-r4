The purpose of this profile is to provide a core representation of a body structure for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [BodyStructure](http://hl7.org/fhir/R4/bodystructure.html) that are supported. 

Where a more specific BodyStructure profile is applicable, e.g. diagnostic result or vital signs, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core BodyStructure standard for:
* Recording or updating body structures
* Reading body structures

Operations, including querying, on body structures are expected to be within the context of another resource query.

#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.

The following profiles build on the [ADHA Core BodyStructure](StructureDefinition-dh-bodystructure-core-1.html) profile to define specific roles:
* [ADHA Organ or Tissue for Donation BodyStructure](StructureDefinition-dh-bodystructure-aodr-1.html).