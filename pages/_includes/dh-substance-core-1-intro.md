#### Australian Digital Health Agency Core Substance
The purpose of this profile is to provide a core representation of a substance for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Substance](http://hl7.org/fhir/R4/substance.html) that are supported. 

A [Substance](http://hl7.org/fhir/R4/substance.html) resource is used within the context of a referencing resource: [Medication](http://hl7.org/fhir/R4/medication.html) or [Substance](http://hl7.org/fhir/R4/substance.html) resource. 

This profile is designed to set a core Substance standard in the context of:
* Querying substances referenced in Medication resources
* Recording or updating a substance referenced by a Medication resource

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)

#### Implementation guidance
The following guidance applies:
* TBD

#### Boundaries and relationships
This profile is referenced by 
[Australian Digital Health Agency Core Medication](StructureDefinition-dh-medication-core-1.html), and 
[Australian Digital Health Agency Core Substance](StructureDefinition-dh-substance-core-1.html).