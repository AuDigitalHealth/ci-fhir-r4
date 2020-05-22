#### Patient with Mandatory Identifier *[[Draft](http://hl7.org/fhir/r4/valueset-publication-status.html)]*
The purpose of this profile is to define a representation of a patient for exchange usage scenarios in an Australian context, where unambiguous identification of a patient is mandatory, in order to support electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile may be used to support the exchange of some of the Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including a patient's country of birth, year of arrival and preferred language.

Other related patient attributes, ostensibly considered to be deomographic in nature, are better represented in other resource types, rather than directly part of the patient resource. These attributes may include:
* a patient's biological sex - this is a testable observation about a biological property of a patient, and as such should be represented using an [Observation](http://hl7.org/fhir/observation.html) resource. See the discussion on this in the [FHIR specification](http://hl7.org/fhir/patient.html#gender).
* a patient's pregnancy status - this is a transient clinical statement better represented using the [Condition](http://hl7.org/fhir/condition.html) resource
* various social determinants of health (such as housing status, employment status or socio-economic background) - these patient attributes are better tracked using a combination of other resources such as [Observation](http://hl7.org/fhir/observation.html), [Condition](http://hl7.org/fhir/condition.html) or [Flag](http://hl7.org/fhir/flag.html)

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* to represent a patient's country of birth, the extension [patient-birthPlace](http://hl7.org/fhir/R4/extension-patient-birthplace.html) elements Address.text (as string) or Address.country (as an [ISO 3166](https://www.iso.org/iso-3166-country-codes.html) 2 or 3 letter code) may be used
* representing that an interpreter is required for a known language, the extension [patient-interpreterRequired](http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html) will be set to true, the particular language will be included in communication.language, and the communication.preferred flag will be set to true
* representing that an interpreter is required when the language is not known, the extension [patient-interpreterRequired](http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html) will be set to true, the communication.preferred flag will not be set to true, and the communication.language will not be included
* ...

This profile is referenced by
[Other Diagnostic Report](composition-otherdiagreport-1),
[Pathology Report](composition-pathreport-1),
[Atomic Pathology Report](diagnosticreport-path-atomic-1),
[Simple Other Diagnostic Observation](observation-otherdiag-simple-1),
[Atomic Pathology Observation](observation-path-atomic-1),
[Simple Pathology Observation](observation-path-simple-1),
[Order Details for Other Diagnostic Report](servicerequest-otherdiag-report-1),
[Order Details for Pathology Report](servicerequest-path-report-1) and
[Collected Specimen](specimen-collect-1).

[](),



TODO: Add links to all other forthcoming profiles.
