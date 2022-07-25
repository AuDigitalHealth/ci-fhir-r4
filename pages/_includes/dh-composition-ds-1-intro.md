The purpose of this profile is to define a representation of an Discharge Summary document for a patient for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile standardises the core, common or critical information for exchange of information between healthcare providers, and individual, to support continuity of care following discharge. A composition is a set of resources composed into a single coherent clinical statement that may have clinical attestation.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

This profile supports the equivalent of a HL7 CDA instance conformance Level 3A or 3B clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* Query for a Discharge Summary for a patient
* Record or update a Discharge Summary for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
None.



#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  

This profile ([ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html)) is a specialised use case profile of an [ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html).

