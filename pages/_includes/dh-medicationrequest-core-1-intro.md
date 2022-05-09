#### ADHA Core MedicationRequest
The purpose of this profile is to provide a core representation of a request for the supply of a medication and the instructions for administration of that medication to a patient for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) that are supported. 

This profile is designed to set a core MedicationRequest standard for:
* Query medication orders or prescriptions for a patient (current and historical)
* Record or update medication orders or prescriptions for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)

#### Profile specific guidance
None.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-core-1.html),  
[ADHA Prescription and or Dispense History List](StructureDefinition-dh-list-medication-pdl-1.html), and 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).

These profiles build on this profile ([ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html)) to define specific immunisation record types:
* [ADHA PBS Prescription Claim Item](StructureDefinition-dh-medicationrequest-pbs-claim-1.html)
