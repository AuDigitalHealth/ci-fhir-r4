The purpose of this profile is to define a core representation of a diagnostic report issued by the diagnostic service provider to support the electronic exchange of the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia. This profile is intended to be capable of supporting reporting for specialist and other diagnostic disciplines that are not pathology or imaging.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) that are supported. 

Where a more specific DiagnosticReport profile is applicable, e.g. pathology report or imaging report, an implementation **SHALL** ensure the resource conforms to that specific profile.

This profile is designed to set a core DiagnosticReport standard for:
* Query for diagnostic reports for a patient
* Record or update diagnostic reports belonging to a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `DiagnosticReport.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Results that are free text or report form are represented using ‘DiagnosticReport.presentedForm`.
- References to a Media resource are preferred to be [contained](http://hl7.org/fhir/R4/references.html#contained) but may be an external resource.
- The DiagnosticReport resource can represent the clinical conclusion as a text summary with `DiagnosticReport.conclusion` or a set of codes with `DiagnosticReport.conclusionCode`.
  - Although both are marked as must support, sending systems are not required to support both a text and a set of codes, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.
- The DiagnosticReport resource can represent the result as a text summary with `DiagnosticReport.conclusion` or a set of codes with `DiagnosticReport.conclusionCode`.
  - Although both are marked as must support, sending systems are not required to support both a text and a set of codes, but they **SHALL** support *at least one* of these elements.
  - A receiving or persisting system **SHALL** support both elements.


### Boundaries and relationships
This profile is referenced by 
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Discharge Report Composition](StructureDefinition-dh-composition-dr-1.html), 
[ADHA Event Summary Mixed Narrative and Structure](StructureDefinition-dh-composition-es-mix-1.html), and 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).

These profiles build on this profile ([ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html)) to define specific roles:
* [ADHA Pathology Report](StructureDefinition-dh-diagnosticreport-path-1.html)