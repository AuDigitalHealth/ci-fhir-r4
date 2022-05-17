# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>


## "Business" identifiers

["Business" identifiers](http://hl7.org/fhir/R4/resource.html#identifiers) are used extensively in ADHA Profiles to consistently identify real world entities across systems, contexts of use, and other formats (variously, HL7 v2 , CDA , XDS, and many more). 

For ADHA profiles, the following identifier elements are to be populated with business identifiers:
   - `Device.identifier`
   - `DiagnosticReport.identifier`
   - `HealthcareService.identifier`
   - `MedicationDispense.identifier`
   - `MedicationRequest.identifier`
   - `Organization.identifier`
   - `Patient.identifier`
   - `RelatedPerson.identifier`
   - `Practitioner.identifier`
   - `PractitionerRole.identifier`
   - `ServiceRequest.identifier`
          
Business identifiers will typically be a national identifier (ABN, Medicare Provider, IHI), registry / exchange service identifier (ETP, eRx), or local identifier (MRN, Placer Identifier). An identifier **SHALL** conform to the applicable HL7 AU Identifier Profile as per **ADHA-FHIR-IDENT-08**. 

When constructing a local identifier it is preferable that an organisation uses their own local system identifier namespace but if that is not available then an organisation can use their HPI-O or ABN to construct a legal, globally unique identifier system for their local identifiers.

**HPI-O scoped identifiers**

HPI-O scoped identifiers enable exchange of an organisation's local identifiers for items like a patient medical record or a pathology report by combining a dedicated Agency published namespace and their HPI-O to construct a legal, globally unique identifier system for their local identifiers.

The full list of available identifier namespaces can be found by browsing the ns.electronichealth.net.au [identifier namespaces](http://ns.electronichealth.net.au/browse-identifiers.html); there are several HPI-O scoped identifier namespaces available:
   - http://ns.electronichealth.net.au/id/hpio-scoped/accessionnumber/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/dispense/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/prescription/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0
   - http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0

There are four parts to the using an HPI-O scoped identifier in FHIR: system, value, assigner, and depending on the identifier profile requirements a coded type. 

The system value is constructed in the format of [baseURL]/HPI-O, e.g.:

~~~
"system" : "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003621566699776"
~~~

The value contains the local identifier, e.g.:
~~~
"value" : "AMC-GA-001"
~~~

The assigner contains the name of the organisation that issues or manages

~~~
assigner" : {
    "display" : "Algregster Medical Center QLD"
}
~~~

Example: PractitionerRole resource with an employee number (local identifier)
~~~
    {
      "resourceType" : "PractitionerRole",
           ...
           "identifier" : [
             {
               "type" : {
                 "coding" : [
                   {
                     "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                     "code" : "EI",
                     "display" : "Employee number"
                   }
                 ],
                 "text" : "Employee Number"
               },
               "system" : "http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/8003621566699776",
               "value" : "AMC-GA-001",
               "assigner" : {
                 "display" : "Algregster Medical Center QLD"
             }
           }  
~~~


**ABN scoped identifier**

ABN scoped identifiers enable exchange of an organisation's local identifiers for items like a patient medical record by combining a dedicated Agency published namespace and their ABN to construct a legal, globally unique identifier system for their local identifiers.

The full list of available identifier namespaces can be found by browsing the ns.electronichealth.net.au [identifier namespaces](http://ns.electronichealth.net.au/browse-identifiers.html); there are two ABN-scoped identifier namespaces available:
   - http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0
   - http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0

There are four parts to the using an ABN scoped identifier in FHIR: system, value, assigner, and depending on the identifier profile requirements a coded type. 

The system value is constructed in the format of [baseURL]/ABN, e.g.:

~~~
"system" : "http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/004085616"
~~~

The value contains the local identifier, e.g.:
~~~
"value" : "123456"
~~~

The assigner contains the name of the organisation that issues or manages

~~~
assigner" : {
    "display" : "Test Hospital Org 1"
}
~~~

Example: Patient resource with a  medical record number (local identifier)
~~~
    {
      "resourceType" : "Patient",
           ...
           "identifier" : [
             {
               "type" : {
                 "coding" : [
                   {
                     "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                     "code" : "MR",
                     "display" : "Medical record number"
                   }
                 ],
                 "text" : "Medical Record Number"
               },
               "system" : "http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/004085616",
               "value" : "123456",
               "assigner" : {
                 "display" : "Test Hospital Org 1"
             }
           }  
~~~

## Addresses

* All Australian address conforms to [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-ihi.html)


## Person Names


## References between resources

References between resources are supported as reference (literal reference), identifier (logical reference), and display (text description of target). Profiles define if one . provide examples TBD.

## Missing Data

There are situations when information for a particular data element is missing and the source system does not know reason for the absence of data. If the source system does not have data for an element with a minimum cardinality = 0 (including elements labeled *Must Support*), the data element **SHALL** be omitted from the resource.  If the data element is a *Mandatory* element (in other words, where the minimum cardinality is > 0), it **SHALL** be present for *even if* the source system does not have data. The core specification provides guidance for what to do in this situation, which is summarized below:

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
        - if the value set does not have an appropriate "unknown" concept code, use `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason).

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

        - For ADHA Core profiles, the following mandatory or conditionally mandatory* status elements with required binding have no appropriate "unknown" concept code:
          - `AllergyIntolerance.clinicalStatus`*
          - `Condition.clinicalStatus`*
          - `Composition.status`
          - `DiagnosticReport.status`
          - `DocumentReference.status`
          - `Immunization.status`
          - `List.status`


        *The clinicalStatus element is conditionally mandatory based on resource specific constraints. 

        <!-- If one of these status code is missing, a `404` http error code and an OperationOutcome **SHALL** be returned in response to a read transaction on the resource. If returning a response to a search, the problematic resource **SHALL** be excluded from the search set and a *warning* OperationOutcome **SHOULD** be included indicating that additional search results were found but could not be compliantly expressed and have been suppressed.-->

## Medicine information

The FHIR standard defines the following resources for exchanging medicine information:
- [Medication](http://hl7.org/fhir/R4/medication.html)
- [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)
- [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
- [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)
- [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)

Profiles of MedicationStatement (and Medication) are used to support summary statements of medicine use. 
Profiles of MedicationAdministration (and Medication) are used to support medication chart and other administration use cases.
Profiles of MedicationDipsense (and Medication) are used to support to support dispense records and ePrescribing use cases.
Profiles of MedicationRequest (and Medication) are used to support prescription, ordering, and ePrescribing use cases.

For non-extemporaneous medications, the medication code (or set of codes) that identify the medicine item is the mandatory primary mechansim to identify a medicine and it's defining attributes (by terminology lookup) including form and strength. 

TBD: Nationally supported medicines terminology   

In addition to the medication code, the majority of use cases require support for the exchange of structured medicine information as separate data elements covering brand name, generic name, item form and strength, and manufacturer.

These data elements may be supported as coded, or text, and systems are likely to use a combination of coded and text elements when constructing a Medication resource.

1. For *coded* support for brand name, generic name, manufacturer, item form and strength:
   - Fully coded support is provided using code.coding with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) extension in the resource (i.e. MedicationAdministration, MedicationStatement, MedicationDispense, MedicationRequest, Medication):
      - brand name = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `BPD` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - generic name = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `UPD` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - generic item form and strength = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `UPDSF` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - branded item form and strength = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `BPDSF` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
   - If the resource is a Medication resource:
      - form and strength are also provided in `form`, `ingredient.itemCodeableConcept` and `ingredient.strength`
      - manufacturer = `manufacturer.identifer`
    Example: Medication with coded brand name, generic name, manufacturer, item form and strength.
    ~~~
    {
      "resourceType": "Medication",
      ...
      "code": {
        "coding": [
          {
            "extension": [
              {
                "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                "valueCoding": {
                  "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                  "code": "UPD",
                  "display": "Unbranded product with no strengths or form"
                }
              }
            ],
            "system": "http://pbs.gov.au/code/item",
            "code": "02647H",
            "display": "BENZYLPENICILLIN"
          },
          {
            "extension": [
              {
                "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                "valueCoding": {
                  "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                  "code": "BPD",
                  "display": "Branded product with no strengths or form"
                }
              }
            ],
            "system": "http://snomed.info/sct",
            "code": "3539011000036105",
            "display": "Benpen"
          },
          {
            "extension": [
              {
                "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                "valueCoding": {
                  "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                  "code": "UPDSF",
                  "display": "Unbranded product with strengths and form"
                }
              }
            ],
            "system": "http://snomed.info/sct",
            "code": "32753011000036104",
            "display": "benzylpenicillin 3 g injection, 1 vial"
          },
          {
            "extension": [
              {
                "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                "valueCoding": {
                  "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                  "code": "BPDSF",
                  "display": "Branded product with strengths and form"
                }
              }
            ],
            "system": "http://snomed.info/sct",
            "code": "32328011000036106",
            "display": "Benpen 3 g powder for injection, 1 vial"
          }
        ]
      },
      "manufacturer": {
        "identifier": {
          "system": "http://pbs.gov.au/code/manufacturer",
          "value": "CS"
        }
      },
      "form": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "129011000036109",
            "display": "injection"
          }
        ],
        "text": "Injection"
      },
      "ingredient": [
        {
          "itemCodeableConcept": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "1849011000036104",
                "display": "benzylpenicillin"
              }
            ]
          },
          "strength": {
            "numerator": {
              "value": 3,
              "unit": "g"
            },
            "denominator": {
              "value": 1,
              "unit": "unit"
            }
          }
        }
      ]
    }
    ~~~

1.  For *non-coded* support for brand name, generic name, manufacturer, item form and strength:
    - Fully non-coded support is provided using the Medication resource
        - brand name = [Medication Brand Name extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-brand-name.html)
        - generic name = [Medication Generic Name extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-generic-name.html)
        - item form and strength = `code.text`
        - manufacturer = `manufacturer.display`
  
    Example: Medication with text only brand name, generic name, item form and strength.
    ~~~
    {
      "resourceType": "Medication",
      ...
      "extension": [
        {
          "url": "http://hl7.org.au/fhir/StructureDefinition/medication-generic-name",
          "valueString": "Benzylpenicillin"
        },
        {
          "url": "http://hl7.org.au/fhir/StructureDefinition/medication-brand-name",
          "valueString": "Benpen"
        }
      ],
      "code": {
        "text": "Benpen 3 g powder for injection, 1 vial"
      },
      "manufacturer": {
        "display": "Seqirus"
      }
    }
    ~~~

## Lists


## Migration of data to a FHIR R4 resource

In some uses cases the source of the information to be provided in a FHIR R4 resource is a different HL7 format or earlier version of FHIR. 

TBD - conformance rules 

1. terminology canonical url - transforming data from OID based 
   a.	Convert system OID for ANZSCO urn:oid:2.16.840.1.113883.13 to url http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0
   b.	Convert system OID for PBS Manufacturer urn:oid:1.2.36.1.2001.1005.23 to url http://pbs.gov.au/code/manufacturer
   c.	Convert system OID for Australian Immunisation Register Vaccine urn:oid:1.2.36.1.2001.1005.17 to url https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats

1. Handling introduction of new mandatory elements in a FHIR R4 resource in order of precedent:
   a.	Direct population with data from the STU3 payload if possible
   b.	Population with an appropriate fixed value as demonstrated in Coverage.insurer and Coverage.scope
   c.	Only where neither of the above options is possible is the data to be handled as ‘missing data’