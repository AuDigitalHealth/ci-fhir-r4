The purpose of this profile is to represent a pathology report issued by a diagnostic service provider to support the electronic exchange of the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) that are supported. 

This profile is designed to set a DiagnosticReport standard for:
* Query for pathology reports for a patient
* Record or update pathology reports belonging to a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `DiagnosticReport.category` provides an efficient way of supporting system interactions, e.g. restricting searches to pathology reports. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Results that are free text or report form are represented using ‘DiagnosticReport.presentedForm`.
- The DiagnosticReport resource can represent the clinical conclusion as a text summary with `DiagnosticReport.conclusion` or a set of codes with `DiagnosticReport.conclusionCode`.
  - Although both are marked as must support, sending systems are not required to support both a text and a set of codes, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.


### Boundaries and relationships
This profile is referenced by  
[ADHA Discharge Report Composition](StructureDefinition-dh-composition-dr-1.html). 