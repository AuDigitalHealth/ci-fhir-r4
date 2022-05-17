# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>


## Identifiers

* a local identifier may have an [HPI-O scoped](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html) or [ABN-scoped](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html) identifier namespace if there isn't a local namespace available (see the [FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for more information)
* All Australian address conforms to [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-ihi.html)


## References between resources
References between resources are supported as reference (literal reference), identifier (logical reference), and display (text description of target). Profiles define if one . provide examples TBD.

## Missing Data

There are situations when information for a particular data element is missing and the source system does not know reason for the absence of data. If the source system does not have data for an element with a minimum cardinality = 0 (including elements labeled *Must Support*), the data element **SHALL** be omitted from the resource.  If the data element is a a *Mandatory* element (in other words, where the minimum cardinality is > 0), it **SHALL** be present for *even if* the source system does not have data. The core specification provides guidance for what to do in this situation, which is summarized below:

1.  For *non-coded* data elements including type [Reference](http://hl7.org/fhir/R4/references.html#Reference), use the [DataAbsentReason Extension](http://hl7.org/fhir/StructureDefinition/data-absent-reason) in the data type
  - Use the code `unknown` - The value is expected to exist but is not known.
  
    Example: ExplanationOfBenefit resource where the patient's insurance coverage is not available.

    ~~~
    {
      "resourceType" : "ExplanationOfBenefit",
           ...
           "outcome" : "complete",
             "insurance" : [
               {
                 "focal" : true,
                 "coverage" : {
                   "extension" : [
                     {
                       "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                       "valueCode" : "unknown"
                     }
                   ]
                 }
               }
             ],
             ...
         }
    ~~~

1. For *coded* data elements:
   - *example*, *preferred*, or *extensible* binding strengths (CodeableConcept , or Coding datatypes):
      - if the source systems has text but no coded data, only the text element is used.
          - for Coding datatypes, the text only data is represented as a `display` element.
      - if there is neither text or coded data:
        - the appropriate "unknown" concept code **SHALL** be present if the binding strength is *extensible*
        - if the value set does not have an appropriate "unknown" concept code, use `unknown` from the [DataAbsentReason Code System](	http://terminology.hl7.org/CodeSystem/data-absent-reason).

        Example: AllergyIntolerance resource where the manifestation is unknown.
        ~~~
        ...
        "reaction" : [
          {
            "manifestation" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                    "code" : "unknown",
                    "display" : "unknown"
                  }
                ]
              }
            ]
          }
        ]
        ...
        ~~~

   - *required* binding strength (CodeableConcept or code datatypes):
      - the appropriate "unknown" concept code **SHALL** be present if the binding strength
      - if the value set does not have the appropriate “unknown” concept code you must use a concept from the value set otherwise the instance will not be conformant

        - For the ADHA Core profiles, the following mandatory or conditionally mandatory* status elements with required binding have no appropriate "unknown" concept code:
          - `AllergyIntolerance.clinicalStatus`*
          - `Condition.clinicalStatus`*
          - `Composition.status`
          - `DiagnosticReport.status`
          - `DocumentReference.status`
          - `Immunization.status`
          - `List.status`


        *The clinicalStatus element is conditionally mandatory based on resource specific constraints. 

        <!-- If one of these status code is missing, a `404` http error code and an OperationOutcome **SHALL** be returned in response to a read transaction on the resource. If returning a response to a search, the problematic resource **SHALL** be excluded from the search set and a *warning* OperationOutcome **SHOULD** be included indicating that additional search results were found but could not be compliantly expressed and have been suppressed.-->

## Medications


## Lists


## Migration of data to a FHIR R4 resource

In some uses cases the source of the information to be provided in a FHIR R4 resource is a different HL7 format or earlier version of FHIR. 

TBD - conformance rules 
