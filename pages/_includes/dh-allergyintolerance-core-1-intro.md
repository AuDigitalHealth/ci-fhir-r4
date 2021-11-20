#### Australian Digital Health Agency Core AllergyIntolerance
The purpose of this profile is to provide a core representation of an allergy or intolerance for the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia. This profile supports a summary statement relating to an allergy or intolerance including asserting negation for a specific allergy or intolerance, a category, or that a patient has no known allergies or intolerances.

This profile is designed to set a core AllergyIntolerance for:
* Insert ADHA API Endpoint
* Insert ADHA API Endpoint

#### Implementation guidance
The following guidance applies:
* verificationStatus is 'unconfirmed' where a sending system does not clearly have this element or 'confirmed' depending on the level of certainty
* where a sending system can state that a patient does not have an allergy or category of allergies, an appropriate negation code (e.g. 716186003 \|No known allergy\| or 716184000 \|No known latex allergy\|) will be sent in AllergyIntolerance.code
* refutation is not expected to be handled except as above - an appropriate negation code in AllergyIntolerance.code and clinicalStatus of 'confirmed'
* where a sending system only has a substance available (e.g. 111088007 \|Latex\|) and not a statement of allergy or intolerance (e.g. 300916003 \|Allergy to latex\|), the substance will be sent in AllergyIntolerance.code and optionally in reaction.substance

#### Boundaries and relationships
This profile is referenced by 
[Australian Digital Health Agency Core TBD](StructureDefinition-dh-tbd-core-1.html), and 
[Australian Digital Health Agency Core TBD](StructureDefinition-dh-tbd-core-1.html).