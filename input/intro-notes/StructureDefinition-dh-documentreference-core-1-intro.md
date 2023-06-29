This profile identifies the additional constraints, extensions, and value sets that build on and extend [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) that are supported. 

Where a more specific DocumentReference profile is applicable, e.g. advance care plan , an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core DocumentReference standard for:
* Query for a generic document reference for a patient
* Record or update a generic document reference belonging to a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
None.


### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html),
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html),
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html),
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), and
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).

These profiles build on this profile ([ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html)) to define specific document compositions:
* [ADHA Advance Care Planning Document DocumentReference](StructureDefinition-dh-documentreference-acp-1.html).
* [ADHA Diagnostic Report DocumentReference](StructureDefinition-dh-documentreference-dr-1.html).
