The purpose of this profile is to provide a core representation of a request for the supply of a medication and the instructions for administration of that medication to a patient for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) that are supported. 

Where a more specific MedicationRequest profile is applicable, e.g. prescription, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core MedicationRequest standard for:
* Query medication orders or prescriptions for a patient (current and historical)
* Record or update medication orders or prescriptions for a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance.
- MedicationRequest resources can represent a medication using either a code, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource.
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource.


### Boundaries and relationships
These profiles build on this profile ([ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html)) to define specific roles:
* [ADHA Prescription](StructureDefinition-dh-medicationrequest-pres-1.html)