## {{ site.data.fhir.igName }} FHIR Implementation Guide
<h3 style="color:#ff0000;">Draft for internal use</h3>
{:.no_toc}

{% include publish-box.html %}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}
<!-- end TOC -->

## Introduction

This implementation guide is an Australian realm implementation guide of the HL7<sup>TM</sup> FHIR<sup>&reg;</sup> specification to represent a [Event Summary (ES)](StructureDefinition-composition-es-1.html).

This [implementation guide](http://hl7.org/fhir/STU3/implementationguide.html#scope) is based on [FHIR, Release 3 (STU)[HL7FHIR3]](#HL7FHIR3).


## Document purpose and scope

The primary aim of this implementation guide is to support implementing ES in [FHIR, Release 3 (STU)[HL7FHIR3]](#HL7FHIR3). The resulting FHIR document can be used for the electronic exchange of ES information between healthcare providers.

This document is not to be used as a guide to presentation (or rendering) of the data. It contains no information as to how the data described by it should be displayed and no such guidance should be inferred from this document.

This document does not describe transport or persistence mechanism of the resources described by it.

Reference has been made to International and Australian Standards, and to Standards from Health Level Seven. The following standards are referred to in the text in such a way that some or all of its content constitutes requirements for the purposes of this specification:
* [FHIR, Release 3 (STU)[HL7FHIR3]](#HL7FHIR3)
* [Australian Base Profiles Implementation Guide [HL7AUBIG]](#HL7AUBIG)

Wherever possible, material in this specification is based on existing standards. All efforts have been made to minimise divergence from the HL7 Australia profiles of HL7 International standards ([Australian Base Profiles Implementation Guide [HL7AUBIG]](#HL7AUBIG)) to provide for system interoperability and compatibility with other profiles. Issues of an editorial nature in the source material (such as spelling or punctuation errors) are intentionally reproduced.

This implementation guide is the basis for the corresponding [Event Summary CDA implementation guide [DH2019i]](#DH2019i). The profiles referenced by this FHIR implementation guide are the 'models' that are mapped into CDA.

This implementation guide makes reference to the set of profiles and extensions (StructureDefinitions) that form part of this implementation guide. Some profiles and extensions are described by this implementation guide, and some are described by other published sources such as the [Australian Base Profiles Implementation Guide [HL7AUBIG]](#HL7AUBIG) or [FHIR, Release 3 (STU)[HL7FHIR3]](#HL7FHIR3). The profiles described in this implementation guide do not include profile-specific mappings to another format as part of their description. Any profile-specific mappings to another format is the subject of an implementation guide for that particular format, e.g. a ES CDA implementation guide. The base FHIR® STU3 mapping content for each of the resources referenced in this implementation guide can be found on the applicable resource documentation in the [FHIR, Release 3 (STU)[HL7FHIR3]](#HL7FHIR3).


## Context and use
A FHIR implementation guide is part of a package of documents and files that support the development of software to exchange a type of clinical document, a specification package.

An Agency clinical document specification package supports software developers to create and interpret instances of a clinical document. The core of each package is a specification of the information content of instances of the clinical document.

Supplementary contents of the package include statements of scenarios for which the specification is appropriate, guidance on implementing the specification, and guidance on testing purported instances.

The contents may include:
* Information Requirements - statement of requirements for [Event Summary Information Requirements [NEHT2015a]](#NEHT2015a)
* CDA implementation guide (CDA IG) – a statement of constraints and custom extensions on [HL7 Clinical Document Architecture [HL7CDAR2]](#HL7CDAR2)
* FHIR implementation guide (FHIR IG) - a statement of constraints and custom extensions on [HL7 FHIR [HL7FHIR3]](#HL7FHIR3)
* template package library – a set of Schematron schema to test conformance of CDA documents with the specification
* conformance profile – a statement of conformance requirements for exchanging documents within a particular scenario such as the My Health Record
* A set of release notes

Specification packages contain only files relevant to the particular clinical document. Specifications that are common to many clinical documents and should be considered part of the specification package, as directed by the relevant release note and conformance profile, may be contained elsewhere.

## How to read this document
This implementation guide contains descriptions of both constraints on FHIR and, where necessary, custom extensions to FHIR, for the purposes of fulfilling the requirements for Australian implementations of ES. These descriptions are defined as a set of FHIR [profiles](http://hl7.org/fhir/stu3/profiling.html).  

The starting point for the profiles included in this implementation guide is the [Event Summary](StructureDefinition-composition-es-1.html) profile, which references the additional profiles necessary to assert [conformance](conformance.html) for this implementation guide.

## Editorial note
This implementation guide is an early working specification that is available for comment and review. It may be used to solicit feedback and to provide insight as to the expected content in a forthcoming stable and approved version of the specification.

This implementation guide may not considered to be complete enough or sufficiently reviewed to be safe for implementation and use in production systems. It may have known issues and still be in development.


## Intended audience
This implementation guide is aimed at software development teams, architects, designers, clinicians and informatics researchers who are responsible for the delivery of clinical applications, infrastructure components and messaging interfaces, and also for those who wish to evaluate the clinical suitability of the Agency-endorsed specifications.

This implementation guide and related artefacts are technical in nature and the audience is expected to be familiar with the language of health data specifications and to have some familiarity with health information standards and specifications, such as FHIR and Standards Australia IT-014 documents. Definitions and examples are provided to clarify relevant terminology usage and intent.


## References

|[<a name="NEHT2015a">NEHT2015a</a>]| National E-Health Transition Authority, 10 April 2015, Event Summary Information Requirements, Version 1.2.|
||[https://developer.digitalhealth.gov.au/specifications/clinical-documents/ep-1817-2015/nehta-1845-2015](https://developer.digitalhealth.gov.au/specifications/clinical-documents/ep-1817-2015/nehta-1845-2015)|

<!--|[<a name="DH2019i">DH2019i</a>]| Australian Digital Health Agency, Not yet published, Event Summary CDA Implementation Guide, Version 2.0.|
||[https://developer.digitalhealth.gov.au/specifications/clinical-documents](https://developer.digitalhealth.gov.au/specifications/clinical-documents)|-->

|[<a name="HL7AUBIG">HL7AUBIG</a>]| HL7 Australia, Continuous Integration Build, Australian Base Profiles Implementation Guide, v1.0.0 (Standard for Trial Use), accessed 07 March 2019|
||[http://build.fhir.org/ig/hl7au/au-fhir-base/index.html](http://build.fhir.org/ig/hl7au/au-fhir-base/index.html)|    

|[<a name="HL7CDAR2">HL7CDAR2</a>]|Health Level Seven, Inc., January 2010, HL7 Clinical Document Architecture, Release 2.|
||[http://www.hl7.org/implement/standards/product_brief.cfm?product_id=7](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=7)]|  

|[<a name="HL7FHIR3">HL7FHIR3</a>]| Health Level Seven, Inc., 19 April 2017, FHIR, Release 3 (STU), accessed 10 March 2019|
||[http://hl7.org/fhir/STU3/index.html](http://hl7.org/fhir/STU3/index.html)|     

|[<a name="DH2019a">DH2019a</a>]| Australian Digital Health Agency, 28 February 2019, Common - Clinical Document, Version 1.5.2.|
||[https://developer.digitalhealth.gov.au/specifications/clinical-documents/ep-2807-2019](https://developer.digitalhealth.gov.au/specifications/clinical-documents/ep-2807-2019)|

|[<a name="HL7FHIR">HL7FHIR</a>]| Health Level Seven, Inc., FHIR - HL7Wiki, accessed 10 March 2019|
||[http://wiki.hl7.org/index.php?title=FHIR](http://wiki.hl7.org/index.php?title=FHIR)|

|[<a name="HL7FHIR4">HL7FHIR4</a>]|Health Level Seven, Inc., 19 April 2017, FHIR, Release 4 (First Normative content), accessed 10 March 2019|
||[http://hl7.org/fhir/R4/](http://hl7.org/fhir/R4/)|
 




