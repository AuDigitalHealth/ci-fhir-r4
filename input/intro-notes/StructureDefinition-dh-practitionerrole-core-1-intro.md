In the context of an exchange of health information a practitioner role is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) that are supported. 

A [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) resource is used within the context of a referencing resource. 

This profile is designed to set a core PractitionerRole standard for:
* Recording or updating a practitioner role referenced by another resource
* Reading practitioner roles referenced by another resource

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
None.


### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Record of Claim against MBS or DVA](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html),  
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html), 
[ADHA Core Media](StructureDefinition-dh-media-core-1.html), 
[ADHA Diagnostic Result Observation](StructureDefinition-dh-observation-diagnosticresult-1.html), 
[ADHA Imaging Result Observation](StructureDefinition-dh-observation-diagnosticresult-imag-1.html),
[ADHA Pathology Result Observation](StructureDefinition-dh-observation-diagnosticresult-path-1.html),
[ADHA Simple Observation](StructureDefinition-dh-observation-simple-1.html), 
[ADHA Patient Core](StructureDefinition-dh-patient-core-1.html),
[ADHA Patient Demographics](StructureDefinition-dh-patient-demographics-1.html),
[ADHA My Health Record Patient](StructureDefinition-dh-patient-mhr-1.html),
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html),
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html), and
[ADHA Core Specimen](StructureDefinition-dh-specimen-core-1.html).

These profiles build on this profile ([ADHA Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html)) to define specific roles:
* [ADHA Authoring PractitionerRole](StructureDefinition-dh-practitionerrole-author-1.html)