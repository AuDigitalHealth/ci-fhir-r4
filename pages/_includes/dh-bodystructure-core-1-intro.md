#### ADHA Core BodyStructure
The purpose of this profile is to provide a core representation of a body structure for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [BodyStructure](http://hl7.org/fhir/R4/bodystructure.html) that are supported. 

This profile is designed to set a core BodyStructure for:
* Recording or updating body structures
* Reading body structures

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html). 

These profiles build on this profile ([ADHA Core BodyStructure](StructureDefinition-dh-bodystructure-core-1.html)) to define specific roles:
* [ADHA Organ or Tissue for Donation BodyStructure](StructureDefinition-dh-bodystructure-odr-1.html)