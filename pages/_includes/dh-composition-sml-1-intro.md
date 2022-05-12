#### ADHA Shared Medicines List Composition
The purpose of this profile is to define a document representation of a Shared Medicines List document that describes a patient's medicine item use at a point in time for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. A composition is a set of resources composed into a single coherent clinical statement that may have clinical attestation.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

This profile supports the equivalent of a HL7 CDA instance conformance Level 3A or 3B clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* Query for a Shared Medicines List document for a patient
* Record of update a Shared Medicines List document for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  

These profiles build on this profile ([ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html)) to define specific document compositions:
* [ADHA Pharmacist Shared Medicines List Composition](StructureDefinition-dh-composition-psml-1.html)
