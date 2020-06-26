#### Collected Specimen
The purpose of this profile is to represent key elements of clinical relevance of a collected specimen to accompany a diagnostic observation issued by the diagnostic service provider for the electronic exchange of diagnostic test observations between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* accessionIdentifier - if there isn’t a local identifier namespace available then an identifier can be sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/accessionnumber/1.0/index.html">HPI-O scoped</a> identifier namespace (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)

When sending to the My Health Record system it is expected that all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html).

This profile is referenced by [Atomic Pathology Observation](StructureDefinition-observation-path-atomic-1.html).