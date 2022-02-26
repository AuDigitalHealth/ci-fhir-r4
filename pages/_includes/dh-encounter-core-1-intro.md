#### Australian Digital Health Agency Core Encounter
The purpose of this profile is to provide a core representation of an encounter for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a statement of the administration or non-administration of a vaccine.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Encounter](http://hl7.org/fhir/R4/encounter.html) that are supported. 

This profile is designed to set a PractitionerRole standard for:
* Query for a specific patient encounter
* Query for records associated with a specific patient encounter
* Record or update an encounter and records associated with an encounter

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)

#### Guidance
The following guidance applies:
* status will be 'finished' 
* type will support categorisation of the event from which the medicines list was generated, for example a code indicating a home medicines review
* period is equal to, or prior to, any referencing Composition or List date

#### Boundaries and relationships
This profile is referenced by 
[ADHA Core AllergyIntolerance](StructureDefinition-dh-allergyintolerance-core-1.html), 
[ADHA Core Composition](StructureDefinition-dh-composition-core-1.html), 
[ADHA Document Bundle](StructureDefinition-dh-bundle-document-1.html), 
[ADHA Document Composition](StructureDefinition-dh-composition-document-1.html),
[ADHA Advance Care Custodian Record Composition](StructureDefinition-dh-composition-document-1.html),
[ADHA Advance Care Planning Composition](StructureDefinition-dh-composition-document-1.html),
[ADHA Event Summary Composition](StructureDefinition-dh-composition-es-1.html) 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), 
[ADHA Event Summary Narrative](StructureDefinition-dh-composition-es-narrative-1.html), 
[ADHA Pharmacist Shared Medicines List Composition](StructureDefinition-dh-composition-psml-1.html),
[ADHA Prescription and or Dispense History Composition](StructureDefinition-dh-composition-pdl-1.html),[ADHA Pharmacist Shared Medicines List Composition](StructureDefinition-dh-composition-psml-1.html),
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html),
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Advance Care Planning DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html),
[ADHA Core List](StructureDefinition-dh-list-core-1.html),
[ADHA Medication Use List](StructureDefinition-dh-list-medication-use-1.html),
[ADHA Practitioner Medicine Review List](StructureDefinition-dh-list-medication-use-pmr-1.html),
[ADHA Immunisation History List](StructureDefinition-dh-list-immunization-1.html),
[ADHA Prescription and or Dispense History List](StructureDefinition-dh-list-pdl-1.html),
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-1.html),
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-1.html), 
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html),
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA Simple Observation](StructureDefinition-dh-observation-simple-1.html), and
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html). 

