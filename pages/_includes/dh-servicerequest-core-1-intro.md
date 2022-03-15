#### Australian Digital Health Agency Core ServiceRequest
The purpose of this profile is to provide a core representation of a record of request for a service for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [ServiceRequest](http://hl7.org/fhir/R4/list.html) that are supported. 

This profile is designed to set a core ServiceRequest standard for:
* Query for a request for a service associated with a patient
* Record or update a request for a service associated with a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Guidance
The following guidance applies:
* TBD


#### Boundaries and relationships
This profile is referenced by 
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), 
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html),  
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html), and 
[ADHA Core Specimen](StructureDefinition-dh-specimen-core-1.html).

These profiles build on this profile ([ADHA Core ServiceRequest](StructureDefinition-dh-list-core-1.html)) to define specific service requests:
* [ADHA MBS Service Claim Item](StructureDefinition-dh-servicerequest-mbs-claim-1.html)

