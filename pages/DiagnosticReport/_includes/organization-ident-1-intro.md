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
[Atomic Other Diagnostic Observation](StructureDefinition-observation-otherdiag-atomic-1.html),
[Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html),
[Other Diagnostic Report](StructureDefinition-composition-otherdiagreport-1.html) and
[Simple Other Diagnostic Observation](StructureDefinition-observation-otherdiag-simple-1.html).
