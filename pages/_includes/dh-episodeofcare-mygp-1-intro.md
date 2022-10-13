The purpose of this profile is to define a representation of GP practice registration information for a patient from MyGP for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a current entry or a historical entry.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [EpisodeOfCare](http://hl7.org/fhir/R4/episodeofcare.html) that are supported. 

This profile is designed to set an EpisodeOfCare standard for:
* Query for a patient's registered GP Practice information from MyGP

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- This profile supports exchange of current and historical patient GP practice registration information.
  - *current* is represented with status `active` and only period.start sent, see example [Patient's registered GP practice](Bundle-vpr-01.html)
  - *historial* is represented with status `finished`, and both period.start and period.end, see example [History of patient's registered GP practices](Bundle-vpr-03.html)


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  

