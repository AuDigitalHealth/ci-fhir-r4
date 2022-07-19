# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>


The policy for defining, using, maintaining, and implementing using FHIR version R4 within the Australian Digital Health Agency.

## Conformance

Systems may deploy, and support, one or more ADHA Profiles to represent clinical information. Each profile defines the FHIR structures required, the data element definitions, their associated rules of usage including the use of extensions and terminology, references the additional profiles necessary to assert conformance.

A system **SHOULD** support all ADHA profiles unless the system does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialised role in clinical or information workflows. For example, a pathology laboratory may support [ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), but not [ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html).

To support an ADHA profile:
- systems **SHALL** be able to populate all profile data elements that are mandatory and/or flagged as Must Support as defined by that profile’s StructureDefinition according to the section on [Must Support](policy.html#must-support)
  - systems **SHALL** support all referenced profiles necessary to implement this profile
  - meta.profile **MAY** be populated in a resource to indicate the set of profiles a resource is declared to conform to 
- systems **SHOUD** declare conformance with the profile(s) by specifying the full capability details for that profile it claims to implement by
  - including its official URL in the server’s `CapabilityStatement.rest.resource.supportedProfile` element 
  - listing the supported FHIR RESTful transactions

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


## Must Support

Labelling an element [Must Support]( https://www.hl7.org/fhir/conformance-rules.html#mustSupport) means that implementations that produce or consume resources **SHALL** provide "support" for the element in some meaningful way. ADHA profiles impose a core set of Must Support obligations on classes of implementations based on roles and data services. Some implementation contexts require additional support, e.g. ePrescribing. The specifications and/or profiles that define a particular implementation context **SHALL** make clear the required "support" for that context. 

A sending system:
- when making a request to an endpoint **SHALL** conform to the Conformance/Capability statement for that endpoint and conform to all applicable ADHA conformance requirements 
- when responding to a request - TBD
- when constructing a resource:
   - **SHALL** ensure the resource conforms to the applicable ADHA profile
   - **SHALL** implement the guidance on extensibility if including “additional” elements according to section on [Extensibility – “additional” elements](guidance.html#extensibility--additional-elements)
   - **SHALL** implement the guidance on missing data if asserting a mandatory element is missing according to the section on [Missing Data](guidance.html#missing-data)
   - **SHALL** populate all Must Support elements where the sending system has that information unless:
      - there is a clinical reason why supplying the information would be unsafe, misleading, or otherwise clinically inappropriate
      - the data is suppressed due to a security or privacy reason 

A receiving system:
- **SHALL** be capable of meaningfully processing the Must Support elements where the resource has been constructed in accordance with ADHA conformance requirements; depending on local requirements this may mean display, persist, index, or action in an event or request workflow
- **MAY** choose to reject non-conformant resources 
- **SHALL** interpret missing data elements within resource instances as data not present in the source system
- **SHALL** be able to process resources containing “additional” elements according to section on [Extensibility – “additional” elements](guidance.html#extensibility--additional-elements)

A persisting system:
- **SHALL** reject any request to create or update a resource that is not supported by the Conformance/CapabilityStatement, contains a modifier extension that is not supported by the Conformance/CapabilityStatement, or is a supported type but does not conform to the Conformance/Capability statement resource for that endpoint.  
- in circumstances other than those called out above (request to create or update a resource), a persisting system **MAY** choose to reject non-conformant resources but is not required to do so
- **SHALL** be able to persist resources containing data elements asserting missing information according to the section on [Missing Data](guidance.html#missing-data)
- **SHALL** be able to persist resources containing additional elements according to section on [Extensibility – “additional” elements](guidance.html#extensibility--additional-elements)


**Presentation of Must Support elements in profile views**

When viewing the raw JSON of a profile, elements labeled *Must Support* are flagged with a boolean element `mustSupport` set to "true". 

Example: ADHA Core AllergyIntolerance profile showing clinicalStatus and verificationStatus flagged with Must Support
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

When rendered in an implementation specification each profile is presented different formal views of all the must support elements in a tree format under tabs labeled "Differential Table" and "Snapshot Table".

The elements labeled *Must Support* in the "Differential Table" and "Snapshot Table" view are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>. To see the full set of Must Support elements a reader must use the "Snapshot Table". 
The "Snapshot Table" present the must support elements defined in this profile (shown in the "Differential Table) and the must support elements inherited from a base profile (e.g. [ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html) based on [ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html)) 

Implementers should take note that the full set of constraints (i.e. invariants) defined in a profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML or JSON) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.

**Interpreting profile elements labeled Must Support**

Profiles defined in this specification flag Must Support only on elements and not on subelements of a data type. 
The explanation on how to interpret Must Support for an element does not address rules defined in each profile - in implementation the rules defined in the profile must be applied and may limit or extend what is allowed for each element.

The allowed subelements for each supported element in a profile are defined by a combination of the data type from the core specification and any additional rules included in the profile. 
A profile may include rules that:
- limit what is considered 'valid'
- extend the potential subelements by including an extension

For example, the profile [ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html) limits what is considered valid for the element `Immunization.patient` with the invariant "**inv-dh-imm-01:** At least reference or a valid identifier shall be present".

Typically ADHA profiles will extend the potential subelements by inheriting from an HL7 AU Base profile, e.g. the element `Medication.code` in profile [ADHA Core Medication](StructureDefinition-dh-medication-core-1.html) is of type CodeableConcept and is extended by inheriting a medicine specific subelement `Medication.code.coding.extension` [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) from [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-medication.html). 
The full set of subelements is visible in the "Snapshot Table" which shows the subelements defined in this profile (shown in the "Differential Table) and the subelements inherited from a base profile.


*Must support elements of primitive type*

- A sending system **SHALL** be capable of providing a meaningful, valid, value in the element
- A receiving system **SHALL** be capable of meaningfully processing the value in the element
- A persisting system **SHALL** be capable of persisting the value in the element
 

*Must support elements of complex type*

- A sending system **SHALL** be capable of providing a meaningful, valid, value in the element
- A receiving system **SHALL** be capable of meaningfully processing the value in all parts of the complex type (since the receiver cannot anticipate which subelements might be populated)
- A persisting system **SHALL** be capable of persisting the value in al parts of the complex type (since the persister cannot anticipate which subelements might be populated)


For some complex types a meaningful, valid, value can be populated with only one subelement, but usually more than one subelement is needed.


*Must support elements of Reference type*

- A sending system **SHALL** be capable of populating the element with a valid reference
- A receiving system **SHALL** be capable of meaningfully processing the element with a valid reference that conforms to the profile
- A persisting system **SHALL** be capable of persisting the element with a valid reference that conforms to the profile


*Must support elements with a choice of data types or profiles*
 
- A sending system **SHALL** be capable of populating the element with a value that conforms to at least one choice, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A receiving system **SHALL** be capable of meaningfully processing all choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all choices (since the persister cannot anticipate which data type or profile might be populated)

A profile may slice an element that has a choice of data types or profiles to constrain the set of choices to be supported. For example, the profile [ADHA Core Patient](StructureDefinition-dh-patient-core-1.html) constrains the choices for `Patient.identifier` defined in [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-patient.html) to support Individual Healthcare Identifier (IHI), Medicare Card Number, Department of Veterans' Affairs (DVA) Number:
- A sending system **SHALL** be capable of populating the element with a value that conforms to at least one of those three identifier choices, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A receiving system **SHALL** be capable of meaningfully processing all supported identifier choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all supported identifier choices (since the persister cannot anticipate which data type or profile might be populated)


*Must support between two elements that are a choice between CodeableConcept and Reference*

A resource may support two elements that are used to indicate a reason, e.g. `Encounter.reasonCode` and `Encounter.reasonReference` in the profile [ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html). Where both elements are optional and flagged with Must Support in a profile they **SHALL** be treated as a choice of data types:
- A sending system **SHALL** be capable of populating at least one choice, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A receiving system **SHALL** be capable of meaningfully processing all choices (since the receiver cannot anticipate which element might be populated) 
- A persisting system **SHALL** be capable of persisting all choices (since the persister cannot anticipate which element might be populated)


*Must support elements with a choice of terminology bindings*

A profile may slice an element that has a choice of terminology bindings to constrain the set of choices to be supported. For example, the profile [ADHA Core Medication](StructureDefinition-dh-medication-core-1.html) constrains the optional terminology choices for `Medication.code` defined in [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-medication.html) to support AMT and PBS:
- A sending system that supplies a coded value **SHALL** be capable of populating the element with a value that conforms to at least one of those two terminology choices, and **SHOULD** be capable of populating every choice for which the sending system might possess data
  - In this profile, a coded value is optional, a sending system that does not have the capability to supply a coded value from a terminology may supply a text value 
- A receiving system **SHALL** be capable of meaningfully processing all supported terminology choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all supported terminology choices (since the persister cannot anticipate which data type or profile might be populated)


## Serialisation TBD Architecture Team

> **ADHA-FHIR-SERIAL-01** A FHIR API **SHALL** support JSON serialisation


> **ADHA-FHIR-SERIAL-02** A FHIR API endpoint **SHALL** support JSON formatted requests/responses


> **ADHA-FHIR-SERIAL-03** A FHIR API endpoint **SHOULD** support XML serialisation


> **ADHA-FHIR-SERIAL-04** A FHIR API that supports an XML serialisation **SHALL** use the FHIR standard namespace for FHIR XML and FHIR XHTML 


> **ADHA-FHIR-SERIAL-05** A FHIR API endpoint **SHALL** declare the serialisation mime-types supported in the Conformance/CapabilityStatement resource for that endpoint


## National Services TBD Architecture Team

> **ADHA-FHIR-NATSEVICES-0X** National FHIR services **SHALL** use consistent basePaths.

In order to support the move to FHIR for a set of national services, a URL scheme has been defined that will allow entities such as Patients and Organisations to be referenced reliably even when the relevant national FHIR services have not yet been implemented. These URLs should also support a future move to Internet-facing services, and as such it should be possible to resolve them over both the Internet and N3/HSCN as applicable.

The following basePaths are to be used for national services:

<table class="list" width="100%">
    <tr>
        <th>API Name</th>
        <th>basePath</th>
        <th>Further path to endpoint</th>
    </tr>
    <tr>
        <td>Immunisation History</td>
        <td>/immunisation-history</td>
        <td>/FHIR/R4</td>
    </tr>
    <tr>
        <td>Patient Demographics</td>
        <td>/patient-demographics</td>
        <td>/FHIR/R4</td>
    </tr>
    <tr>
        <td>COVID-19 Test Results</td>
        <td>/covid-19-test-result</td>
        <td>/FHIR/R4</td>
    </tr>
</table>



## Operations TBD Architecture Team

> **ADHA-FHIR-OPER-0X** Where .... standard FHIR operation, the standard operation **SHOULD** be used.


> **ADHA-FHIR-OPER-0X** Where ... a customer operation **SHOULD** be used.



## Identifiers TBD Architecture Team to provide


> **ADHA-FHIR-IDENT-0X** References in a FHIR message **SHOULD** be logical reference to a resource in the Bundle


> **ADHA-FHIR-IDENT-0X** References in a FHIR document **SHOULD** be a logical reference to a resource in the Bundle


> **ADHA-FHIR-IDENT-0X** References between RESTful resources **SHOULD** be literal references but **MAY** be logical references


> **ADHA-FHIR-IDENT-0X** Business identifiers **SHALL** only be used as the resource id in RESTful APIs when the system is the authoritative source of that entity with the exceptions called out before for nationally supported identifiers.



### Identification

> **ADHA-FHIR-IDENT-01** At least one well formed patient identifier **SHALL** be provided


> **ADHA-FHIR-IDENT-02** Where a verified IHI is available for a patient that IHI **SHALL** be provided


> **ADHA-FHIR-IDENT-03** A system **SHALL** support the following patient identifiers: IHI, DVA, and Medicare Card.


> **ADHA-FHIR-IDENT-04** A system **SHALL** support the following healthcare provider individual identifiers: HPI-I, CAE, and Medicare Provider.


> **ADHA-FHIR-IDENT-05** A system **SHALL** support the following organisation identifiers: HPI-O, PAI-O, and ABN.


> **ADHA-FHIR-IDENT-06** A system **SHOULD** support the following device identifiers: PAI-D, PAI-R, UID.


> **ADHA-FHIR-IDENT-07** An identifier data element **SHALL** conform to the applicable HL7 AU Identifier profile.


## Profiling

> **ADHA-FHIR-PROFILE-0X** An ADHA Core FHIR Asset **SHALL NOT** define alternate elements for use in place of elements defined in a HL7 FHIR base resource


> **ADHA-PROFILE-PROFILE-0X** An ADHA Core FHIR Asset **SHALL** conform to the applicable HL7 AU Base FHIR Asset


> **ADHA-FHIR-PROFILE-0X** An ADHA FHIR Asset **SHALL** derive from an ADHA FHIR Core Asset in the first instance, if available, otherwise it **SHALL** derive from an applicable HL7 AU Base Asset  


> **ADHA-FHIR-PROFILE-0X** An ADHA Core FHIR Asset **SHALL** derive from HL7 AU Base material in the first instance if available, otherwise derive


> **ADHA-FHIR-PROFILE-0X** Use of extensions **SHALL** follow order of precedence:
> 1. HL7 extension
> 2. HL7 AU extension
> 3. ADHA extension
> 4. Other


## Artefact identification, naming, versioning, and publication 

### Publication

An ADHA FHIR conformance artefact for public implementation **SHALL** be published in a public FHIR Implementation Guide or as a FHIR Package and **SHOULD** be published as both. 

Some implementation contexts will be supported by targeted conformance assets, e.g. Provider Connect Australia. The specifications and/or profiles that define a particular implementation context **SHALL** define requirements for publication and management of FHIR conformance artefacts for that context, and **SHALL** manage those artefacts accordingly. 

ADHA FHIR conformance artefacts may be one of:
- [CapabilityStatement](http://hl7.org/fhir/capabilitystatement.html)
- [StructureDefinition](http://hl7.org/fhir/structuredefinition.html)
- [ImplementationGuide](http://hl7.org/fhir/implementationguide.html)
- [SearchParameter](http://hl7.org/fhir/searchparameter.html)
- [OperationDefinition](http://hl7.org/fhir/operationdefinition.html)
- [StructureMap](http://hl7.org/fhir/structuremap.html)

FHIR conformance artefacts make use of [CodeSystem](http://hl7.org/fhir/codesystem.html), [ValueSet](http://hl7.org/fhir/valueset.html), and [ConceptMap](http://hl7.org/fhir/conceptmap.html) resources. ADHA FHIR resources of these types are published and managed by the [National Clinical Terminology Service](https://www.healthterminologies.gov.au/) 

All FHIR materials relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides, etc.) **SHALL** be held on a publicly available GitHub repository published by the Australian Digital Health Agency. The location for Agency material in GitHub is: [https://github.com/AuDigitalHealth](https://github.com/AuDigitalHealth).

Comments, feedback and suggestions from developers on FHIR resources (and associated documentation) **SHOULD** be managed through **TBD** using the standard features for raising and tracking issues on the site.


ADHA FHIR publication and resource URIs **SHOULD** be resolvable URLs. The canonical URI and the resolved URL **MAY NOT** be the same.


### Identification of FHIR artefacts

All FHIR conformance assets are identified by a globally unique URI. The ADHA FHIR conformance artefact URIs **SHALL** be in the form of:

`[base]/[resource-type]/[id]`
 
The base URI for ADHA FHIR artefacts is `http://ns.electronichealth.net.au/fhir`. The following table shows how URIs for each resource type may be constructed.

<table class="list" width="100%">
<tbody>
  <tr>
    <th>base</th>
    <th>/Resource type</th>
    <th>/id</th>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/CapabilityStatement</td>
        <td>/[id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/StructureDefinition</td>
        <td>/[id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/ImplementationGuide</td>
        <td>/[id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/SearchParameter</td>
        <td>/[id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/OperationDefinition</td>
        <td>/[id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/StructureMap</td>
        <td>/[id]</td>
  </tr>
 </tbody>
</table>

**ImplementationGuide and FHIR NPM package [id]**

The [id] for an ImplementationGuide resource **SHALL** match the [id] of the FHIR NPM package. 

The [id] for an ImplementationGuide and FHIR NPM package **SHALL** be all lowercase in the form of:

`[base-id].[fhir-version].[optional-subpackage-name]`

- [base-id] for ADHA FHIR artefacts is `au.digitalhealth`
- [fhir-version] is in the form of `stu3` or `r4` or `r5`
- [optional-subpackage-name] is optional and if present **SHALL** have individual words separated by `-`
  - It should be a business name that **MAY** be two or three words and **SHALL NOT** exceed five
  - Common use abbreviations or acronyms **MAY** be used, punctuation such as apostrophe or ampersand **SHALL NOT** be used
  - An ADHA FHIR NPM package for a fhir version, i.e. managed core and common ADHA FHIR materials, **SHALL NOT** have a subpackage id, i.e. the package id for this implementation guide **SHALL** be `au.digitalhealth.r4`
  - A subpackage that manages ADHA FHIR materials for a specific implementation context **SHALL** have a subpackage name, e.g. `medicare-records` is the subpackage name that forms part of the packageId `au.digitalhealth.stu3.medicare-records` for the Medicare Records FHIR Implementation Guide. 


In an ImplementationGuide resource this [id] **SHALL** be used in three places:

- The exact value in id field:`ImplementationGuide.id`
- Form part of the canonical URL: `ImplementationGuide.url`
- The exact value in the packageId field: `ImplementationGuide.packageId`

Example: ImplementationGuide resource with id, url, packageId
~~~
{
  "resourceType": "ImplementationGuide",
    "id": "au.digitalhealth.r4",
    "url": "http://ns.electronichealth.net.au/fhir/ImplementationGuide/au.digitalhealth.r4",
    ...
    "packageId": "au.digitalhealth.r4",
    ...
}  
~~~
 

**StructureDefinition [id] - Profiles**

The [id] for a StructureDefinition that is a profile **SHALL** be all lowercase in the form of:

`dh-[resource-type]-[use-case-name]-[optional-use-case-name2]-[structure-version]`

- [resource-type] is the value in `StructureDefinition.type`.
- [use-case-name] is a business name and **SHALL NOT** have individual words separated by `-`
  - Common use abbreviations or acronyms **SHOULD** be used, punctuation such as apostrophe or ampersand **SHALL NOT** be used
- [optional-use-case-name2] is a business name for a case that is a specialism of the case represented by [use-case-name] and **SHALL NOT** have individual words separated by `-`
  - Common use abbreviations or acronyms **SHOULD** be used, punctuation such as apostrophe or ampersand **SHALL NOT** be used
- [structure-version] is in the form of the major part of the StructureDefinition.version string, see the section [Versioning of FHIR artefacts](policy.html#versioning-of-fhir-artefacts).

This [id] **SHALL** be used in three places:

- Form part of the StructureDefinition's filename
- The exact value in id field:`StructureDefinition.id`
- Form part of the canonical URL: `StructureDefinition.url`


Example: StructureDefinition resource that is a core profile
~~~
{
  "resourceType": "StructureDefinition",
    "id": "dh-bodystructure-core-1",
    "url": "http://ns.electronichealth.net.au/fhir/StructureDefinition/dh-bodystructure-core-1",
    ...
}  
~~~  

Example: StructureDefinition resource with a 2nd use case name
~~~
{
  "resourceType": "StructureDefinition",
    "id": "dh-explanationofbenefit-medicare-mbs-1",
    "url": "http://ns.electronichealth.net.au/fhir/StructureDefinition/dh-explanationofbenefit-medicare-mbs-1",
    ...
}  
~~~  


**StructureDefinition [id] - Extensions**

The [id] for a StructureDefinition that is an extension **SHALL** be all lowercase in the form of:

`dh-[element-name]-[structure-version]`

- [element-name] **SHALL** have individual words separated by `-`
  - **MAY** be two or three words and **SHALL NOT** exceed five
  - Common use abbreviations or acronyms **MAY** be used, punctuation such as apostrophe or ampersand **SHALL NOT** be used
- [structure-version] is in the form of the major part of the StructureDefinition.version string, see the section [Versioning of FHIR artefacts](policy.html#versioning-of-fhir-artefacts).

This [id] **SHALL** be used in three places:

- Form part of the StructureDefinition's filename
- The exact value in id field:`StructureDefinition.id`
- Form part of the canonical URL: `StructureDefinition.url`

Example: StructureDefinition resource that is an extension
~~~
{
  "resourceType": "StructureDefinition",
    "id": "dh-packed-in-daa",
    "url": "http://ns.electronichealth.net.au/fhir/StructureDefinition/dh-packed-in-daa",
    ...
}  
~~~  

Important Note: An exception to this policy has been accepted for the extension [Date of Initial Registration](StructureDefinition-dh-date-initial-registration-1.html) first implemented in 2018 in FHIR 3.0.1.


### Versioning of FHIR artefacts

The version policy follows [Semantic versioning](http://semver.org/) with some changes to account for a specification and not a software release.

There is a single development version of the specification that undergoes cycles of development. At the completion of each cycle of development a new version of the specification is published. In version control terms, each published specification is a branch off the development trunk, which may then itself undergo further change as the Agency maintains the published specification (limited to necessary technical corrections or security alerts) and introduces new capabilities.

Each version is identified by a string composed from 4 parts: major.minor.revision(-label):

major	
- Incremented when the Agency publishes an updated specification, e.g. a Trial Use or Approved version
- Equivalence to a deprecated format such as CDA, is version 0
- The first FHIR design is version 1.0.x

minor	
- Increments every time an updated release is made that contains one or more substantive changes (see below)
- Resets to 0 any time the major version changes
- Sometimes breaking changes may be made to particular features of the specification and characterised as minor changes. When this happens, the specification will clearly indicate the grounds on which this is considered a minor update

revision	
- Is set to 0 when a new release of FHIR is published
- Increments when technical corrections and clarifications are made to an existing published specification
- These changes are only made as technical corrections when it is agreed that they do not affect implementations

label (optional)	
- Labels are used to mark pre-releases of planned publications
- Full publications have no label; the presence of a label automatically marks a version as work in progress
- Common labels are draft[N], qa-preview[N] for formal review activities, snapshot[N], or trial-use[N]. Snapshot releases are used typically used to support a proof of concept, connectathon, or other implementation exploration activity. 
- The label ci-build is used to mark the continuous integration build. This is a rolling version; changes may be made numerous times a day, generally driven by change requests or new development cycles

Additional notes:

- Changes to a formally published specification (except for minor publishing corrections, such as correcting broken external links) are only made via announced technical corrections






