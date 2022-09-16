The purpose of this profile is to provide a core representation of a patient for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including country of birth, year of arrival and preferred language.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Patient](http://hl7.org/fhir/R4/patient.html) that are supported. 

This profile is designed to set a core Patient standard for:
* Querying for records associated with a patient
* Record or update a record associated with a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- Country of birth is represented using `Patient.extension` [birthPlace extension](http://hl7.org/fhir/StructureDefinition/patient-birthPlace).
  - A system may use `address.text` if birth place address is not stored in discrete elements.
- See the [Representing communication preferences](guidance.html#representing-communication-preferences) section for guidance.
- A patient's biological sex is a separate Observation resource, e.g. biological sex assigned at birth conforms to [AU Core Biological Sex Assigned at Birth](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-sexassignedatbirth.html).


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core AllergyIntolerance](StructureDefinition-dh-allergyintolerance-core-1.html), 
[ADHA Core BodyStructure](StructureDefinition-dh-bodystructure-core-1.html), 
[ADHA Organ or Tissue for Donation BodyStructure](StructureDefinition-dh-bodystructure-aodr-1.html), 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Document Bundle](StructureDefinition-dh-bundle-document-1.html), 
[ADHA Message Bundle](StructureDefinition-dh-bundle-message-1.html), 
[ADHA Advance Care Custodian Record Composition](StructureDefinition-dh-composition-acdcr-1.html), 
[ADHA Advance Care Planning Composition](StructureDefinition-dh-composition-acp-1.html), 
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html), 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Core Composition](StructureDefinition-dh-composition-core-1.html), 
[ADHA Document Composition](StructureDefinition-dh-composition-document-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html), 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), 
[ADHA Event Summary Narrative](StructureDefinition-dh-composition-es-narrative-1.html), 
[ADHA Medicare Overview Composition](StructureDefinition-dh-composition-mov-1.html), 
[ADHA National Cancer Screening Program Participation View](StructureDefinition-dh-composition-ncspv-1.html), 
[ADHA Prescription and or Dispense History Composition](StructureDefinition-dh-composition-pdl-1.html), 
[ADHA Personal Health Notes Composition](StructureDefinition-dh-composition-phn-1.html), 
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html), 
[ADHA Personal Observations Composition](StructureDefinition-dh-composition-po-1.html), 
[ADHA Pharmacist Shared Medicines List Composition](StructureDefinition-dh-composition-psml-1.html), 
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html), 
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html), 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Record of Consent from Australian Organ Donor Register](StructureDefinition-dh-consent-aodr-1.html), 
[ADHA Implantable Medical Device](StructureDefinition-dh-device-implantable-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), 
[ADHA Pathology Report](StructureDefinition-dh-diagnosticreport-path-1.html), 
[ADHA Advance Care Planning Document DocumentReference](StructureDefinition-dh-documentreference-acp-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Record of Claim against MBS or DVA](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html), 
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html), 
[ADHA Australian Immunisation Register Notice](StructureDefinition-dh-flag-air-1.html), 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Core List](StructureDefinition-dh-list-core-1.html), 
[ADHA Immunisation History List](StructureDefinition-dh-list-immunization-1.html), 
[ADHA Prescription and or Dispense History List](StructureDefinition-dh-list-medication-pdl-1.html), 
[ADHA Medication Use List](StructureDefinition-dh-list-medication-use-1.html), 
[ADHA Practitioner Medicine Review List](StructureDefinition-dh-list-medication-use-pmr-1.html), 
[ADHA Prescription List](StructureDefinition-dh-list-pres-1.html), 
[ADHA Core Media](StructureDefinition-dh-media-core-1.html), 
[ADHA Core MedicationAdministration](StructureDefinition-dh-medicationadministration-core-1.html), 
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-core-1.html), 
[ADHA Dispense Record](StructureDefinition-dh-medicationdispense-disp-1.html),
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html), 
[ADHA PBS Claim Item](StructureDefinition-dh-medicationrequest-pbs-claim-1.html), 
[ADHA Prescription](StructureDefinition-dh-medicationrequest-pres-1.html),  
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html), 
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA Diagnostic Result Observation](StructureDefinition-dh-observation-diagnosticresult-1.html), 
[ADHA Imaging Result Observation](StructureDefinition-dh-observation-diagnosticresult-imag-1.html),
[ADHA Pathology Result Observation](StructureDefinition-dh-observation-diagnosticresult-path-1.html),
[ADHA National Cancer Screening Program Participation Observation](StructureDefinition-dh-observation-ncspp-1.html), 
[ADHA Simple Observation](StructureDefinition-dh-observation-simple-1.html), 
[ADHA Patient Demographics](StructureDefinition-dh-patient-demographics-1.html), 
[ADHA Authoring PractitionerRole](StructureDefinition-dh-practitionerrole-author-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), 
[ADHA Authoring RelatedPerson](StructureDefinition-dh-relatedperson-author-1.html), 
[ADHA Core RelatedPerson](StructureDefinition-dh-relatedperson-core-1.html), 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html), 
[MODI Request for Diagnostic Imaging Service](StructureDefinition-dh-servicerequest-modi-1.html), and 
[ADHA Core Specimen](StructureDefinition-dh-specimen-core-1.html).
 
These profiles build on this profile ([ADHA Core Patient](StructureDefinition-dh-patient-core-1.html)) to define specific roles:
* [ADHA MHR Patient](StructureDefinition-dh-patient-mhr-1.html)