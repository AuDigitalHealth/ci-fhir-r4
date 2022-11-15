The purpose of this profile is to define a representation of GP practice registration information for a patient from MyGP for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [EpisodeOfCare](http://hl7.org/fhir/R4/episodeofcare.html) that are supported. 

This profile is designed to set an EpisodeOfCare standard for:
* Query for a patient's registered GP practice information from MyGP
* Reading a patient’s registered GP practice information from MyGP

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- Information about the *GP Practice* is represented with an Organization resource that is referenced in `EpisodeOfCare.managingOrganization` and `Patient.generalPractitioner`
- *Practitioner name* is represented in `Patient.generalPractitioner.display` with `Patient.generalPractitioner.type`="PractitionerRole", see example [Patient's registered GP practice and practitioner name](Bundle-vpr-02.html)


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  

