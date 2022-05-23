#### ADHA Core Composition
The purpose of this profile is to provide a core representation of a composition for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. A composition is a set of resources composed into a single coherent clinical statement.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

Where a more specific document composition profile is applicable an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core Composition standard for:
* exchanging a clinical statement 
* Query for a clinical statement for a patient
* Record or update a clinical statement record for a patient


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html),
[ADHA Advance Care Directive Custodian Record Composition](StructureDefinition-dh-composition-acdcr-1.html), 
[ADHA Advance Care Planning Composition](StructureDefinition-dh-composition-acp-1.html),
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html),
[ADHA Core Composition](StructureDefinition-dh-composition-core-1.html.html), 
[ADHA Document Composition](StructureDefinition-dh-composition-document-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html), 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), 
[ADHA Event Summary Narrative](StructureDefinition-dh-composition-es-narrative-1.html), 
[ADHA Medicare Overview](StructureDefinition-dh-composition-mov-1.html), 
[ADHA National Cancer Screening Program Participation View](StructureDefinition-dh-composition-ncspv-1.html), 
[ADHA Prescription and or Dispense History Composition](StructureDefinition-dh-composition-pdl-1.html), 
[ADHA Personal Health Notes Composition](StructureDefinition-dh-composition-phn-1.html), 
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html), 
[ADHA Personal Observations Composition](StructureDefinition-dh-composition-po-1.html), 
[ADHA Pharmacist Shared Medicines List Composition](StructureDefinition-dh-composition-psml-1.html), 
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html), and
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html).

These profiles build on this profile ([ADHA Core Composition](StructureDefinition-dh-composition-core-1.html)) to define specific document compositions:
* [ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html)