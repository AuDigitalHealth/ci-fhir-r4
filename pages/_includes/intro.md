# {{ page.title }}
<!-- <h3 style="color:#ff0000;">Draft for internal use</h3> -->
{:.no_toc}

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}
<!-- end TOC -->

> <p style="color:#ff0000;">This material is under active development and content is added or updated on a regular basis.</p>

This Australian Digital Health Agency Implementation Guide contains:
* Australian Digital Health Agency FHIR [policy](policy.html): the policy for defining, using, maintaining, and implementing using FHIR version R4 within the Australian Digital Health Agency
* Australian Digital Health Agency FHIR [guidance](guidance.html): guidance and clarification on how FHIR resources are used in accordance with the policy
* Australian Digital Health Agency FHIR assets:
  * [capability statements](conformance.html):
  * [profiles](profiles.html): additional rules and constraints that build on and extend the HL7<sup>TM</sup> AU [Australian Base Implementation Guide (AU Base 2)](http://build.fhir.org/ig/hl7au/au-fhir-base/index.html) and HL7<sup>TM</sup> [FHIR<sup>&reg;</sup>, Release 4 (v{{ site.data.fhir.version }}) [HL7FHIR4]](#HL7FHIR4). 
  * [extensions](extensions.html): that form part of an Australian Digital Health Agency FHIR Profiles.
  * [terminology](terminology.html): 
  * [maps](structuremaps.html): 
  * [search parameters and operations](searchparams.html): 
  * ....
* Exchange standards:
  * RESTful API A (FHIR) resource exchange framework. A set of core search parameters can be found on the resource profile pages (see Resource Index below)
  * FHIR Messaging: A messaging exchange framework. The FHIR equivalent of HL7v2 messaging
  * FHIR Documents: A document based exchange framework. The FHIR equivalent of HL7v3 CDA (clinical document architecture)

This material forms the base standard for Australian Digital Health Agency FHIR R4 APIs. Each API will have additional conformance requirements, including FHIR profiles, extensions, and resources that are found in the API documentation in Australian Digital Health Agency API Catalogue[TBD](https://developer.digitalhealth.gov.au/taxonomy/term/361/all).