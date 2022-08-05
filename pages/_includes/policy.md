# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>


The policy for defining, using, maintaining, and implementing using FHIR version R4 within the Australian Digital Health Agency.

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

There are primarily four types of artefacts provided to support implementations:
1. FHIR implementation guide publication (human-readable HTML)
1. FHIR NPM package (machine-readable Tarball)
1. FHIR conformance resources: published in a FHIR implementation guide and FHIR NPM package 
1. FHIR terminology resources: ADHA resources of these types are published and managed by the [National Clinical Terminology Service](https://www.healthterminologies.gov.au/)

ADHA FHIR conformance resources may be one of:
- [CapabilityStatement](http://hl7.org/fhir/capabilitystatement.html)
- [StructureDefinition](http://hl7.org/fhir/structuredefinition.html)
- [ImplementationGuide](http://hl7.org/fhir/implementationguide.html)
- [SearchParameter](http://hl7.org/fhir/searchparameter.html)
- [OperationDefinition](http://hl7.org/fhir/operationdefinition.html)
- [StructureMap](http://hl7.org/fhir/structuremap.html)


### Canonical identifiers (URI)

FHIR conformance resources are identified by a canonical identifier that is a globally unique URI. 

Canonical identifiers (URI) for ADHA FHIR conformance resources **SHALL** be in the form of [base-uri]/[resource-type]/[resource-id]:
 
- [base-uri] for ADHA FHIR conformance resources is `http://ns.electronichealth.net.au/fhir`*
- [resource-type] is string of the resource type, e.g. `StructureDefinition`, `SearchParameter`
- [resource-id] is the `resource.id` and is constructed in accordance with the rules for that resource type  

*The canonical namespace (URI) for ADHA artefacts is `http://ns.electronichealth.net.au`. This is not limited to FHIR and includes national identifiers and service interfaces. 

The following table shows how the canonical identifier (URI) for each resource type may be constructed.

<table class="list" width="70%">
<tbody>
  <tr>
    <th>[base-uri]</th>
    <th>/[resource-type]</th>
    <th>/[resource-id]</th>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/CapabilityStatement</td>
        <td>/[resource-id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/StructureDefinition</td>
        <td>/[resource-id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/ImplementationGuide</td>
        <td>/[resource-id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/SearchParameter</td>
        <td>/[resource-id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/OperationDefinition</td>
        <td>/[resource-id]</td>
  </tr>
  <tr>
        <td>http://ns.electronichealth.net.au/fhir</td>
        <td>/StructureMap</td>
        <td>/[resource-id]</td>
  </tr>
 </tbody>
</table>


**ImplementationGuide [resource-id] and FHIR NPM package name**

The [resource-id] for an ImplementationGuide **SHALL** match the FHIR NPM package name. 

The [resource-id] for an ImplementationGuide and FHIR NPM package name **SHALL** be all lowercase in the form of [base-id].[fhir-version].[optional-subpackage-case]:

- [base-id] is `au.digitalhealth`
- [fhir-version] is in the form of `stu3` or `r4` or `r5`
- [optional-subpackage-case] is optional and if present **SHALL** have individual words separated by `-`
  - It should be a business name that **MAY** be two or three words and **SHALL NOT** exceed five
  - Common use abbreviations or acronyms **MAY** be used, punctuation such as apostrophe or ampersand **SHALL NOT** be used
  - **SHALL NOT** be present for a publication that manages the core and common ADHA FHIR materials for a FHIR version, i.e. the package id for this implementation guide **SHALL** be `au.digitalhealth.r4`
  - **SHALL** be present for a publication that manages a subpackage for a specific implementation context e.g. `medicare-records` is the subpackage name that forms part of the packageId `au.digitalhealth.stu3.medicare-records` for the Medicare Records FHIR Implementation Guide


In an ImplementationGuide this [resource-id] **SHALL** be used in three places:

- The exact value in id field:`ImplementationGuide.id`
- Form part of the canonical identifier (URI): `ImplementationGuide.url`
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

Example: ImplementationGuide resource for a subpackage with id, url, packageId
~~~
{
  "resourceType": "ImplementationGuide",
    "id": "au.digitalhealth.stu3.medicare-records",
    "url": "http://ns.electronichealth.net.au/fhir/ImplementationGuide/au.digitalhealth.stu3.medicare-records",
    ...
    "packageId": "au.digitalhealth.stu3.medicare-records",
    ...
}  
~~~
 

**StructureDefinition [resource-id] - profiles**

The [resource-id] for a StructureDefinition that is a profile **SHALL** be all lowercase in the form of dh-[resource-profiled]-[use-case]-[optional-use-case2]-[structure-version]:

- [resource-profiled] is the value in `StructureDefinition.type`
- [use-case] is a business name and **SHALL NOT** have individual words separated
  - Common use abbreviations or acronyms **SHOULD** be used, punctuation such as apostrophe or ampersand **SHALL NOT** be used
- [optional-use-case2] is a business name for a case that is a specialism of the case represented by [use-case] and **SHALL NOT** have individual words separated
  - Common use abbreviations or acronyms **SHOULD** be used, punctuation such as apostrophe or ampersand **SHALL NOT** be used
- [structure-version] is in the form of the major part of the StructureDefinition.version string, see the section [Versioning](policy.html#versioning)

In a StructureDefinition this [resource-id] **SHALL** be used in three places:

- Form part of the StructureDefinition's file name
- The exact value in id field:`StructureDefinition.id`
- Form part of the canonical identifier (URI): `StructureDefinition.url`


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


**StructureDefinition [resource-id] - extensions**

The [resource-id] for a StructureDefinition that is an extension **SHALL** be all lowercase in the form of dh-[element-name]-[structure-version]:

- [element-name] **SHALL** have individual words separated by `-`
  - **MAY** be two or three words and **SHALL NOT** exceed five
  - Common use abbreviations or acronyms **MAY** be used, punctuation such as apostrophe or ampersand **SHALL NOT** be used
- [structure-version] is in the form of the major part of the StructureDefinition.version string, see the section [Versioning](policy.html#versioning)

In a StructureDefinition this [resource-id] **SHALL** be used in three places:

- Form part of the StructureDefinition's file name
- The exact value in id field:`StructureDefinition.id`
- Form part of the canonical identifier (URI): `StructureDefinition.url`

Example: StructureDefinition resource that is an extension
~~~
{
  "resourceType": "StructureDefinition",
    "id": "dh-packed-in-daa-1",
    "url": "http://ns.electronichealth.net.au/fhir/StructureDefinition/dh-packed-in-daa-1",
    ...
}  
~~~  

Important Note: An exception to this policy has been accepted for the extension [Date of Initial Registration](StructureDefinition-dh-date-initial-registration-1.html) first implemented in 2018 in FHIR 3.0.1.


### Naming

In order to promote consistency and make it easier for implementers to locate suitable profiles, extensions, etc, for their projects, a naming policy has been adopted.

A conformance resource has two elements covered by a naming policy:
1. the name element e.g. `StructureDefinition.name`
1. the title element e.g. `StructureDefinition.title`

In addition to the requirements defined in the FHIR standard this section defines conventions for ADHA FHIR conformance resources by resource type. 


**ImplementationGuide naming**

The name for an ImplementationGuide **SHALL** be in the form of ADHA[optional-computable-use-case]FHIR:

- [optional-computable-use-case] if present **SHALL** be the value of the [optional-human-readable-use-case] from the title with the following differences: 
  - **SHALL** use UpperCamelCase
  - **SHALL** contain no whitespace

The title for an ImplementationGuide **SHALL** be in the form of ADHA [optional-human-readable-use-case] FHIR:

- [human-readable-use-case] 
  - **SHALL NOT** be present for the implementation guide that manages the core and common ADHA FHIR materials for a FHIR version 
  - **SHALL** be a title case version of the [optional-subpackage-case] of the ImplementationGuide [resource-id] for a publication that manages a subpackage

Example: ImplementationGuide resource that manages the core and common ADHA FHIR materials
~~~
{
  "resourceType": "ImplementationGuide",
    ...
    "name": "ADHAFHIR",
    "title": "ADHA FHIR",
    ...
}  
~~~  

Example: ImplementationGuide resource with the optional human readable use case name
~~~
{
  "resourceType": "ImplementationGuide",
    ...
    "name": "ADHAMedicareRecordsFHIR",
    "title": "ADHA Medicare Records FHIR",
    ...
}  
~~~  


**StructureDefinition naming - profiles**

The name for a StructureDefinition that is a profile **SHALL** be in the form of ADHA[resource-profiled][computable-use-case]:

- [resource-profiled] is the value in `StructureDefinition.type`
- [computable-use-case] is a business name and **SHALL NOT** have individual words separated
  - **SHALL** use UpperCamelCase
  - **SHALL** be `Core` for all core profiles
  - **SHOULD** be an abbreviations or acronyms

The title for a StructureDefinition that is a profile **SHALL** be in the form of ADHA [human-readable-use-case]:

- [human-readable-use-case] is a business name and **SHALL** have individual words separated by a whitespace
  - **SHALL** use title case
  - **SHALL** be `Core [resource-profiled]` for all core profiles e.g. `ADHA Core Patient`
  - **SHOULD** otherwise provide a full name or acronym that describes the use context, project or operation and where possible include common use abbreviations or acronyms 

Example: StructureDefinition resource that is a core profile
~~~
{
  "resourceType": "StructureDefinition",
    ...
    "name": "ADHABodyStructureCore",
    "title": "ADHA Core BodyStructure",
    ...
}  
~~~  

Example: StructureDefinition resource with a 2nd use case name
~~~
{
  "resourceType": "StructureDefinition",
    ...
    "name": "ADHAExplanationofBenefitMBS",
    "title": "ADHA Record of Claim against MBS or DVA",
    ...
}  
~~~  


**StructureDefinition naming - extensions**

The name for a StructureDefinition that is an extension **SHALL** be in the form of [computable-element-name]:

- [computable-element-name] **SHALL** be the value of title with the following differences: 
  - **SHALL** use UpperCamelCase
  - **SHALL** contain no whitespace

The title for a StructureDefinition that is an extension **SHALL** be in the form of ADHA [human-readable-element-name]:

- [human-readable-use-case] is a business name and **SHALL** have individual words separated by a whitespace
  - **SHALL** use title case
  - **SHALL** be a meaningful element name in the style of the FHIR standard and that conveys the element meaning in the shortest set of words


Example: StructureDefinition resource that is an extension
~~~
{
  "resourceType": "StructureDefinition",
    ...
    "name": "MedicinesPackedInDAAIndicator",
    "title": "Medicines Packed in Dose Administration Aid Indicator",
    ...
}  
~~~  


### Versioning

The version policy follows [Semantic versioning](http://semver.org/) with some changes to account for a publication and not a software release.

The four types of artefacts (publications, NPM packages, conformance resources, and terminology resources) are versioned in accoradance with this policy. The visible publication version, ImplementationGuide resource version, and NPM package for that publication **SHALL** have the same version. Conformance and terminology resources published in, or referenced by, that publication **MAY** be versioned indepdendently.  

There is a single development version of the publication that undergoes cycles of development. At the completion of each cycle of development a new version of the publication is published. In version control terms, each published publication is a branch off the development trunk, which may then itself undergo further change as the Agency maintains the published publication (limited to necessary technical corrections or security alerts) and introduces new capabilities.

The same [Semantic versioning](http://semver.org/) versioning standard is applied to the four types of ADHA arefacts. The version is identified by a string composed from 4 parts: major.minor.revision(-label):


major	
- Incremented every time an updated release is made that contains one or more breaking changes
- Equivalence to a deprecated format such as CDA, is version 0
- The initial release of a FHIR-first design is version 1.0.x

minor	
- Increments every time an updated release is made that contains one or more substantive changes (see below)
- Resets to 0 any time the major version changes
- Sometimes breaking changes may be made to particular features of the publication and characterised as minor changes. When this happens, the publication will clearly indicate the grounds on which this is considered a minor update

revision	
- Is set to 0 when a new release of FHIR is published
- Increments when technical corrections and clarifications are made to an existing published publication
- These changes are only made as technical corrections when it is agreed that they do not affect implementations

label (optional)	
- Labels are used to mark pre-releases of planned publications
- Full publications have no label; the presence of a label automatically marks a version as work in progress
- Common labels are draft[N], qa-preview[N] for formal review activities, snapshot[N], or trial-use[N]. Snapshot releases are used typically used to support a proof of concept, connectathon, or other implementation exploration activity. 
- The label ci-build is used to mark the continuous integration build. This is a rolling version; changes may be made numerous times a day, generally driven by change requests or new development cycles

Changes to a formally published publication (except for minor publishing corrections, such as correcting broken external links) are **SHOULD** only be made via announced technical corrections.

FHIR artefacts such as conformance resource or terminology resources **MAY** be versioned individually within a single ImplementationGuide in accordance with a change management process for each resource or **MAY** be kept in lock with the version of the ImplementationGuide.

Examples provided as part of a publication are never normative, or versioned. 

**Types of change that may affect a version**

In order to promote consistency and easy of maintenance the definition of change types defined in the FHIR standard is adopted, these are summarised below:

- *Breaking changes* are changes that mean that previously conformant applications are no longer conformant to the updated artefact
- *Substantive changes* are changes that introduce new functionality - changes to the artefact that create new capabilities - but would not render unchanged existing applications non-conformant
- *Non-substantive changes* should not cause changes in any conformant application. For example, section renumbering, correcting broken links, changing styles, fixing typos, and providing clarifications that do not change the meaning. In addition, this covers corrections that are judged not to create any expectation of change to a conformant application

Examples provided as part of a publication are never treated as normative or substantive. While every effort is made to ensure that example resources are correct, changes to the examples in a publication or NPM package **SHALL** be considered non-substantive.


### Publication

An ADHA FHIR conformance resource for public implementation **SHALL** be published in a public implementation guide and an NPM package. 

The NPM package:
- **SHALL** be published at the root directory of the publication URL for each publication, see notes on publication URLs below
- **SHALL** meet the [FHIR NPM Package publication](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification)
- **SHALL** be 'published' on the [FHIR Package Registry](https://registry.fhir.org) 

Some implementation contexts will be supported by targeted conformance assets, e.g. Provider Connect Australia. The publications and/or profiles that define a particular implementation context **SHALL** define requirements for publication and management of FHIR conformance resources for that context, and **SHALL** manage those artefacts accordingly.

All FHIR materials relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides, etc.) **SHALL** be held on a publicly available GitHub repository published by the Australian Digital Health Agency. The location for Agency material in GitHub is: [https://github.com/AuDigitalHealth](https://github.com/AuDigitalHealth).

Comments, feedback and suggestions from developers on FHIR resources (and associated documentation) **SHOULD** be managed through **TBD** using the standard features for raising and tracking issues on the site. 


**Canonical identifier (URI) expected resolution behaviour**

The canonical identifier for ADHA FHIR publication and conformance resources **SHOULD** be resolvable URLs. The publication location for ADHA artefacts **MAY** be different and resolve by redirection. Resolution **SHOULD** behave as defined in the FHIR standard. 
 
The expected behaviour of resolution of canonical identifiers is summarised below:
- An unversioned canonical identifier **SHALL** resolve to the latest FHIR version and the latest published version of that resource with exception of an ImplementationGuide resource
- The canonical identifier of an ImplementationGuide resource, e.g. `http://ns.electronichealth.net.au/fhir/ImplementationGuide/au.digitalhealth.r4`, **SHALL** resolve to the Home page of the latest version of that publication
- The versioned canonical identifier of an ImplementationGuide resource, e.g. `http://ns.electronichealth.net.au/fhir/ImplementationGuide/au.digitalhealth.r4/1.0.0`, **SHALL** resolve to the Home page of the specified version of that publication
- The publication location **SHOULD** be a FHIR server hosting resources so that the publication URL acts like a [ServICE Base URL](http://hl7.org/fhir/http.html#general) such that a GET of [publication-url]/[resource-type]/[id] returns a FHIR resource


**Publication URLs**

To account for a potential future need to concurrently actively support multiple major versions of FHIR, i.e. support a new capability like a record type or API or interaction in more than one FHIR version, publication locations **SHOULD** make content available in:
- unversioned URLs, i.e. non-FHIR versioned and non-publication versioned
- publication versioned URLs that are non-FHIR versioned
- fully versioned URLs, i.e. FHIR versioned and publication versioned

Therefore, a publication URL may be made up of [base-publication-url]/[fhir-version]/[publication-case]/[publication-version]:

- [base-publication-url] is `TBD`
- [fhir-version] is in the form of `STU3` or `R4`
- [publication-case] **SHALL** be all lowercase and have individual words separated by `-`
  - **SHALL** be `dh` for a publication that manages the core and common ADHA FHIR materials for a FHIR version 
  - **SHALL** be the [optional-subpackage-case] of the ImplementationGuide [resource-id] for a publication that manages a subpackage
- [publication-version] is the `ImplementationGuide.version` string, see the section [Versioning](policy.html#versioning) 


**Publication URL expected resolution behaviour**

Non-versioned and non-FHIR versioned result in the latest being displayed. This behaviour **SHOULD** be supported by publication of the latest version at the versioned and non-versioned URLs. If this is a subsequent release it will replace the content that was present at the non-versioned URLs.

Taking the Medicare Records FHIR Implementation Guide. If it, hypothetically (and this is not expected!), concurrently supported two major versions of FHIR it may result in publication URLs like in the following table that associates expected content found at those URLs.

<table class="list" width="90%">
    <tr>
        <th>publication URL entered into browser</th>
        <th>Resolution behaviour</th>
    </tr>
    <tr>
        <td>[base-publication-url]/medicare-records</td>
        <td>Display the Home page of the latest FHIR version and spec version = R4 v2.1.0</td>
    </tr>
    <tr>
        <td>[base-publication-url]/STU3/medicare-records/1.0.0</td>
        <td>Display the Home page of the latest FHIR version of v1.0.0 = STU3 v1.0.0</td>
    </tr>
    <tr>
        <td>[base-publication-url]/medicare-records/2.1.0</td>
        <td>Display the Home page of the latest FHIR version of v2.1.0 = R4 v2.1.0</td>
    </tr>
    <tr>
        <td>[base-publication-url]/STU3/medicare-records/2.1.0</td>
        <td>Display the Home page of the specified FHIR version and spec version = STU3 v2.1.0</td>
    </tr>
    <tr>
        <td>[base-publication-url]/R4/medicare-records/2.1.0</td>
        <td>Display the Home page of the specified FHIR version and spec version = R4 v2.1.0</td>
    </tr>
</table>

Taking the ADHA FHIR Implementation Guide, if this publication was hypothetically published only in FHIR R4 and had two published versions 1.0.0 and 1.1.0: 

<table class="list" width="90%">
    <tr>
        <th>publication URL entered into browser</th>
        <th>Resolution behaviour</th>
    </tr>
    <tr>
        <td>[base-publication-url]/dh</td>
        <td>Display the Home page of the latest FHIR version and spec version = R4 v1.1.0</td>
    </tr>
    <tr>
        <td>[base-publication-url]/dh/1.0.0</td>
        <td>Display the Home page of the latest FHIR version of spec version 1.0.0 = R4 v1.0.0</td>
    </tr>
    <tr>
        <td>[base-publication-url]/R4/dh/1.0.0</td>
        <td>Display the Home page of the specified FHIR version and spec version = R4 v1.0.0</td>
    </tr>
    <tr>
        <td>[base-publication-url]/dh/1.1.0</td>
        <td>Display the Home page of the latest FHIR version of spec version 1.1.0 = R4 v1.1.0</td>
    </tr>
    <tr>
        <td>[base-publication-url]/R4/dh/1.1.0</td>
        <td>Display the Home page of the specified FHIR version and spec version = R4 v1.1.0</td>
    </tr>
</table>


