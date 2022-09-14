The purpose of this profile is to provide a core representation of a patient for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including country of birth, year of arrival and preferred language.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Patient](http://hl7.org/fhir/R4/patient.html) that are supported. 

This profile is designed to set a core Patient standard for:
* Querying for records associated with a patient
* Record or update a record associated with a patient


#### Profile specific guidance
- Country of birth is represented using `Patient.extension` [birthPlace extension](http://hl7.org/fhir/R4/extension-patient-birthplace.html)
  - A system may use `address.text` if birth place address is not stored in discrete elements
- See the [Representing communication preferences](guidance.html#representing-communication-preferences) section for guidance
- A patient's biological sex is represented as a separate Observation resource


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core BodyStructure](StructureDefinition-dh-bodystructure-core-1.html), 
[ADHA Organ or Tissue for Donation BodyStructure](StructureDefinition-dh-bodystructure-aodr-1.html), 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Record of Consent from Australian Organ Donor Register](StructureDefinition-dh-consent-aodr-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Record of Claim against MBS or DVA](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html),
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html), 
[ADHA Australian Immunisation Register Notice](StructureDefinition-dh-flag-air-1.html), 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html), 
[ADHA PBS Claim Item](StructureDefinition-dh-medicationrequest-pbs-claim-1.html), 
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), 
[ADHA Authoring RelatedPerson](StructureDefinition-dh-relatedperson-author-1.html), and
[ADHA Core RelatedPerson](StructureDefinition-dh-relatedperson-core-1.html).
 