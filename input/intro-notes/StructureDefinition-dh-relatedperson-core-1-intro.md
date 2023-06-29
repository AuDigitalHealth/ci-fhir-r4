In the context of an exchange of health information a related person is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) that are supported.

A [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) resource is used within the context of a referencing resource. 

This profile is designed to set a core RelatedPerson standard for:
* Recording or updating a related person referenced by another resource
* Reading related persons referenced by another resource

This profile may be referred to by APIs, which will be listed here when available.
 

### Profile specific guidance
- See the [Representing communication preferences](guidance.html#representing-communication-preferences) section for guidance


### Boundaries and relationships
The following profiles build on the [ADHA Core RelatedPerson](StructureDefinition-dh-relatedperson-core-1.html) profile to define specific roles:
* [ADHA Authoring RelatedPerson](StructureDefinition-dh-relatedperson-author-1.html)
* [ADHA MHR RelatedPerson](StructureDefinition-dh-relatedperson-mhr-1.html)