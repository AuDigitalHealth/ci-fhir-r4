This profile identifies the additional constraints, extensions, and value sets that build on and extend [AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html) that are supported. 

This profile is designed to set a core AllergyIntolerance standard for:
* Query for a patient's allergies or intolerances
* Record or update an allergy or intolerance for a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `AllergyIntolerance.verificationStatus` is "unconfirmed" where a sending system does not clearly have this element or "confirmed" depending on the level of certainty.
- To represent that a patient does not have an allergy or category of allergies, an appropriate negation code (e.g. 716186003 \|No known allergy\| or 716184000 \|No known latex allergy\|) is used in `AllergyIntolerance.code`.
- Refutation is not expected to be handled except as above - an appropriate negation code in `AllergyIntolerance.code` and `AllergyIntolerance.clinicalStatus` of "confirmed" or "unconfirmed".
- Where only substance is known (e.g. 111088007 \|Latex\|) and not a statement of allergy or intolerance (e.g. 300916003 \|Allergy to latex\|), the substance will be sent in `AllergyIntolerance.code` and optionally in `AllergyIntolerance.reaction.substance`.



