#### ADHA Patient Demographics
The purpose of this profile is to provide a representation of a patient's demographics to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia. This profile supports Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including country of birth, year of arrival and preferred language.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Patient](http://hl7.org/fhir/R4/patient.html) that are supported. 

This profile is designed to set a Patient standard for:
* Query for Patient demographic information

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- Country of birth is represented using `Patient.extension` [birthPlace extension](http://hl7.org/fhir/StructureDefinition/patient-birthPlace)
  - A sytem may use `address.text` if they birth place address is not stored in discrete elements
- See the [Representing communication preferences](guidance.html#representing-communication-preferences) section for guidance
- A patient's biological sex is a separate Observation resource, e.g. biological sex assigned at birth conforms to [AU Sex Assigned At Birth](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-sexassignedatbirth.html)


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  

