The purpose of this profile is to provide a core representation of a related person for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.
In the context of an exchange of health information a related person is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) that are supported.

A [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) resource is used within the context of a referencing resource. 

This profile is designed to set a core RelatedPerson standard for:
* Recording or updating a related person referenced by another resource
* Reading related persons referenced by another resource
 

#### Profile specific guidance
- See the [Representing communication preferences](guidance.html#representing-communication-preferences) section for guidance


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html) and
[ADHA Record of Claim against MBS or DVA](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html).

The following profiles build on the [ADHA Core RelatedPerson](StructureDefinition-dh-relatedperson-core-1.html) profile to define specific roles:
* [ADHA Authoring RelatedPerson](StructureDefinition-dh-relatedperson-author-1.html)
