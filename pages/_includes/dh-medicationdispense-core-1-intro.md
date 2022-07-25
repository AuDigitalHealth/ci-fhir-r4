The purpose of this profile is to provide a core representation of a dispense of a medication for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) that are supported. 

Where a more specific MedicationDispense profile is applicable, e.g. dispense record, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core MedicationDispense standard for:
* Query medications dispensed or intended to be dispensed for a patient
* Record or update a record of dispense intended or completed for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance 
- MedicationDispense resources can represent a medication using either a code, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html).

These profiles build on this profile ([ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-core-1.html)) to define specific roles:
* [ADHA Dispense Record](StructureDefinition-dh-medicationdispense-disp-1.html)
