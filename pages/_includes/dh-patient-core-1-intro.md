#### Australian Digital Health Agency Core Patient
The purpose of this profile is to provide a core representation of a patient for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including country of birth, year of arrival and preferred language.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Patient](http://hl7.org/fhir/R4/patient.html) that are supported. 

This profile is designed to set a core Patient standard:
* Querying for records associated with a patient
* Record or update a record associated with a patient

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Guidance
The following guidance applies:
* country of birth is represented with [extension:birthPlace](StructureDefinition-patient-ident-1-definitions.html#Patient.extension:birthPlace)
* a local identifier may have an [HPI-O scoped](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html) or [ABN-scoped](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html) identifier namespace if there isn't a local namespace available (see the [FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for more information)
* an IHI conforms to [AU IHI](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html)
* an Australian address conforms to [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-ihi.html)
* family name may be present in Patient.name.family or Patient.name.text
* a patient's biological sex is a separate Observation resource, e.g. biological sex assigned at birth conforms to [AU Sex Assigned At Birth](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-sexassignedatbirth.html)

The table below provides guidance on the representation of communication preferences for a patient.
<table class="list" style="width:100%">
    <colgroup>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 24%;"/>
    </colgroup>
	<tbody>
      <tr>
        <th>Scenario</th>
        <th>communication.language</th>
        <th>communication.preferred</th>
        <th>extension:interpreterRequired</th>
		<th>Notes</th>
      </tr>
      <tr>
        <td>Preferred language is English</td>
        <td></td>
        <td></td>
        <td></td>
        <td>No element sent, as per the guidance in the <a href="http://hl7.org/fhir/patient-definitions.html#Patient.communication">Comments</a> of Patient.communication</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is known</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is not known</td>
        <td></td>
        <td></td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>language.coding</td>
        <td></td>
        <td></td>
        <td>Each language instantiated in separate communication nodes; communication.preferred and extension:interpreterRequired may be sent as needed.</td>
      </tr>
    </tbody>
</table>

Blank cells in the above table indicate that the given element is absent from the resource.

#### Boundaries and relationships
This profile is referenced by 
[ADHA Core AllergyIntolerance](StructureDefinition-dh-allergyintolerance-core-1.html),  
[ADHA Core BodyStructure](StructureDefinition-dh-bodystructure-core-1.html), 
[ADHA Document Bundle](StructureDefinition-dh-bundle-document-1.html), 
[ADHA Message Bundle](StructureDefinition-dh-bundle-message-1.html), 
[ADHA Core Composition](StructureDefinition-dh-composition-core-1.html),  
[ADHA Document Composition](StructureDefinition-dh-composition-document-1.html), 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Advance Care Custodian Record Composition](StructureDefinition-dh-composition-document-1.html), 
[ADHA Advance Care Planning Composition](StructureDefinition-dh-composition-document-1.html), 
[ADHA Aged Care Transfer Summary Composition](StructureDefinition-dh-composition-acts-1.html), 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-phs-1.html), 
[ADHA Medicare Overview Composition](StructureDefinition-dh-composition-mov-1.html), 
[ADHA National Cancer Screening Program Participation Composition](StructureDefinition-dh-composition-ncspp-1.html), 
[ADHA Personal Health Notes Composition](StructureDefinition-dh-composition-phn-1.html), 
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html), 
[ADHA Pharmacist Shared Medicines List Composition](StructureDefinition-dh-composition-psml-1.html), 
[ADHA Prescription and or Dispense History Composition](StructureDefinition-dh-composition-pdl-1.html), 
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html), 
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html), 
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Core DiagnosticReport](StructureDefinition-dh-diagnosticreport-core-1.html), 
[ADHA Implantable Medical Device](StructureDefinition-dh-device-implantable-1.html), 
[ADHA Advance Care Planning Document DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Record of Claim against MBS](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html), 
[ADHA Record of Claim against PBS or RPBS](StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html), 
[ADHA Core Flag](StructureDefinition-dh-flag-core-1.html), 
[ADHA Australian Immunisation Register Notice](StructureDefinition-dh-flag-air-1.html), 
[ADHA Core Immunization](StructureDefinition-dh-immunization-core-1.html), 
[ADHA Record of Immunisation from Australian Immunisation Register](StructureDefinition-dh-immunization-air-1.html), 
[ADHA Core List](StructureDefinition-dh-list-core-1.html), 
[ADHA Immunisation History List](StructureDefinition-dh-list-immunization-1.html), 
[ADHA Prescription and or Dispense History List](StructureDefinition-dh-list-medication-pdl-1.html), 
[ADHA Prescription List](StructureDefinition-dh-list-pres-1.html), 
[ADHA Core List](StructureDefinition-dh-list-core-1.html), 
[ADHA Medication Use List](StructureDefinition-dh-list-medication-use-1.html), 
[ADHA Practitioner Medicine Review List](StructureDefinition-dh-list-medication-use-pmr-1.html), 
[ADHA Core Medication](StructureDefinition-dh-medication-core-1.html), 
[ADHA Core MedicationAdministration](StructureDefinition-dh-medicationadministration-core-1.html), 
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-1.html), 
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-1.html), 
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html), 
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA National Cancer Screening Program Participation Observation](StructureDefinition-dh-observation-ncspp-1.html), 
[ADHA Simple Observation](StructureDefinition-dh-observation-simple-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), 
[ADHA Core RelatedPerson](StructureDefinition-dh-relatedperson-core-1.html),  
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html), and 
[ADHA Core Specimen](StructureDefinition-dh-specimen-core-1.html).