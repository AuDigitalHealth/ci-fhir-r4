# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

> <p style="color:#ff0000;">This material is under active development and content is added or updated on a regular basis.</p>


## Introduction

The Australian Digital Health Agency FHIR Implementation Guide contains HL7™ FHIR® Release 4 (R4) artefacts authored and maintained by the Agency to support the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. 

Wherever possible, material in this specification is based on existing standards. All efforts have been made to minimise divergence from the HL7 Australia profiles of HL7 International standards to provide for system interoperability and compatibility with other profiles.


<!--## Scope

Release 1.0.0 of this guide is limited to the FHIR conformance artefacts (i.e. [Profiles and Extensions](profiles.html)) that define the data structure of FHIR resources for the following record types: 
- Australian Immunisation Register (AIR) information
- Australian Organ Donor Register (AODR) information
- Pharmaceutical Benefits Scheme (PBS) / Repatriation Pharmaceutical Benefits Scheme (RPBS) claims information
- Medicare Benefits Schedule (MBS) / Department of Veterans' Affairs (DVA) claims information

The FHIR conformance artefacts are published in an Agency FHIR NPM package for use with FHIR and FHIR-aware tools. 

The FHIR package contains the validation form (JSON + SCH) of the conformance artefacts for direct use in validation operations and example resource instances that demonstrate use cases and conformance requirements. This release of the implementation guide is scoped to the content of the Agency FHIR NPM package v1.0.0 and is provided to assist readers and users in understanding the content of that package.  
-->

## How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): This page describes the set of rules to claim conformance to this guide including the expectations for must support elements in the profiles governed by this guide, referred to as ADHA (Australian Digital Health Agency) profiles.
- [Policy](policy.html): This page describes the policies for definition, use, implementation and management of FHIR.
- [Guidance](guidance.html): This page provides guidance on using the profiles defined in this guide.
- FHIR Artefacts: These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles.html): This set of pages describes the profiles and extensions that are defined in this guide to exchange quality data. Each profile page includes a narrative description and guidance, formal definition and a "Quick Start" guide which summarises the supported search transactions for each profile. Although the guidance typically focuses on the profiled elements, it may also may focus on un-profiled elements to aid with implementation.
  - [Capability Statements](capstatements.html): This set of pages describes the expected FHIR capabilities of the various actors.
  - [NamingSystems](namingsys.html): This set of pages describes the identifier systems defined in this guide as formal artefact enabling inclusion in a registry for other systems to find and understand an identifier.
  - [Search Parameters and Operations](searchparams.html): This page page lists the defined Operations and Search Parameters that are used in transactions.
  - [Terminology](terminology.html): This page lists the value sets and code system defined for profiles.
  - [Maps](terminology.html): This page lists the concept maps and structure maps defined for profiles.
- [Downloads](downloads.html): This page provides links to downloadable artefacts including the Agency FHIR NPM package.
- [Disclaimers](disclaimers.html): This page lists the licensing, copyright, and disclaimers under which this guide is issued. 


## Future of this guide

The content published in this guide are designed to be a base set of requirements for FHIR implementation. 

This guide undergoes cycles of development to introduce new capabilities such as new record types, implementation contexts, or interactions. At the completion of each cycle of development a new version of this guide is published.
