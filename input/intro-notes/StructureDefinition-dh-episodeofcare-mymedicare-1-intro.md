This profile identifies the additional constraints, extensions, and value sets that build on and extend [EpisodeOfCare](http://hl7.org/fhir/R4/episodeofcare.html) that are supported. 

This profile is designed to set an EpisodeOfCare standard for:
* Query for a patient's registered GP practice information from MyMedicare
* Reading a patient’s registered GP practice information from MyMedicare 

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- Information about the *GP Practice* is represented with an Organization resource that is referenced in `EpisodeOfCare.managingOrganization` and `Patient.generalPractitioner`
- *Practitioner name* is represented in `Patient.generalPractitioner.display` with `Patient.generalPractitioner.type`="PractitionerRole", see example [Patient's registered GP practice and practitioner name](Bundle-vpr-02.html)
- In an exchange with the My Health Record system the set of resources that make up patient GP practice registration information are collected in a Bundle


### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  

