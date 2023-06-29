This profile supports the Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including country of birth, year of arrival and preferred language.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Patient](http://hl7.org/fhir/R4/patient.html) that are supported. 

This profile is designed to set a core Patient standard for:
* Querying for records associated with a patient
* Record or update a record associated with a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- Country of birth is represented using `Patient.extension` [birthPlace extension](http://hl7.org/fhir/R4/extension-patient-birthplace.html)
  - A system may use `address.text` if birth place address is not stored in discrete elements
- See the [Representing communication preferences](guidance.html#representing-communication-preferences) section for guidance
- A patient's biological sex is a separate Observation resource, e.g. biological sex assigned at birth conforms to [AU Core Biological Sex Assigned at Birth](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-sexassignedatbirth.html).


### Boundaries and relationships
These profiles build on this profile ([ADHA Core Patient](StructureDefinition-dh-patient-core-1.html)) to define specific roles:
* [ADHA MHR Patient](StructureDefinition-dh-patient-mhr-1.html)