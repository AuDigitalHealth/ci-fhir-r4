The purpose of this profile is to define a core representation of a practitioner acting as an author or observer in a healthcare role, on behalf of an organisation, that is for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.
In the context of an exchange of health information a practitioner role is part of the context established for a set of healthcare-related information.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html) that are supported. 

A [PractitionerRole](http://hl7.org/fhir/R4/organization.html) resource is used within the context of a referencing resource. 

This profile is designed to set a PractitionerRole standard for:
* Recording or updating an authoring practitioner role referenced by another resource
* Reading authoring practitioner roles referenced by another resource

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core AllergyIntolerance](StructureDefinition-dh-allergyintolerance-core-1.html), 
[ADHA Advance Care Custodian Record Composition](StructureDefinition-dh-composition-acdc-1.html), 
[ADHA Advance Care Planning Composition](StructureDefinition-dh-composition-acp-1.html), 
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html), 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Core Composition](StructureDefinition-dh-composition-core-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Document Composition](StructureDefinition-dh-composition-document-1.html), 
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
[ADHA Prescription and or Dispense History Composition](StructureDefinition-dh-composition-pdl-1.html), 
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html), 
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html), 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), 
[ADHA Pathology Report](StructureDefinition-dh-diagnosticreport-path-1.html), 
[ADHA Advance Care Planning Document DocumentReference](StructureDefinition-dh-documentreference-acp-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Core List](StructureDefinition-dh-list-core-1.html), 
[ADHA Immunisation History List](StructureDefinition-dh-list-immunization-1.html), 
[ADHA Medication Use List](StructureDefinition-dh-list-medication-use-1.html), 
[ADHA Practitioner Medicine Review List](StructureDefinition-dh-list-medication-use-pmr-1.html), 
[ADHA Prescription and or Dispense History List](StructureDefinition-dh-list-medication-use-1.html), 
[ADHA Core MedicationAdministration](StructureDefinition-dh-medicationadministration-core-1.html), 
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-core-1.html), 
[ADHA Dispense Record](StructureDefinition-dh-medicationdispense-disp-1.html),
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html), 
[ADHA Prescription](StructureDefinition-dh-medicationrequest-pres-1.html), and 
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html), 
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA Simple Observation](StructureDefinition-dh-observation-simple-1.html), 
[ADHA Core Patient](StructureDefinition-dh-patient-core-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html),  
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html), 
[ADHA MBS Service Claim Item](StructureDefinition-dh-servicerequest-mbs-claim-1.html), and
[MODI Request for Diagnostic Imaging Service](StructureDefinition-dh-servicerequest-modi-1.html). 

These profiles build on this profile ([ADHA Authoring PractitionerRole](StructureDefinition-dh-practitionerrole-author-1.html)) to define specific roles:
* [ADHA Authoring Care Agency Employee](StructureDefinition-dh-practitionerrole-author-cae-1.html)
