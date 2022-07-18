# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}


## Introduction

The Australian Digital Health Agency FHIR Implementation Guide contains HL7™ FHIR® Release 4 (R4) artefacts authored and maintained by the Australian Digital Health Agency to support the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. 

Wherever possible, material in this specification is based on existing standards. All efforts have been made to minimise divergence from the HL7 Australia profiles of HL7 International standards to provide for system interoperability and compatibility with other profiles.


## Scope

Release 1.0.0 of this guide is limited to the FHIR conformance artefacts (i.e. [Profiles and Extensions](profiles.html)) that define the data structure of FHIR resources for the following record types: 
- Australian Immunisation Register (AIR) information
- Australian Organ Donor Register (AODR) information
- Pharmaceutical Benefits Scheme (PBS) / Repatriation Pharmaceutical Benefits Scheme (RPBS) claims information
- Medicare Benefits Schedule (MBS) / Department of Veterans' Affairs (DVA) claims information

The FHIR conformance artefacts are published in an Agency FHIR NPM package for use with FHIR and FHIR-aware tools. 

The FHIR package contains the validation form (JSON + SCH) of the conformance artefacts for direct use in validation operations and example resource instances that demonstrate use cases and conformance requirements. This release of the implementation guide is scoped to the content of the Agency FHIR NPM package v1.0.0 and is provided to assist readers and users in understanding the content of that package.  


## How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): This page describe the set of rules to claim conformance to this guide including the expectations for must support elements in the ADHA profiles.
- [Guidance](guidance.html): This page provides guidance in using the profiles defined in this guide.
- [Profiles and Extensions](profiles.html): This page lists the set of Profile and Extension that are defined in this guide to exchange quality data. Each Profile page includes a narrative description and guidance, formal definition and a "Quick Start" guide which summarizes the supported search transactions for each Profile. Although the guidance typically focuses on the profiled elements, it may also may focus on un-profiled elements to aid with implementation.
- [Disclaimers](disclaimers.html): This page lists the licensing, copyright, and disclaimers under which this guide is issued. 
- [Downloads](downloads.html): This page provides links to downloadable artifacts including the Agency FHIR NPM package.
 

## Future of this guide

The content published in this guide are designed to be a base set of requirements for FHIR implementation. 

This guide undergoes cycles of development to introduce new capabilities such as new record types, implementation contexts, or interactions. At the completion of each cycle of development a new version of this guide is published.
