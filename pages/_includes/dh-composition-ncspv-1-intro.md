#### ADHA National Cancer Screening Program Participation View
The purpose of this profile is to define a representation of a National Cancer Screening Program Participation View that describes an individual's participation in one or more national cancer screening programs at a point in time for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Composition](http://hl7.org/fhir/R4/composition.html) that are supported. 

This profile supports the equivalent of a HL7 CDA instance conformance Level 3A or 3B clinical document as defined in the Agency's Common Conformance Profile for Clinical Documents.

This profile is designed to set a Composition standard for:
* Query for a National Cancer Program Participation View for a patient
* Record or update a National Cancer Program Participation View for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- This profile supports a view of the information held about an individual's participation in one or more national cancer screening program at a point in time 
  - it is generated in response to a request if a system holds information about a program for an individual
  - information about each program is a separate Observation in `Composition.section.entry`


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  

