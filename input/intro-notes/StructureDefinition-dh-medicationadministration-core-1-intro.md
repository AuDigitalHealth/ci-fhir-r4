The purpose of this profile is to provide a core representation of a medication administration for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html) that are supported. 

This profile is designed to set a core MedicationAdministration standard for:
* Query medications administered for a patient (current and historical)
* Record or update a medication administration record for a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance. 
- MedicationAdministration resources can represent a medication using either a code, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource.
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource.


### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html). 