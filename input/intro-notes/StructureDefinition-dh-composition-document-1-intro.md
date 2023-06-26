The purpose of this profile is to provide a document composition for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. A composition is a set of resources composed into a single coherent clinical statement that may have clinical attestation.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

Where a more specific document Composition profile is applicable, e.g. shared health summary, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile supports the equivalent of all HL7 CDA conformance levels for a clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* exchanging a FHIR Document
* Query for a document for a patient
* Record or update a document record for a patient


### Profile specific guidance
None.


### Boundaries and relationships
This profile is referenced by 
[ADHA Document Bundle](StructureDefinition-dh-bundle-document-1.html).

These profiles build on this profile ([ADHA Document Composition](StructureDefinition-dh-composition-document-1.html)) to define specific document compositions:
* [ADHA Advance Care Directive Custodian Record Composition](StructureDefinition-dh-composition-acdcr-1.html) 
* [ADHA Advance Care Planning Composition](StructureDefinition-dh-composition-acp-1.html) 
* [ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html)
* [ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html)
* [ADHA Diagnostic Report Composition](StructureDefinition-dh-composition-dr-1.html)
* [ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html) 
* [ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html) 
* [ADHA Event Summary Narrative](StructureDefinition-dh-composition-es-narrative-1.html) 
* [ADHA Medicare Overview Composition](StructureDefinition-dh-composition-mov-1.html) 
* [ADHA National Cancer Screening Program Participation View](StructureDefinition-dh-composition-ncspv-1.html) 
* [ADHA Personal Health Notes Composition](StructureDefinition-dh-composition-phn-1.html) 
* [ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html) 
* [ADHA Personal Observations Composition](StructureDefinition-dh-composition-po-1.html) 
* [ADHA Prescription and or Dispense History Composition](StructureDefinition-dh-composition-pdl-1.html)
* [ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html)
* [ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html)