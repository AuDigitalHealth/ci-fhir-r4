### General requirements

Systems may deploy, and support, one or more ADHA profiles (i.e. the profiles governed by this guide) to represent clinical information. Each profile defines the FHIR structures required, the data element definitions, their associated rules of usage including the use of extensions and terminology, and references the additional profiles necessary to assert conformance.

A system **SHOULD** support all ADHA profiles unless the system does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialised role in clinical or information workflows. For example, a pathology laboratory may support [ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), but not [ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html).

To support an ADHA profile:
- systems **SHALL** comply with the applicable [HL7 FHIR standard](https://www.hl7.org/fhir/)
- systems **SHALL** be able to populate all profile data elements that are mandatory and/or labelled MustSupport as defined by that profile’s StructureDefinition according to the section on [Must support](conformance.html#must-support)
  - systems **SHALL** support all referenced profiles necessary to implement this profile
  - meta.profile **MAY** be populated in a resource to indicate the set of profiles a resource is declared to conform to 
- systems **SHOULD** declare conformance with the profile(s) by specifying the full capability details for that profile it claims to implement by
  - including its official URL in the server’s `CapabilityStatement.rest.resource.supportedProfile` element 
  - listing the supported FHIR RESTful transactions
- systems **SHALL NOT** conform to a Core profile where a more specific profile is applicable

To support an ADHA CapabilityStatement:
- systems **SHALL** declare conformance with the **TBD CapabilityStatement**  by including its official URL in the server’s `CapabilityStatement.instantiates` element: `http://ns.electronichealth.net.au/fhir/CapabilityStatement/dh-tbd-1`
- systems **SHALL** specify the full capability details for that CapabilityStatement it claims to implement by
  - TBC

**General requirements**

> **ADHA-FHIR-CONF-0X** A system **SHALL** comply with the applicable [HL7 FHIR standard](https://www.hl7.org/fhir/)


> **ADHA-FHIR-CONF-0X** A system **SHALL** reject any request to create or update a resource that contains a resource that is not supported by the Conformance/CapabilityStatement resource for that endpoint


> **ADHA-FHIR-CONF-0X** A system **SHALL** reject any request to create or update a resource that contains a modifier extension that is not supported by the Conformance/CapabilityStatement resource for that endpoint


> **ADHA-FHIR-CONF-0X** A system **SHALL** reject any request to create or update a resource that contains a resource that does not conform to the Conformance/CapabilityStatement resource for that endpoint


> **ADHA-FHIR-CONF-07** An ADHA Core profile **SHALL NOT** be used where a more specific profile is applicable. An implementation SHALL ensure the resource conforms to that specific profile.

For example, a Shared Health Summary is to conform to the specific profile governing conformance of Shared Health Summary rather than only conform to ADHA Document Composition. 


### Must support

Labelling an element [MustSupport]( https://www.hl7.org/fhir/conformance-rules.html#mustSupport) means that implementations that produce or consume resources **SHALL** provide support for the element in some meaningful way. ADHA profiles impose a core set of must support obligations on classes of implementations based on roles and data services. Some implementation contexts require additional support, e.g. ePrescribing. The specifications and/or profiles that define a particular implementation context **SHALL** make clear the required support for that context. 

A sending system:
- when making a request to an endpoint **SHALL** conform to the Conformance/CapabilityStatement for that endpoint and conform to all applicable ADHA conformance requirements 
- when responding to a request - TBD
- when constructing a resource:
   - **SHALL** ensure the resource conforms to the applicable ADHA profile
   - **SHALL** implement the guidance on extensibility if including “additional” elements according to section on [Extensibility – “additional” elements](guidance.html#extensibility--additional-elements)
   - **SHALL** implement the guidance on missing data if asserting a mandatory element is missing according to the section on [Missing data](guidance.html#missing-data)
   - **SHALL** populate all elements labelled MustSupport where the sending system has that information unless:
      - there is a clinical reason why supplying the information would be unsafe, misleading, or otherwise clinically inappropriate
      - the data is suppressed due to a security or privacy reason 

A receiving system:
- **SHALL** be capable of meaningfully processing the elements labelled MustSupport where the resource has been constructed in accordance with ADHA conformance requirements; depending on local requirements this may mean display, persist, index, or action in an event or request workflow
- **MAY** choose to reject non-conformant resources 
- **SHALL** interpret missing data elements within resource instances as data not present in the source system
- **SHALL** be able to process resources containing “additional” elements according to section on [Extensibility – “additional” elements](guidance.html#extensibility--additional-elements)

A persisting system:
- **SHALL** reject any request to create or update a resource that is not supported by the Conformance/CapabilityStatement, contains a modifier extension that is not supported by the Conformance/CapabilityStatement, or is a supported type but does not conform to the Conformance/CapabilityStatement resource for that endpoint  
- in circumstances other than those specified above (request to create or update a resource) **MAY** choose to reject non-conformant resources but is not required to do so
- **SHALL** be able to persist resources containing data elements asserting missing information according to the section on [Missing data](guidance.html#missing-data)
- **SHALL** be able to persist resources containing "additional" elements according to section on [Extensibility – “additional” elements](guidance.html#extensibility--additional-elements)


**Presentation of elements labelled MustSupport in profile views**

When viewing the raw JSON of a profile, elements labelled *MustSupport* are flagged as `mustSupport` set to "true". 

Example: ADHA Core AllergyIntolerance profile showing clinicalStatus and verificationStatus labelled MustSupport
~~~
{
    "resourceType" : "StructureDefinition",
    ...
    "url" : "http://ns.electronichealth.net.au/fhir/StructureDefinition/dh-allergyintolerance-core-1",
    ...
    "type" : "AllergyIntolerance",
    "baseDefinition" : "http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance",     
    ...
           {
              "id" : "AllergyIntolerance.clinicalStatus",
              "path" : "AllergyIntolerance.clinicalStatus",
              "mustSupport" : true
           },
           {
              "id" : "AllergyIntolerance.verificationStatus",
              "path" : "AllergyIntolerance.verificationStatus",
              "mustSupport" : true
           },
    ...
}
~~~

When rendered in an implementation publication each profile is presented different formal views of all the elements that must be supported in a tree format under tabs labelled "Differential Table" and "Snapshot Table".

The elements labelled *MustSupport* in the "Differential Table" and "Snapshot Table" view are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>. To see the full set of elements that must be supported a reader must use the "Snapshot Table". 
The "Snapshot Table" presents the elements labelled MustSupport in this profile (shown in the "Differential Table") and the elements labelled MustSupport inherited from a base profile (e.g. [ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html) based on [ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html)) 

Implementers should take note that the full set of constraints (i.e. invariants) defined in a profile are only presented in the "Detailed Descriptions" tab or the raw representation (e.g. XML or JSON) of the profile. The "Differential Table" only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The "Snapshot Table" only presents the constraints visible in the "Differential Table" and additionally presents those constraints set in slices in the base profile.

**Interpreting profile elements labelled MustSupport**

Profiles defined in this implementation publication flag MustSupport on elements and not part subelements of a data type. 
The explanation on how to interpret MustSupport for an element does not address rules defined in each profile - in implementation the rules defined in the profile must be applied and may limit or extend what is allowed for each element.

The allowed subelements for each supported element in a profile are defined by a combination of the data type from the core specification and any additional rules included in the profile. 
A profile may include rules that:
- limit what is considered 'valid'
- extend the potential subelements by including an extension

For example, the profile [ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html) limits what is considered valid for the element `Immunization.patient` with the invariant "**inv-dh-imm-01:** At least reference or a valid identifier shall be present".

Typically ADHA profiles will extend the potential subelements by inheriting from a HL7 AU Base profile, e.g. the element `Medication.code` in profile [ADHA Core Medication](StructureDefinition-dh-medication-core-1.html) is of type CodeableConcept and is extended by inheriting a medicine specific subelement `Medication.code.coding.extension` [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) from [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html). 
The full set of subelements is visible in the "Snapshot Table" which shows the subelements defined in this profile (shown in the "Differential Table") and the subelements inherited from a base profile.


*MustSupport for elements of primitive type*

- A sending system **SHALL** be capable of providing a meaningful, valid, value in the element
- A receiving system **SHALL** be capable of meaningfully processing the value in the element
- A persisting system **SHALL** be capable of persisting the value in the element
 

*MustSupport for elements of complex type*

- A sending system **SHALL** be capable of providing a meaningful, valid, value in the element
- A receiving system **SHALL** be capable of meaningfully processing the value in all parts of the complex type (since the receiver cannot anticipate which subelements might be populated)
- A persisting system **SHALL** be capable of persisting the value in all parts of the complex type (since the persister cannot anticipate which subelements might be populated)


For some complex types a meaningful, valid, value can be populated with only one subelement, but usually more than one subelement is needed.


*MustSupport for elements of Reference type*

- A sending system **SHALL** be capable of populating the element with a valid reference
- A receiving system **SHALL** be capable of meaningfully processing the element with a valid reference that conforms to the profile
- A persisting system **SHALL** be capable of persisting the element with a valid reference that conforms to the profile


*MustSupport for elements with a choice of data types or profiles*
 
- A sending system **SHALL** be capable of populating the element with a value that conforms to at least one choice, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A receiving system **SHALL** be capable of meaningfully processing all choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all choices (since the persister cannot anticipate which data type or profile might be populated)

A profile may slice an element that has a choice of data types or profiles to constrain the set of choices to be supported. For example, the profile [ADHA Core Patient](StructureDefinition-dh-patient-core-1.html) constrains the choices for `Patient.identifier` defined in [AU Base Patient](http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-patient.html) to support Individual Healthcare Identifier (IHI), Medicare Card Number, Department of Veterans' Affairs (DVA) Number:
- A sending system **SHALL** be capable of populating the element with a value that conforms to at least one of those three identifier choices, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A receiving system **SHALL** be capable of meaningfully processing all supported identifier choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all supported identifier choices (since the persister cannot anticipate which data type or profile might be populated)


*MustSupport for elements where there is a choice between an element of type CodeableConcept and type Reference*

A resource may support two elements that are used to indicate a reason, e.g. `Encounter.reasonCode` and `Encounter.reasonReference` in the profile [ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html). Where both elements are optional and labelled MustSupport in a profile they **SHALL** be treated as a choice of data types:
- A sending system **SHALL** be capable of populating at least one choice, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A receiving system **SHALL** be capable of meaningfully processing all choices (since the receiver cannot anticipate which element might be populated) 
- A persisting system **SHALL** be capable of persisting all choices (since the persister cannot anticipate which element might be populated)


*MustSupport for elements with a choice of terminology bindings*

A profile may slice an element that has a choice of terminology bindings to constrain the set of choices to be supported. For example, the profile [ADHA Core Medication](StructureDefinition-dh-medication-core-1.html) constrains the optional terminology choices for `Medication.code` defined in [AU Base Medication](http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-medication.html) to support AMT and PBS:
- A sending system that supplies a coded value **SHALL** be capable of populating the element with a value that conforms to at least one of those two terminology choices, and **SHOULD** be capable of populating every choice for which the sending system might possess data
  - In this profile, a coded value is optional, a sending system that does not have the capability to supply a coded value from a terminology may supply a text value 
- A receiving system **SHALL** be capable of meaningfully processing all supported terminology choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all supported terminology choices (since the persister cannot anticipate which data type or profile might be populated)
