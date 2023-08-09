This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

This profile is designed to set an Observation standard for:
* TBD

This profile may be referred to by APIs, which will be listed here when available.

<p class="stu-note">This content will be taken for discussion with HL7 Australia and may be removed or changed.</p>

### Profile specific guidance

Whether the measured vision is corrected or uncorrected should be recorded in the observation code.

The use of a pinhole occluder should be recorded as an additional coding in observation code.

The eye or eyes whose vision is measured should be recorded as a body site.

The type of chart used should be recorded as a device type.

Results in Snellen notation should be recorded as ratios, see example [Distance visual acuity, both eyes, as a ratio](Observation-visualacuity-01.html).

Results in N-point notation should be recorded as quantities, see example [Near visual acuity, right eye, in N-point notation](Observation-visualacuity-06.html).

Results of low vision should be recorded as coded terms, see example [Distance visual acuity, left eye, as a code](Observation-visualacuity-03.html).

**Undefined terminology resources include:**
* for category, a code for a category of "Vision" 
* for code, a value set containing the SNOMED CT codes for types of visual acuity test
* for code, SNOMED CT codes for distance visual acuity, corrected; distance visual acuity, uncorrected; near visual acuity, corrected; near visual acuity, uncorrected
* for valueCodeableConcept, a value set containing the SNOMED CT codes for low vision results
* for valueQuantity, a code for unit of measurement for LogMAR notation
* for valueQuantity, a code for unit of measurement for N-point notation
* for valueQuantity, a code for unit of measurement for M-size notation
* for bodySite, a value set containing the SNOMED CT codes for left, right and both eyes.
* for method, a value set containing the SNOMED CT codes for the types of chart commonly used in Australia.