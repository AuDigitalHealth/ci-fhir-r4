### Base Practitioner *[[Draft](http://hl7.org/fhir/r4/valueset-publication-status.html)]*

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is recommended that:
* an Australian address conforms to the [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) Profile
* an employee identifier local to an organisation, e.g. a hospital or lab, be sent with:
  * a type code of ‘EI’ ‘http://terminology.hl7.org/CodeSystem/v2-0203’
  * the system will be filled with a namespace specific to the organisation, e.g. ‘https://territorymedicalcentre.example.com/provider’ or ‘http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/51824753556’
  * the value is the actual employee identifier in the organisation’s system, e.g. ‘frankburns27’ or ‘123456’