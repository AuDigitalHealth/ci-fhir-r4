#### ADHA Core RelatedPerson
The purpose of this profile is to provide a core representation of a related person for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.
In the context of an exchange of health information a related person is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) that are supported.

A [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) resource is used within the context of a referencing resource. 

This profile is designed to set a core RelatedPerson standard:
* Recording or updating a related person referenced by another resource
* Reading related persons referenced by another resource

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)
 

#### Profile specific guidance
- See the [Representing communication preferences](guidance.html#representing-communication-preferences) section for guidance


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Record of Claim against MBS](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html),
[ADHA Diagnostic Result Observation](StructureDefinition-dh-observation-diagnosticresult-1.html),
[ADHA Imaging Result Observation](StructureDefinition-dh-observation-diagnosticresult-imag-1.html),
[ADHA Pathology Result Observation](StructureDefinition-dh-observation-diagnosticresult-path-1.html),
[ADHA Core Media](StructureDefinition-dh-media-core-1.html), and
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).

These profiles build on this profile ([ADHA Core RelatedPerson](StructureDefinition-dh-relatedperson-core-1.html)) to define specific roles:
* [ADHA Authoring RelatedPerson](StructureDefinition-dh-relatedperson-author-1.html)
