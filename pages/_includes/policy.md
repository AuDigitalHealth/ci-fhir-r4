# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>


The policy for defining, using, maintaining, and implementing using FHIR version R4 within the Australian Digital Health Agency.

## Conformance


> **ADHA-FHIR-CONF-01** A system **SHALL** comply with the applicable [HL7 FHIR standard](https://www.hl7.org/fhir/)


> **ADHA-FHIR-CONF-02** An ADHA Core FHIR Asset **SHALL** conform to the applicable HL7 AU Base FHIR Asset


> **ADHA-FHIR-CONF-03** A system **SHALL** reject any request to create or update a resource that contains a resource that is not supported by the Conformance/CapabilityStatement resource for that endpoint


> **ADHA-FHIR-CONF-04** A system **SHALL** reject any request to create or update a resource that contains a modifier extension that is not supported by the Conformance/CapabilityStatement resource for that endpoint


> **ADHA-FHIR-CONF-05** A system **SHALL** reject any request to create or update a resource that contains a resource that does not conform to the Conformance/CapabilityStatement resource for that endpoint


> **ADHA-FHIR-PROFILE-06** Use of extensions **SHALL** follow order of precedence:
> 1. HL7 extension
> 2. HL7 AU extension
> 3. ADHA extension
> 4. Other


> **ADHA-FHIR-CONF-07** An ADHA Core profile **SHALL NOT** be used where a more specific profile is applicable. An implementation SHALL ensure the resource conforms to that specific profile.

For example, a Shared Health Summary is to conform to the specific profile governing conformance of Shared Health Summary rather than only conform to ADHA Document Composition. 

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


## Asset Naming TBD CI w Architecture Team

> **ADHA-FHIR-ASSET-NAME-0X** An ADHA Core FHIR Asset name **SHALL** conform to an agreed, documented format

insert format rules here for assets - profiles, extensions, value sets, code systems, concept maps, structure definitions, operation definitions, search parameters, naming systems, capability statements


> **ADHA-FHIR-ASSET-NAME-0X** A FHIR Asset derived from an ADHA Core FHIR Asset **SHALL** conform to an agreed, documented format

insert format rules here for assets - profiles, extensions, value sets, code systems, concept maps, structure definitions, operation definitions, search parameters, naming systems, capability statements



## Asset URIs TBD CI w Architecture Team

tbd

> **ADHA-FHIR-ASSET-URI-0X** All ADHA Core FHIR resource URIs **SHOULD** be resolvable URLs



## Profiling

> **ADHA-FHIR-PROFILE-0X** An ADHA Core FHIR Asset **SHALL NOT** define alternate elements for use in place of elements defined in a HL7 FHIR base resource


> **ADHA-FHIR-PROFILE-0X** An ADHA FHIR Asset **SHALL** derive from an ADHA FHIR Core Asset in the first instance, if available, otherwise it **SHALL** derive from an applicable HL7 AU Base Asset  


> **ADHA-FHIR-PROFILE-0X** An ADHA Core FHIR Asset **SHALL** derive from HL7 AU Base material in the first instance if available, otherwise derive

## Publication 

> **ADHA-FHIR-PUB-0X** ADHA Core FHIR resource URIs **SHALL** be resolve - there are publication implications here


> **ADHA-FHIR-PUB-0X** ADHA FHIR materials published for public implementation **SHALL** be released as an [FHIR Package](https://registry.fhir.org/learn)


> **ADHA-FHIR-PUB-0X** ADHA FHIR resources and supporting assets **SHALL** be published in a publicly available Australian Digital Health Agency

The GitHub repository for the Australian Digital Health Agency is https://github.com/AuDigitalHealth
All FHIR materials relating to national systems and other nationally defined FHIR API profiles (including StructureDefinitions, ValueSets, OperationDefinitions, ImplementationGuides, etc.) **SHALL** be held on a publicly available GitHub repository.
Comments, feedback and suggestions from developers on FHIR resources (and associated documentation) **SHOULD** be managed through **TBD** using the standard features for raising and tracking issues on the site


> **ADHA-FHIR-PUB-0X**



## Versioning TBD Architecture Team w CI

> **ADHA-FHIR-VER-0X** A FHIR endpoint URL **SHALL** include the HL7 FHIR version

**SHALL** follow the format: https://[baseurl]/FHIR/[fhir-version]


> **ADHA-FHIR-VER-0X** A FHIR endpoint **SHALL** be versioned ....

**SHALL** follow the format: https://[baseurl]/FHIR/[fhir-version]/[endpoint-version]


> **ADHA-FHIR-VER-0X** ADHA FHIR resources **SHALL** be versioned 

**SHALL** follow [semantic versioning standard](https://semver.org/).


> **ADHA-FHIR-VER-0X** ADHA FHIR profiles **SHALL** URL include the major url

**SHALL** follow the format: [baseurl]-[MAJOR] 


## Must Support

Labelling an element [Must Support]( https://www.hl7.org/fhir/conformance-rules.html#mustSupport) means that implementations that produce or consume resources **SHALL** provide "support" for the element in some meaningful way. ADHA profiles impose a core set of Must Support obligations on classes of implementations based on roles and data services. Some implementation contexts require additional support, e.g. ePrescribing. The specifications and/or profiles that define a particular implementation context **SHALL** make clear the required "support" for that context. 

A sending system:
- when making a request to an endpoint **SHALL** conform to the Conformance/Capability statement for that endpoint and conform to all applicable ADHA conformance requirements 
- when constructing a resource:
   - **SHALL** ensure the resource conforms to the applicable ADHA profile
   - **SHALL** implement the guidance on extensibility if including “additional” elements
   - **SHALL** implement the guidance on missing data if populating a mandatory element by asserting missing within the applicable ADHA profile constraints

A receiving system:
- **SHALL** be capable of meaningfully processing the Must Support elements where the resource has been constructed in accordance with ADHA conformance requirements; depending on local requirements this may mean display, persist, index, or action in an event or request workflow
- **MAY** choose to reject non-conformant resources 
- **SHALL** interpret missing data elements within resource instances as data not present in the source system
- **SHALL** be able to process resources containing additional elements according to extensiblity

A persisting system:
- **SHALL** reject any request to create or update a resource that is not supported by the Conformance/CapabilityStatement, contains a modifier extension that is not supported by the Conformance/CapabilityStatement, or is a supported type but does not conform to the Conformance/Capability statement resource for that endpoint.  
in circumstances other than those called out above (request to create or update a resource), a persisting system **MAY** choose to reject non-conformant resources but is not required to do so
- **SHALL** be able to persist resources containing data elements asserting missing information according tothe section on [Missing Data](https://build.fhir.org/ig/AuDigitalHealth/ci-fhir-r4/guidance.html#missing-data)
- **SHALL** be able to persist resources containing additional elements according to section on [Extensibility – “additional” elements](guidance.html#extensibility--additional-elements)

> **ADHA-FHIR-0X**


## Packaging

> **ADHA-FHIR-PACK-0X**




