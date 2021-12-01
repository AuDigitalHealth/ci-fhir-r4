#### Australian Digital Health Agency Core Substance
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
* where Medication.code is a branded medicine item, Medication.code.text is the branded name
* ingredient.item[x] is sent as itemCodeableConcept

The guidance below clarifies the representation of medicine information where Medication.code is not supplied:
* if both brand name and generic name can be sent, brand name will be sent in Medication.code.text and optionally in brand name extension, and generic name will be sent in the generic name extension
* if only brand name can be sent, brand name will be sent in Medication.code.text and optionally in the brand name extension
* if only generic name can be sent, generic name will be sent in Medication.code.text and optionally in the generic name extension
* if a name can be sent, but it cannot be determined if it is a brand or generic name, the name will be sent only in Medication.code.text

#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Medication](StructureDefinition-dh-medication-core-1.html),
[ADHA Core MedicationAdministration](StructureDefinition-dh-medicationadministration-core-1.html),
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-1.html),
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-1.html), and 
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html).