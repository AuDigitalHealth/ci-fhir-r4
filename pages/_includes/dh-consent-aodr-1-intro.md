#### ADHA Record of Consent from Australian Organ Donor Register
The purpose of this profile is to define a representation of a record of organ and tissue donation decision held by the Australian Organ Donor Register for the electronic exchange of digital health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Consent](http://hl7.org/fhir/R4/consent.html) that are supported. 

This profile is designed to set a Consent standard for:
* Query for a record of a record of consent from the Australian Organ Donor Register associated with a patient
* Record or update a record of consent from the Australian Organ Donor Register associated with a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
* An individual's *decision not to be a donor* is represented as `Consent.provision.type` = "deny", see example [Australian Organ Donor Register Consent - Not willing to be a donor](Consent-aodr-01.html)
* An individual's *decision to be a donor* is represented as `Consent.provision.type` = "permit" and the resource **SHALL** include the full set of child provisions representing the individual's decision with respect to each potential organ and/or tissue for transplantation:
  - the set of potential organ and/or tissue for transplantation is defined by the [Organ Donation Body Site value set](https://healthterminologies.gov.au/fhir/ValueSet/organ-donation-body-site-1)
  - a decision to *donate all* is represented as instantiating each specific provisions `Consent.provision.provision` with `Consent.provision.provision.type` = "permit", see example [Australian Organ Donor Register Consent - Willing to be a donor, donate all](Consent-aodr-02.html)
  - a decision to *donate certain organs and/or tissues* is represented as:
     - a recorded consent to donate a specific organ and/or tissue is represented as `Consent.provision.provision` with `Consent.provision.provision.type` = "permit"
     - no evidence of consent to donate a specific organ and/or tissue (or evidence an individual does not consent) is represented as `Consent.provision.provision` with `Consent.provision.provision.type` = "deny"
     - see example [Australian Organ Donor Register Consent - Willing to be a donor, donate specific tissue / organ](Consent-aodr-03.html)
- In an exchange with the My Health Record system references to a BodyStructure resource will be [contained](http://hl7.org/fhir/R4/references.html#contained).


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.

