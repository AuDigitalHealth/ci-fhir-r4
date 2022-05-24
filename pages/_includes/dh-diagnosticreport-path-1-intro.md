#### ADHA Pathology Report
The purpose of this profile is to represent a pathology report issued by a diagnostic service provider to support the electronic exchange of the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile is intended to be capable of supporting reporting for all pathology disciplines (e.g. including microbiology, histopathology, cytology, blood transfusion) with the exception of genomics.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) that are supported. 

This profile is designed to set a DiagnosticReport standard for:
* Query for pathology reports for a patient
* Record or update pathology reports belonging to a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Profile specific guidance
- `DiagnosticReport.category` provides an efficient way of supporting system interactions, e.g. restricting searches to pathology reports. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  
