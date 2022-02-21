#### Australian Digital Health Agency Prescription and or Dispense History Composition
The purpose of this profile is to define a representation of a Prescription and or Dispense History document that describes a patient's prescription history, or dispense history, or both, at a point in time the for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. The list may be partial, or complete, and may be a full history or scoped to an active script list. A composition is a set of resources composed into a single coherent clinical statement that may have clinical attestation.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

This profile supports the equivalent of a HL7 CDA instance conformance Level 3A or 3B clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* Query for a Prescription History document for a patient
* Query for a Dispense History document for a patient
* Query for a combined Prescription and Dispense History document for a patient
* Record or update a Prescription History document for a patient
* Record or update a Dispense History document for a patient
* Record or update a Prescription and Dispense History document for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Boundaries and relationships
This profile is referenced by 
[ADHA CapabilityStatement TBD](StructureDefinition-dh-TBD-core-1.html), and 
[ADHA CapabilityStatement TBD](StructureDefinition-dh-TBD-core-1.html).