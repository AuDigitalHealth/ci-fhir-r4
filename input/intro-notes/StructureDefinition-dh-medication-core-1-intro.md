The purpose of this profile is to provide a core representation of a medication for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Medication](http://hl7.org/fhir/R4/medication.html) that are supported. 

A [Medication](http://hl7.org/fhir/R4/medication.html) resource is used within the context of a referencing resource: [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html), [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html), [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html), or [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) resource. 

This profile is designed to set a core Medication standard in the context of:
* Querying medications referenced by another resource
* Recording or updating a medication referenced by another resource
* Reading medications referenced by another resource

Operations on Medication resources are expected to be within the context of an ExplanationOfBenefit, Flag, MedicationAdministration, MedicationDipsense, MedicationRequest or MedicationStatement resource query.

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


### Profile specific guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance on constructing a resource and the use of medicines terminology.
- Manufacturer information will commonly be exchanged as a PBS code, this information can be represented as an external resource of by using `Medication.manufacturer.identifier` to carry the PBS code and `Medication.manufacturer.display` to carry the name of the manufacturer.


### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Core MedicationAdministration](StructureDefinition-dh-medicationadministration-core-1.html),
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-core-1.html), 
[ADHA Dispense Record](StructureDefinition-dh-medicationdispense-disp-1.html),
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html), 
[ADHA PBS Prescription Claim Item](StructureDefinition-dh-medicationrequest-pbs-claim-1.html), 
[ADHA Prescription](StructureDefinition-dh-medicationrequest-pres-1.html), and 
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html).