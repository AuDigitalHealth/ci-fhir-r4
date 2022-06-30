#### ADHA Core Encounter
The purpose of this profile is to provide a core representation of an encounter for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Encounter](http://hl7.org/fhir/R4/encounter.html) that are supported. 

This profile is designed to set a core Encounter standard for:
* Query for a patient's encounters
* Query for records associated with a specific patient encounter
* Record or update an encounter and records associated with an encounter

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)

#### Profile specific guidance TBD
- `Encounter.type` supports categorisation and provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. 
- In an exchange with the My Health Record system `Encounter.status` is "finished"
- The Encounter resource can represent a reason using either a code with `Encounter.reasonCode`, or a reference with `Encounter.reasonReference` to a Condition or other resource.
  - Although both are marked as must support, sending systems are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A receiving or persisting system **SHALL** support both elements


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Australian Immunisation Register Notice](StructureDefinition-dh-flag-air-1.html), 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html), 
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), and 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html), 
[ADHA MBS Service Claim Item](StructureDefinition-dh-servicerequest-mbs-claim-1.html). 

