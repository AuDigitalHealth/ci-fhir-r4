#### Australian Digital Health Agency Document Composition
The purpose of this profile is to provide a document composition for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. A composition is a set of resources composed into a single coherent clinical statement that may have clinical attestation.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

Where a more specific document composition profile is applicable, e.g. shared health summary or personal health notes, an implementation **SHALL** ensure the Resource conforms to that specific profile.

This profile supports the equivalent of all HL7 CDA conformance levels for a clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* exchanging a FHIR Document
* Query for a document for a patient
* Record or update a document record for a patient

#### Boundaries and relationships
This profile is referenced by 
[ADHA Document Bundle](StructureDefinition-dh-bundle-document-1.html), and
[ADHA Document Composition](StructureDefinition-dh-composition-document-1.html).

These profiles build on this profile ([ADHA Document Composition](StructureDefinition-dh-composition-document-1.html)) to define specific document compositions:
* [ADHA Advance Care Directive Custodian Record Document Composition](StructureDefinition-dh-composition-acdcr-1.html) 
* [ADHA Advance Care Planning Document Composition](StructureDefinition-dh-composition-acp-1.html) 
* [ADHA Event Summary Document Composition](StructureDefinition-dh-composition-es-1.html) 
* [ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html) 
* [ADHA Event Summary Narrative](StructureDefinition-dh-composition-es-narrative-1.html) 
* [ADHA Person Health Notes Document Composition](StructureDefinition-dh-composition-phn-1.html) 
* [ADHA Person Health Summary Document Composition](StructureDefinition-dh-composition-phs-1.html) 
* [ADHA Shared Health Summary Document Composition](StructureDefinition-dh-composition-shs-1.html)