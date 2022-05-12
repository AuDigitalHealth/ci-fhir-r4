#### ADHA Medicare Overview
The purpose of this profile is to define a representation of a Medicare Overview document for an individual for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. A composition is a set of resources composed into a single coherent clinical statement that may have clinical attestation.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

This profile supports the equivalent of a HL7 CDA instance with a Level 2, Level 3A or 3B clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* Query for a Medicare Overview document for a patient
* Record or update a Medicare Overview document for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
* A narrative only Medicare Overview (Level 2) is supplied by populating section.text for each section but not populating any section.entry or section.emptyReason
* A structured Medicare Overview (Level 3A or 3B) is supplied by populating section.entry or section.emptyReason for each section


#### Boundaries and relationships
This profile is referenced by 
[ADHA CapabilityStatement TBD](StructureDefinition-dh-TBD-core-1.html), and 
[ADHA CapabilityStatement TBD](StructureDefinition-dh-TBD-core-1.html).
