#### Australian Digital Health Agency Core Substance
The purpose of this profile is to provide a core representation of a substance for the electronic exchange of digital health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Medication](http://hl7.org/fhir/R4/medication.html) that are supported. 

This profile is designed to set a core BodyStructure for:
* Insert ADHA API Endpoint
* Insert ADHA API Endpoint

#### Guidance
The following guidance applies:
* status is not sent
* Medication.code is a member of the [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) value set
* where Medication.code is a branded medicine item, Medication.code.text is the branded name
* ingredient.item[x] is sent as itemCodeableConcept

Where a sending system cannot send a coded value (only Medication.code.text can be supplied) it is expected that:

* if both brand name and generic name can be sent, brand name will be sent in Medication.code.text and optionally in brand name extension, and generic name will be sent in the generic name extension
* if only brand name can be sent, brand name will be sent in Medication.code.text and optionally in the brand name extension
* if only generic name can be sent, generic name will be sent in Medication.code.text and optionally in the generic name extension
* if a name can be sent, but it cannot be determined if it is a brand or generic name, the name will be sent only in Medication.code.text

Additionally, when sent to the My Health Record system:
* Medication.code is sent with additional codes that are members of the PBS Item code system ([http://pbs.gov.au/code/item](http://pbs.gov.au/code/item))
* Each medication is sent with the active ingredient(s) or brand name, or both

#### Boundaries and relationships
This profile is referenced by 
[Australian Digital Health Agency Core TBD](StructureDefinition-dh-TBD-core-1.html), and 
[Australian Digital Health Agency Core TBD](StructureDefinition-dh-TBD-core-1.html).