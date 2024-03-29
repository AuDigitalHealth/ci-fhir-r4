This profile identifies the additional constraints, extensions, and value sets that build on and extend [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) that are supported. 

This profile is designed to set a core MedicationStatement standard in the context of:
* Querying a patient's medications (current and historical)
* Recording or updating a record of a medication the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance.
- MedicationStatement resources can represent a medication using either a code, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource.
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource.

