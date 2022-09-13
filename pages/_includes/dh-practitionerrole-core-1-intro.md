The purpose of this profile is to provide a core representation of a practitioner in a role, on behalf of an organisation, for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.
In the context of an exchange of health information a practitioner role is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) that are supported. 

A [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) resource is used within the context of a referencing resource. 

This profile is designed to set a core PractitionerRole standard for:
* Recording or updating a practitioner role referenced by another resource
* Reading practitioner roles referenced by another resource


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Record of Claim against MBS or DVA](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html),
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html),
[ADHA Core Patient](StructureDefinition-dh-patient-core-1.html), and
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html).

The following profiles build on the [ADHA Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html) profile to define specific roles:
* [ADHA Authoring PractitionerRole](StructureDefinition-dh-practitionerrole-author-1.html).