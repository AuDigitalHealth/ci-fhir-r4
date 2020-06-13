#### My Health Record Pathology Report
The purpose of this profile is to define a short form representation of a pathology report, providing a rich text representation of the report as issued by the diagnostic service provider with supporting key elements of clinical relevance.  This profile is intended to support the electronic exchange of pathology reports between healthcare providers and the My Health Record system infrastructure in Australia.

A My Health Record Pathology Report is created by an authoring pathology provider and contains the pathologist’s analysis of one or more test results. There is a single PDF attachment of the original diagnostic report that may itself contain one or more pathology test results. Thus the values of diagnostic report elements that are present in both the FHIR resource and the PDF document shall be consistent.

There are specific requirements related to the management of pathology results provided to the My Health Record system, which are managed by the My Health Record system itself.

A registered portal or registered repository shall not be a producer of a pathology report.

#### Usage scenarios
The following are the overarching usage scenarios this profile is intended to support:
* A clinical information system (CIS) sends or receives a pathology report document with the My Health Record system
*	A contracted service provider (CSP) sends or receives a pathology report document with the My Health Record system
*	A CSP sends or receives a pathology report document with a CIS or another CSP
*	A registered portal or registered repository receives a pathology report document

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
*	identifier - if there isn’t a local identifier namespace available then an identifier can be sent with a HPI-O scoped identifier namespace (see the FAQ for more information)
*	status will be 'preliminary', 'final', or 'amended'
*	category will be the list of diagnostic services that performed the tests included in this report
*	code will be the pathology test group name or individual test name where only one test was performed; code will typically match one Observation.code
*	effective[x] is the earliest specimen collection date time
*	performer will be the performing pathologist including their employing organisation. The list of performers in the DiagnosticReport should be consistent with the each result observation performer referenced in the report.
*	the attached pdf is viewable by any individual that is a My Health Record participant. It should not have any of these features: encryption, password protection, printing or copying restrictions, embedded fonts (as not all PDF viewers support them)

This profile is referenced by [Pathology Report](StructureDefinition-composition-pathreport-1.html).