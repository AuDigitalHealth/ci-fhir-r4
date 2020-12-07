# {{ site.data.fhir.ig.title }} FHIR Implementation Guide
<h3 style="color:#ff0000;">Draft for internal use</h3>
{:.no_toc}

{% include publish-box.html %}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}
<!-- end TOC -->

## Introduction

This implementation guide is an HL7<sup>TM</sup> FHIR<sup>&reg;</sup> specification to represent a Specialist and Other Diagnostic Reports (SODR) diagnostic report. A diagnostic report is a report issued by a diagnostic service provider to the requester, i.e. the results including any interpretation provided from one or more performed diagnostic investigations.

This [implementation guide](http://hl7.org/fhir/R4/implementationguide.html#scope) is based on [FHIR, Release 4 (v{{ site.data.fhir.version }}) [HL7FHIR4]](#HL7FHIR4).


## Document purpose and scope

The primary aim of this implementation guide is to support implementing diagnostic report in [FHIR, Release 4 (v{{ site.data.fhir.version }}) [HL7FHIR4]](#HL7FHIR4). The resulting FHIR can be used for the electronic exchange of diagnostic report information between healthcare providers.

This implementation guide is not to be used as a guide to presentation (or rendering) of the data. It contains no information as to how the data described by it should be displayed and no such guidance should be inferred.

This implementation guide does not describe transport or persistence mechanism of the resources described by it.

Reference has been made to International and Australian Standards, and to Standards from Health Level Seven. The following standards are referred to in the text in such a way that some or all of its content constitutes requirements for the purposes of this specification:
* [FHIR, Release 4 (v{{ site.data.fhir.version }}) [HL7FHIR4]](#HL7FHIR4)
* [Australian Base Profiles Implementation Guide (AU Base 2) [HL7AUBIG]](#HL7AUBIG)

Wherever possible, material in this specification is based on existing standards. All efforts have been made to minimise divergence from the HL7 Australia profiles of HL7 International standards ([Australian Base Profiles Implementation Guide (AU Base 2) [HL7AUBIG]](#HL7AUBIG)) to provide for system interoperability and compatibility with other profiles. Issues of an editorial nature in the source material (such as spelling or punctuation errors) are intentionally reproduced.

This implementation guide is the basis for the corresponding [Diagnostic Report CDA implementation guide [TBD]](#). The profiles referenced by this FHIR implementation guide are the 'models' that are mapped into CDA.

This implementation guide makes reference to the set of profiles and extensions (StructureDefinitions) that form part of this implementation guide. Some profiles and extensions are described by this implementation guide, and some are described by other published sources such as the [Australian Base Profiles Implementation Guide (AU Base 2) [HL7AUBIG]](#HL7AUBIG) or [FHIR, Release 4 (v{{ site.data.fhir.version }}) [HL7FHIR4]](#HL7FHIR4). The profiles described in this implementation guide do not include profile-specific mappings to another format as part of their description. Any profile-specific mappings to another format is the subject of an implementation guide for that particular format, e.g. a diagnostic report CDA implementation guide. The base FHIR® R4 mapping content for each of the resources referenced in this implementation guide can be found on the applicable resource documentation in the [FHIR, Release 4 (v{{ site.data.fhir.version }}) [HL7FHIR4]](#HL7FHIR4).


## Context and use
A FHIR implementation guide is part of a package of documents and files that support the development of software to exchange a type of clinical document, a specification package.

An Agency clinical document specification package supports software developers to create and interpret instances of a clinical document. The core of each package is a specification of the information content of instances of the clinical document.

Supplementary contents of the package include statements of scenarios for which the specification is appropriate, guidance on implementing the specification, and guidance on testing purported instances.

The contents may include:
* Information Requirements - statement of requirements
* CDA implementation guide (CDA IG) – a statement of constraints and custom extensions on [HL7 Clinical Document Architecture [HL7CDAR2]](#HL7CDAR2)
* FHIR implementation guide (FHIR IG) - a statement of constraints and custom extensions on [HL7 FHIR [HL7FHIR4]](#HL7FHIR4)
* template package library – a set of Schematron schema to test conformance of CDA documents with the specification
* conformance profile – a statement of conformance requirements for exchanging documents within a particular scenario such as the My Health Record
* a set of release notes

Specification packages contain only files relevant to the particular clinical document. Specifications that are common to many clinical documents and should be considered part of the specification package, as directed by the relevant release note and conformance profile, may be contained elsewhere.

## How to read this document
This implementation guide contains descriptions of both constraints on FHIR and, where necessary, custom extensions to FHIR, for the purposes of fulfilling the requirements for Australian implementations of diagnostic report. These descriptions are defined as a set of FHIR [profiles](http://hl7.org/fhir/r4/profiling.html).  

The table below identifies the profile that is the starting point for an implementer in a scenario. That starting profile will reference the additional profiles necessary to assert [conformance](conformance.html) for this implementation guide.

<table border="1" cellpadding="1" valign="middle">
<tbody>
   <col width="15%" />
   <col width="15%" />
  <col width="auto" />
 <tr bgcolor="#DCDCDC">
    <th>Domain</th>
    <th>Profiled resource</th>
    <th>Scenario</th>
  </tr>

 
    <tr>
        <td rowspan="3">Specialist and Other Diagnostic</td>
        <td>Composition</td>
        <td>For exchanging a specialist and other diagnostic report as a document (containing a diagnostic report), the <a href="StructureDefinition-composition-otherdiagreport-1.html">Other Diagnostic Report</a> profile is the starting point. </td> 
    </tr>

    <tr>
        <td>DiagnosticReport</td>
        <td>For exchanging a specialist and other diagnostic report as a diagnostic report, with content suitable for the My Health Record, the <a href="StructureDefinition-diagnosticreport-otherdiag-mhr-1.html">My Health Record Other Diagnostic Report</a> profile is the starting point.</td> 
    </tr>

    <tr>
        <td>DiagnosticReport</td>
        <td>For exchanging a specialist and other diagnostic report as a diagnostic report, with atomic data, the <a href="StructureDefinition-diagnosticreport-otherdiag-atomic-1.html">Atomic Other Diagnostic Report</a> profile is the starting point. </td> 
    </tr>
    


 </tbody>
</table> 

## Editorial note
This implementation guide is an early working specification that is available for comment and review. It may be used to solicit feedback and to provide insight as to the expected content in a forthcoming stable and approved version of the specification.

This implementation guide may not be considered to be complete enough or sufficiently reviewed to be safe for implementation and use in production systems. It may have known issues and still be in development.


## Intended audience
This implementation guide is aimed at software development teams, architects, designers, clinicians and informatics researchers who are responsible for the delivery of clinical applications, infrastructure components and messaging interfaces, and also for those who wish to evaluate the clinical suitability of the Agency-endorsed specifications.

This implementation guide and related artefacts are technical in nature and the audience is expected to be familiar with the language of health data specifications and to have some familiarity with health information standards and specifications, such as FHIR and Standards Australia IT-014 documents. Definitions and examples are provided to clarify relevant terminology usage and intent.

## Document Information

### Key Information

<table class="list" width="100%" cellspacing="6">
    <tbody>
        <tr>
            <td><b>Owner</b></td>
            <td>National Health Chief Information Officer, Infrastructure Operations</td>
        </tr>
        <tr>
            <td><b>Contact for enquiries</b></td>
            <td>
                <p>Australian Digital Health Agency Help Centre <br />
                t:   1300 901 001<br />
                e:  <a href ="mailto:help@digitalhealth.gov.au">help@digitalhealth.gov.au</a></p>    
            </td>
        </tr>
    </tbody>
</table> 

### Product Version History
<table class="list" width="100%" cellspacing="6">
    <tbody>
        <tr>
            <th>Product version</th>
            <th>Date</th>
            <th>Release comments</th>
        </tr>
        <tr>
            <td>1.1.0</td>
            <td>TBD</td>
            <td>TBD</td>
        </tr>
    </tbody>
</table> 

## Known issues
This table lists known issues with this specification at the time of publishing. We are working on solutions to these issues and encourage comments to help us develop these solutions.

<table border="1" cellpadding="1" valign="middle">
<tbody>
   <col width="15%" />
  <col width="auto" />
 <tr bgcolor="#DCDCDC">
    <th>Reference</th>
    <th>Description</th>
  </tr>
      <tr>
        <td>Diagnostic Report FHIR implementation guide roadmap</td>
        <td>This draft implementation guide has been developed with a suite of draft profiles and some early examples in order to form a basis for engagement with industry and other stakeholders. The profiles in this implementation guide are derived from <a href ="https://build.fhir.org/ig/hl7au/au-fhir-base//index.html">HL7 AU Base</a> material and support diagnostics reporting including specialist and other diagnostics reports. <br/><br/>

Stakeholder feedback is sought on a number of extant issues described on the pages of each profile as well as via <a href ="https://github.com/AuDigitalHealth/ci-fhir-r4/issues">ci-fhir-r4 GitHub</a> issues. As engagement progresses, the profiles in this implementation guide are expected to be matured to reflect stakeholder agreement on those issues. <br/><br/>

Additional examples are intended to be included in future releases to stimulate community discussion on important modelling aspects.  <br/><br/>

Further development of the HL7 AU profiles is necessary to mature understanding of domain scenarios and resolve a number of extant issues described in <a href ="https://github.com/hl7au/au-fhir-base/issues">au-fhir-base GitHub</a> issues. Additional terminology support, e.g. support for specialist and other diagnostics, is forthcoming. These improvements will be incorporated into the profiles in this implementation guide. 

     </td>

    </tr>
    
    <tr>
        <td>Source material errors</td>
        <td>Material in this specification is based on existing standards and all efforts have been made to minimise divergence. Issues of an editorial nature in the source material (such as spelling or punctuation errors) are intentionally reproduced.</td>
    </tr>
    <tr>
        <td>Non-resolving profile URLs</td>
        <td>Canonical URLs with the prefix of <span style="font-family:courier;">http://ns.electronichealth.net.au/ci/fhir/3.0/StructureDefinition/</span> do not resolve. All profiles have an associated <a href="http://hl7.org/fhir/STU3/structuredefinition-definitions.html#StructureDefinition.url">canonical URL</a> that is used to uniquely identify that structure definition (i.e. profile) and is expected to be an address at which that structure definition is (or will be) published. Work is underway to ensure that these URLs resolve or redirect to a meaningful end point in the future.</td>
    </tr>
 </tbody>
</table> 

## References


<!--|[<a name="DH2019i">DH2019i</a>]| Australian Digital Health Agency, Not yet published, Diagnostic Report CDA Implementation Guide, Version 2.0.|-->

|[<a name="HL7AUBIG">HL7AUBIG</a>]| HL7 Australia, Continuous Integration Build R4, Australian Base Implementation Guide (AU Base 2), v2.1.0 (Standard for Trial Use), accessed 05 February 2020.|
||[http://build.fhir.org/ig/hl7au/au-fhir-base/index.html](http://build.fhir.org/ig/hl7au/au-fhir-base/index.html)|    

|[<a name="HL7CDAR2">HL7CDAR2</a>]|Health Level Seven, Inc., January 2010, HL7 Clinical Document Architecture, Release 2.|
||[http://www.hl7.org/implement/standards/product_brief.cfm?product_id=7](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=7)]|  

|[<a name="HL7FHIR">HL7FHIR</a>]| Health Level Seven, Inc., FHIR - HL7Wiki, accessed 05 February 2020.|
||[http://wiki.hl7.org/index.php?title=FHIR](http://wiki.hl7.org/index.php?title=FHIR)|

|[<a name="HL7FHIR4">HL7FHIR4</a>]|Health Level Seven, Inc., 30 October 2019, FHIR R4.|
||[http://hl7.org/fhir/R4/](http://hl7.org/fhir/R4/)|
