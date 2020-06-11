#### Organization with Mandatory Identifier
The purpose of this profile is to define a representation of an organisation where unambiguous identification of an organisation is mandatory in the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* an Australian address conforms to the [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) profile
* if more than one identifier is sent, only one of each type is sent

When sending to the My Health Record system it is expected that: 
* an HPI-O is sent
* name is sent

#### Boundaries and relationships
This profile is referenced by 
[Atomic Diagnostic Imaging Report](http://ns.electronichealth.net.au/ci/fhir/StructureDefinition/diagnosticreport-imag-atomic-1),
[Atomic Imaging Observation](http://ns.electronichealth.net.au/ci/fhir/StructureDefinition/observation-imag-atomic-1),
[Atomic Other Diagnostic Observation](http://ns.electronichealth.net.au/ci/fhir/StructureDefinition/observation-otherdiag-atomic-1),
[Atomic Other Diagnostic Report](http://ns.electronichealth.net.au/ci/fhir/StructureDefinition/diagnosticreport-otherdiag-atomic-1),
[Atomic Pathology Observation](http://ns.electronichealth.net.au/ci/fhir/StructureDefinition/observation-path-atomic-1),
[Atomic Pathology Report](http://ns.electronichealth.net.au/ci/fhir/StructureDefinition/diagnosticreport-path-atomic-1),
[Diagnostic Imaging Report](http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/composition-imagreport-1),
[Order Details for Diagnostic Imaging Report](http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/servicerequest-imag-report-1),
[Order Details for Other Diagnostic Report](http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/servicerequest-otherdiag-report-1),
[Order Details for Pathology Report](http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/servicerequest-path-report-1),
[Other Diagnostic Report](http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/composition-otherdiagreport-1),
[Pathology Report](http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/composition-pathreport-1),
[Simple Other Diagnostic Observation](http://ns.electronichealth.net.au/ci/fhir/StructureDefinition/observation-otherdiag-simple-1).
