#### ADHA Core MedicationStatement
The purpose of this profile is to provide a core representation of a statement of medication use for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a summary statement relating to an allergy or intolerance including asserting negation for a specific allergy or intolerance, a category, or that a patient has no known allergies or intolerances.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) that are supported. 

This profile is designed to set a core MedicationStatement standard in the context of:
* Querying a patient's medications (current and historical)
* Recording or updating a record of a medication the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-phs-1.html),
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html),
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html),
[ADHA Core List](StructureDefinition-dh-list-core-1.html),
[ADHA Medication Use List](StructureDefinition-dh-list-medication-use-1.html), and
[ADHA Practitioner Medicine Review List](StructureDefinition-dh-list-medication-use-pmr-1.html).
