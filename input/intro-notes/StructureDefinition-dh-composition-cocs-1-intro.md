This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

Where a more specific Composition profile is applicable, e.g. shared health summary, event summary, discharge summary, or transfer summary, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile supports the equivalent of all HL7 CDA conformance levels for a clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* exchanging a FHIR Continuity of Care Summary Document
* Query for a Continuity of Care Summary document for a patient
* Record or update a Continuity of Care Summary document record for a patient

