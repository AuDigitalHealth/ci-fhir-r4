#### ADHA Core AllergyIntolerance
The purpose of this profile is to provide a core representation of an allergy or intolerance for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a summary statement relating to an allergy or intolerance including asserting negation for a specific allergy or intolerance, a category, or that a patient has no known allergies or intolerances.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html) that are supported. 

This profile is designed to set a core AllergyIntolerance standard for:
* Query for a patient's allergies or intolerances
* Record or update an allergy or intolerance for a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
* verificationStatus is 'unconfirmed' where a sending system does not clearly have this element or 'confirmed' depending on the level of certainty
* where a sending system can state that a patient does not have an allergy or category of allergies, an appropriate negation code (e.g. 716186003 \|No known allergy\| or 716184000 \|No known latex allergy\|) will be sent in AllergyIntolerance.code
* refutation is not expected to be handled except as above - an appropriate negation code in AllergyIntolerance.code and clinicalStatus of 'confirmed'
* where a sending system only has a substance available (e.g. 111088007 \|Latex\|) and not a statement of allergy or intolerance (e.g. 300916003 \|Allergy to latex\|), the substance will be sent in AllergyIntolerance.code and optionally in reaction.substance


#### Boundaries and relationships
This profile is referenced by 
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html), and
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html).