This profile identifies the additional constraints, extensions, and value sets that build on and extend [Medication](http://hl7.org/fhir/R4/medication.html) that are supported. 

A [Medication](http://hl7.org/fhir/R4/medication.html) resource is used within the context of a referencing resource: [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html), [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html), [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html), or [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) resource. 

This profile is designed to set a core Medication standard in the context of:
* Querying medications referenced by another resource
* Recording or updating a medication referenced by another resource
* Reading medications referenced by another resource

Operations on Medication resources are expected to be within the context of an ExplanationOfBenefit, Flag, MedicationAdministration, MedicationDipsense, MedicationRequest or MedicationStatement resource query.

This profile may be referred to by APIs, which will be listed here when available.

### Profile specific guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance on constructing a resource and the use of medicines terminology.
- Manufacturer information will commonly be exchanged as a PBS code, this information can be represented as an external resource of by using `Medication.manufacturer.identifier` to carry the PBS code and `Medication.manufacturer.display` to carry the name of the manufacturer.
