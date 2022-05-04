#### Australian Digital Health Agency Core Medication
The purpose of this profile is to provide a core representation of a medication for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Medication](http://hl7.org/fhir/R4/medication.html) that are supported. 

A [Medication](http://hl7.org/fhir/R4/medication.html) resource is used within the context of a referencing resource: [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html), [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html), [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html), or [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) resource. 

This profile is designed to set a core Medication standard in the context of:
* Querying medications referenced in MedicationAdministration resources
* Recording or updating a medication referenced by a MedicationAdministration resource
* Querying medications referenced in MedicationDispense resources
* Recording or updating a medication referenced by a MedicationDispense resource
* Querying medications referenced in MedicationRequest resources
* Recording or updating a medication referenced by a MedicationRequest resource
* Querying medications referenced in MedicationStatement resources
* Recording or updating a medication referenced by a MedicationStatement resource

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)

#### Guidance
The following guidance applies:
TBD

#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Core Medication](StructureDefinition-dh-medication-core-1.html),
[ADHA Core MedicationAdministration](StructureDefinition-dh-medicationadministration-core-1.html),
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-1.html),
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-1.html), and 
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html).