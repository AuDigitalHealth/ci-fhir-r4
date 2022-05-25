#### ADHA Core Organization
The purpose of this profile is to define a core representation of an organisation for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Organization](http://hl7.org/fhir/R4/organization.html) that are supported. 

A [Organization](http://hl7.org/fhir/R4/organization.html) resource is used within the context of a referencing resource. In the context of an exchange of health information an organisation is part of the context established for a set of healthcare-related information.

This profile is designed to set a core Organization standard for:
* Recording or updating an organisation referenced by another resource
* Reading organisations referenced by another resource

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Advance Care Directive Custodian Record Composition](StructureDefinition-dh-composition-acdcr-1.html), 
[ADHA Advance Care Planning Composition](StructureDefinition-dh-composition-acp-1.html), 
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
[ADHA Record of Consent from Australian Organ Donor Register](StructureDefinition-dh-consent-aodr-1.html), 
[ADHA Participant Device](StructureDefinition-dh-device-participant-1.html), 
[ADHA System Device](StructureDefinition-dh-device-system-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), 
[ADHA Pathology Report](StructureDefinition-dh-diagnosticreport-path-1.html), 
[ADHA Advance Care Planning Document DocumentReference](StructureDefinition-dh-documentreference-acp-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Record of Claim against MBS](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html), 
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html), 
[ADHA Australian Immunisation Register Notice](StructureDefinition-dh-flag-air-1.html), 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Core HealthcareService](StructureDefinition-dh-healthcareservice-core-1.html), 
[ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Core Location](StructureDefinition-dh-location-core-1.html), 
[ADHA Core Media](StructureDefinition-dh-media-core-1.html), 
[ADHA Core Medication](StructureDefinition-dh-medication-core-1.html), 
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-core-1.html), 
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html), 
[ADHA Core Patient](StructureDefinition-dh-patient-core-1.html), 
[ADHA My Health Record Patient](StructureDefinition-dh-patient-mhr-1.html), 
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA Diagnostic Result Observation](StructureDefinition-dh-observation-diagnosticresult-1.html), 
[ADHA Imaging Result Observation](StructureDefinition-dh-observation-diagnosticresult-imag-1.html),
[ADHA Pathology Result Observation](StructureDefinition-dh-observation-diagnosticresult-path-1.html),
[ADHA National Cancer Screening Program Participation Observation](StructureDefinition-dh-observation-ncspp-1.html), 
[ADHA Simple Observation](StructureDefinition-dh-observation-simple-1.html), 
[ADHA Core Organization](StructureDefinition-dh-organization-core-1.html), 
[ADHA Authoring Care Agency Employee](StructureDefinition-dh-practitionerrole-author-cae-1.html), 
[ADHA Core PractitionerRole](StructureDefinition-dh-practitionerrole-core-1.html), 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html), and
[ADHA MBS Service Claim Item](StructureDefinition-dh-servicerequest-mbs-claim-1.html). 

These profiles build on this profile ([ADHA Core Organization](StructureDefinition-dh-organization-core-1.html)) to define specific roles:
* [ADHA Organization Contact](StructureDefinition-dh-organization-contact-1.html)


 




