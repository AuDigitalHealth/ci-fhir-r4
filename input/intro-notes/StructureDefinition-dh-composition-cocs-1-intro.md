The purpose of this profile is to define a representation of a Continuity of Care Summary Document for a patient for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile standardises the core, common or critical information for exchange of information between healthcare providers, and individual, to support continuity of care across encounters and healthcare settings. Specific use cases are supported by defined profiles for those use cases such as Shared Health Summary, Event Summary, Discharge Summary, Transfer Summary, Referral; where available the most specific applicable profile should be used. A composition is a set of resources composed into a single coherent clinical statement that may have clinical attestation.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

Where a more specific Composition profile is applicable, e.g. shared health summary, event summary, discharge summary, or transfer summary, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile supports the equivalent of all HL7 CDA conformance levels for a clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* exchanging a FHIR Continuity of Care Summary Document
* Query for a Continuity of Care Summary document for a patient
* Record or update a Continuity of Care Summary document record for a patient


### Boundaries and relationships
The following profiles are specialised use case profiles of a continuity of care summary document:
* [ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html)
* [ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html)
* [ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html) 
* [ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html) 
* [ADHA Event Summary Narrative](StructureDefinition-dh-composition-es-narrative-1.html) 
* [ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html)
