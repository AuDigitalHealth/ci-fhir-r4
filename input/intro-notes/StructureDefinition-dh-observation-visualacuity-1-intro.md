This profile provides an observation information structure for a measurement of patient’s visual acuity. Visual acuity is the ability to recognize small details with precision. The most common measurement of visual acuity asseses vision of stationary shapes on a standard chart at a distance in a good light. 

Results of a distance visual acuity measurement may be recorded as a ratio (e.g. 6/12), as a decimal number (e.g. 0.5 /arcmin), or as a code (e.g. 422256009\|Counts fingers - distance vision\|).

Results of a near vision visual acuity measurement may be recorded as the [point](https://en.wikipedia.org/wiki/Point_(typography)) size of text able to be read.  

#### Extensions
No extensions are used in this profile.

#### Usage Notes

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