# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>


## Value Sets

The following value sets form part of this implementation guide.

<table class="list" width="100%">
    <tr>
        <th>ValueSet</th>
        <th>URI</th>
        <th>Usage</th>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-contact-purpose.html">Contact Purpose</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/ValueSet/contact-purpose</td>
        <td><a href="StructureDefinition-dh-organization-core-1.html">ADHA Core Organization</a>, <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-contact-purpose.html">Contact Purpose</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v3-ActEncounterCode-extended.html">ActEncounterCode - AU Extended</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/ValueSet/v3-ActEncounterCode-extended</td>
        <td><a href="StructureDefinition-dh-encounter-core-1.html">ADHA Core Encounter</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0203-extended.html">hl7VS-identifierType - AU Extended</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/ValueSet/v2-0203-extended</td>
        <td>ABN,ACN,ARBN</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-2">Indicator of Hypersensitivity or Intolerance to Substance</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-2</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1">Clinical Finding</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a>, <a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a>, <a href="StructureDefinition-dh-diagnosticreport-core-1.html">ADHA Core DiagnosticReport</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-administrative-gender.html">AdministrativeGender</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/administrative-gender</td>
        <td><a href="StructureDefinition-dh-patient-core-1.html">ADHA Core Patient</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/advance-care-planning-document-type-1">Advance Care Planning Document Type</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/advance-care-planning-document-type-1</td>
        <td><a href="StructureDefinition-dh-composition-acp-1.html">ADHA Advance Care Planning Document Composition</a>, <a href="StructureDefinition-dh-documentreference-acp-1.html">ADHA Advance Care Planning Document DocumentReference</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1">Adverse Reaction Agent</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/reaction-event-severity">AllergyIntoleranceSeverity</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/reaction-event-severity</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/allergyintolerance-clinical">AllergyIntolerance Clinical Status Codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/allergyintolerance-clinical</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/allergyintolerance-verification">AllergyIntolerance Verification Status Codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/allergyintolerance-verification</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/allergy-intolerance-type">AllergyIntoleranceType</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/allergy-intolerance-type</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/allergy-intolerance-category">AllergyIntoleranceCategory</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/allergy-intolerance-category</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality">AllergyIntoleranceCriticality</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality</td>
        <td><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></td>
    </tr>
    <tr>
        <td><a href="https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-medication-1">Australian Medication</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1</td>
        <td><a href="StructureDefinition-dh-medication-core-1.html">ADHA Core Medication</a>, <a href="StructureDefinition-dh-medicationdispense-core-1.html">ADHA Core MedicationDispense</a>, <a href="StructureDefinition-dh-medicationstatement-core-1.html">ADHA Core MedicationStatement</a>, <a href="StructureDefinition-dh-medicationrequest-core-1.html">ADHA Core MedicationRequest</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1">Australian Medicines Terminology Vaccine</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1</td>
        <td><a href="StructureDefinition-dh-immunization-core-1.html">ADHA Core Immunization</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/body-site-1">Body Site</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/body-site-1</td>
        <td><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a>, <a href="StructureDefinition-dh-bodystructure-core-1.html">ADHA Core BodyStructure</a>, <a href="StructureDefinition-dh-medicationadministration-core-1.html">ADHA Core MedicationAdministration</a></td>
    </tr>
        <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/body-site-relative-site-qualifier-1">Body Site Relative Site Qualifier</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/body-site-relative-site-qualifier-1</td>
        <td><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core BodyStructure</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-bundle-type.html">BundleType</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/bundle-type</td>
        <td><a href="StructureDefinition-dh-bundle-document-1.html">ADHA Document Bundle</a>, <a href="StructureDefinition-dh-bundle-message-1.html">ADHA Message Bundle</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2">Common Languages in Australia</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2</td>
        <td><a href="StructureDefinition-dh-patient-core-1.html">ADHA Core Patient</a>, <a href="StructureDefinition-dh-practitioner-core-1.html">ADHA Core Practitioner</a>, <a href="StructureDefinition-dh-relatedperson-core-1.html">ADHA Core RelatedPerson</a> </td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-composition-attestation-mode.html">CompositionAttestationMode</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/composition-attestation-mode</td>
        <td><a href="StructureDefinition-dh-composition-document-1.html">ADHA Core Document Composition</a>, <a href="StructureDefinition-dh-composition-acdcr-1.html">ADHA Advance Care Directive Custodian Record Document Composition</a>, <a href="StructureDefinition-dh-composition-acp-1.html">ADHA Advance Care Planning Document Composition</a>, <a href="StructureDefinition-dh-composition-phn-1.html">ADHA Personal Health Notes Document Composition</a>, <a href="StructureDefinition-dh-composition-phs-1.html">ADHA Personal Health Summary Document Composition</a>, <a href="StructureDefinition-dh-composition-shs-1.html">ADHA Shared Health Summary Document Composition</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-composition-status.html">CompositionStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/composition-status</td>
        <td><a href="StructureDefinition-dh-composition-core-1.html">ADHA Core Composition</a>, <a href="StructureDefinition-dh-composition-acdcr-1.html">ADHA Advance Care Directive Custodian Record Document Composition</a>, <a href="StructureDefinition-dh-composition-acp-1.html">ADHA Advance Care Planning Document Composition</a>, <a href="StructureDefinition-dh-composition-phn-1.html">ADHA Personal Health Notes Document Composition</a>, <a href="StructureDefinition-dh-composition-shs-1.html">ADHA Shared Health Summary Document Composition</a>, <a href="StructureDefinition-dh-documentreference-acp-1.html">ADHA Advance Care Planning Document DocumentReference</a></td>
    </tr> 
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/condition-category">Condition Category Codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/condition-category</td>
        <td><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a></td>
    </tr>    
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/condition-severity">Condition/Diagnosis Severity</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/condition-severity</td>
        <td><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/condition-clinical">Condition Clinical Status Codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/condition-clinical</td>
        <td><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1">Clinical Condition</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1</td>
         <td><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/condition-ver-status">ConditionVerificationStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/condition-ver-status</td>
        <td><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/data-absent-reason">DataAbsentReason</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/data-absent-reason</td>
        <td><a href="StructureDefinition-dh-observation-core-1.html">ADHA Core Observation</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/diagnosticreportstatus-report-available-1">DiagnosticReportStatus Report Available</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/diagnosticreportstatus-report-available-1</td>
        <td><a href="StructureDefinition-dh-diagnosticreport-core-1.html">ADHA Core DiagnosticReport</a></td>
    </tr>
  
     <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html">Diagnostic Service Section Codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/diagnostic-service-sections</td>
        <td><a href="StructureDefinition-dh-diagnosticreport-core-1.html">ADHA Core DiagnosticReport</a></td>
    </tr>
     <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-document-reference-status.html">DocumentReferenceStatus</a></td>
        <td>HL7</td>
        <td>	http://hl7.org/fhir/ValueSet/document-reference-status</td>
        <td><a href="StructureDefinition-dh-documentreference-1.html">ADHA Core DocumentReference</a>, <a href="StructureDefinition-dh-documentreference-acp-1.html">Advance Care Planning Document DocumentReference</a></td>
    </tr>  
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-document-relationship-type.html">DocumentRelationshipType</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/document-relationship-type</td>
        <td><a href="StructureDefinition-dh-composition-document-1.html">ADHA Core Document Composition</a>, <a href="StructureDefinition-dh-composition-acdcr-1.html">ADHA Advance Care Directive Custodian Record Document Composition</a>, <a href="StructureDefinition-dh-composition-acp-1.html">ADHA Advance Care Planning Document Composition</a>, <a href="StructureDefinition-dh-composition-phn-1.html">ADHA Personal Health Notes Document Composition</a>, <a href="StructureDefinition-dh-composition-phs-1.html">ADHA Personal Health Summary Document Composition</a>, <a href="StructureDefinition-dh-composition-shs-1.html">ADHA Shared Health Summary Document Composition</a></td>
    </tr>   
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/event-status">EventStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/event-status</td>
        <td><a href="StructureDefinition-dh-procedure-core-1.html">ADHA Core Procedure</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/health-summary-non-clinical-empty-reason-1">Health Summary Non-Clinical Empty Reason</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/health-summary-non-clinical-empty-reason-1</td>
        <td><a href="StructureDefinition-dh-composition-phs-1.html">ADHA Personal Health Summary Document Composition</a>, <a href="StructureDefinition-dh-composition-shs-1.html">ADHA Shared Health Summary Document Composition</a></td>
    </tr>
    <tr>
        <td><a href="https://terminology.hl7.org/2.1.0/ValueSet-v2-0916.html">hl7VS-relevantClincialInformation</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/ValueSet/v2-0916</td>
        <td><a href="StructureDefinition-dh-specimen-core-1.html">ADHA Core Specimen</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-immunization-status.html">Immunization Status Codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/immunization-status</td>
        <td><a href="StructureDefinition-dh-immunization-core-1.html">ADHA Core Immunization</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-list-status.html">ListStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/list-status</td>
        <td><a href="StructureDefinition-dh-list-core-1.html">ADHA Core List</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-location-status.html">LocationStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/location-status</td>
        <td><a href="StructureDefinition-dh-location-core-1.html">ADHA Core Location</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-location-mode.html">LocationMode</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/location-mode</td>
        <td><a href="StructureDefinition-dh-location-core-1.html">ADHA Core Location</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-medication-admin-status.html">Medication administration status codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/medication-admin-status</td>
        <td><a href="StructureDefinition-dh-medicationadministration-core-1.html">ADHA Core MedicationAdministration</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-medicationdispense-status.html">Medication dispense status codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/medicationdispense-status</td>
        <td><a href="StructureDefinition-dh-medicationdispense-core-1.html">ADHA Core MedicationDispense</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/medication-reason-taken-1">Medication Reason Taken</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/medication-reason-taken-1</td>
        <td><a href="StructureDefinition-dh-medicationstatement-core-1.html">ADHA Core MedicationStatement</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-medicationrequest-intent.html">Medication request intent</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/medicationrequest-intent</td>
        <td><a href="StructureDefinition-dh-medicationrequest-core-1.html">ADHA Core MedicationRequest</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-medication-statement-status.html">Medication status codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/medication-statement-status</td>
        <td><a href="StructureDefinition-dh-medicationstatement-core-1.html">ADHA Core MedicationStatement</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-medicationrequest-status.html">Medicationrequest status</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/medicationrequest-status</td>
        <td><a href="StructureDefinition-dh-medicationrequest-core-1.html">ADHA Core MedicationRequest</a></td>
    </tr>
     <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/non-clinical-empty-reason-1">Non-Clinical Empty Reason</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/non-clinical-empty-reason-1</td>
        <td><a href="StructureDefinition-dh-list-core-1.html">ADHA Core List</a></td>
    </tr>   
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-observation-interpretation.html">Observation Interpretation Codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/observation-interpretation</td>
        <td><a href="StructureDefinition-dh-observation-core-1.html">ADHA Core Observation</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/ValueSet/observation-status">ObservationStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/observation-status</td>
        <td><a href="StructureDefinition-dh-observation-core-1.html">ADHA Core Observation</a></td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/procedure-1">Procedure</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/procedure-1</td>
        <td><a href="StructureDefinition-dh-healthcareservice-core-1.html">ADHA Core Procedure</a></td>
    </tr>
        <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-administered-1">Reason Vaccine Administered</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/reason-vaccine-administered-1</td>
        <td><a href="StructureDefinition-dh-immunization-core-1.html">ADHA Core Immunization</a></td>
    </tr>
    <tr>
        <td><a href="">https://healthterminologies.gov.au/fhir/ValueSet/separation-mode-1</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/ValueSet/separation-mode-1</td>
        <td><a href="StructureDefinition-dh-encounter-core-1.html">ADHA Core Encounter</a></td>
    </tr>
    <tr>
        <td><a href="https://terminology.hl7.org/2.1.0/ValueSet-v3-ServiceDeliveryLocationRoleType.html">ServiceDeliveryLocationRoleType</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType</td>
        <td><a href="StructureDefinition-dh-location-core-1.html">ADHA Core Location</a></td>
    </tr>
    <tr>
        <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.html">ServiceDeliveryLocationRoleType - AU Extended</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/ValueSet/v3-ServiceDeliveryLocationRoleType-extended</td>
        <td><a href="StructureDefinition-dh-location-core-1.html">ADHA Core Location</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/valueset-substance-category.html">Substance Category Codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/ValueSet/substance-category</td>
        <td><a href="StructureDefinition-dh-substance-core-1.html">ADHA Core Substance</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td><a href="StructureDefinition-dh-TBD-core-1.html">ADHA Core TBD</a></td>
    </tr>
</table>


## Code Systems
The following code systems form part of this implementation guide.

<table class="list" width="100%">
    <tr>
        <th>CodeSystem</th>
        <th>Source</th>
        <th>URI</th>
        <th>OID</th>
    </tr>
    <tr>
        <td><a href="https://terminology.hl7.org/2.1.0/CodeSystem-v3-ActCode.html">ActCode</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org/CodeSystem/v3-ActCode</td>
        <td>2.16.840.1.113883.5.4</td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v3-ActCode.html">ActCode AU</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/CodeSystem/v3-ActCode</td>
        <td>2.16.840.1.113883.2.3.4.1.4.20</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-administrative-gender.html">	AdministrativeGender</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/administrative-gender</td>
        <td>2.16.840.1.113883.4.642.4.2</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical">AllergyIntolerance Clinical Status Codes</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical</td>
        <td>2.16.840.1.113883.4.642.1.1373</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/allergyintolerance-verification">AllergyIntolerance Verification Status Codes</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/allergyintolerance-verification</td>
        <td>2.16.840.1.113883.4.642.1.1371</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/allergy-intolerance-type">AllergyIntoleranceType</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/allergy-intolerance-type</td>
        <td>2.16.840.1.113883.4.642.4.132</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/allergy-intolerance-category">AllergyIntoleranceCategory</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/allergy-intolerance-category</td>
        <td>2.16.840.1.113883.4.642.4.134</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/allergy-intolerance-criticality">AllergyIntoleranceCriticality</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/allergy-intolerance-criticality</td>
        <td>2.16.840.1.113883.4.642.4.130</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/reaction-event-severity">AllergyIntoleranceSeverity</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/reaction-event-severity</td>
        <td>2.16.840.1.113883.4.642.4.136</td>
    </tr>
    <tr>
        <td><a href="https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats">Australian Immunisation Register Vaccine</a></td>
        <td>Services Australia</td>
        <td>https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats</td>
        <td>1.2.36.1.2001.1005.17</td>
    </tr>
    <tr>
        <td><a href="TBD">Australian Indigenous Status</a></td>
        <td>ADHA (METeOR AIHW)</td>
        <td>https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1</td>
        <td>1.2.36.1.2001.1004.200.10012</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1">Australian States and Territories</a></td>
        <td>ADHA (METeOR AIHW)</td>
        <td>https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1</td>
        <td>1.2.36.1.2001.1004.200.10013</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-bundle-type.html">BundleType</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/bundle-type</td>
        <td>2.16.840.1.113883.4.642.4.621</td>
    </tr>
  
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-composition-attestation-mode.html">CompositionAttestationMode</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/composition-attestation-mode</td>
        <td>2.16.840.1.113883.4.642.4.239</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-composition-status.html">CompositionStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/composition-status</td>
        <td>2.16.840.1.113883.4.642.4.242</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org.au/CodeSystem/contact-purpose">Contact Purpose</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/CodeSystem/contact-purpose</td>
        <td>2.16.840.1.113883.2.3.4.1.4.19</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/contactentity-type">Contact entity type</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/contactentity-type</td>
        <td>2.16.840.1.113883.4.642.1.1129</td>
    </tr>
   <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/condition-category">Condition Category Codes</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/condition-category</td>
        <td>2.16.840.1.113883.4.642.4.1073</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/condition-clinical">Condition Clinical Status Codes</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/condition-clinical</td>
        <td>2.16.840.1.113883.4.642.4.1074</td>
    </tr>
        <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/condition-ver-status">ConditionVerificationStatus</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/condition-ver-status</td>
        <td>2.16.840.1.113883.4.642.4.1075</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-data-absent-reason.html">DataAbsentReason</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/data-absent-reason</td>
        <td>2.16.840.1.113883.4.642.4.1048</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1">Date Accuracy Indicator</a></td>
        <td>ADHA (METeOR AIHW)</td>
        <td>https://healthterminologies.gov.au/fhir/CodeSystem/date-accuracy-indicator-1</td>
        <td>1.2.36.1.2001.1004.200.10014</td>
    </tr>
    <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/v2-0360">degreeLicenseCertificate</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/v2-0360</td>
        <td>2.16.840.1.113883.18.220</td>
    </tr>
   
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v2-0360.html">DegreeLicenseCertificate AU</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/CodeSystem/v2-0360</td>
        <td>2.16.840.1.113883.2.3.4.1.3.360</td>
    </tr>
    <tr>
        <td><a href="https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/diagnostic-report-status?ui:source=search">DiagnosticReportStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/diagnostic-report-status</td>
        <td>2.16.840.1.113883.4.642.4.236</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-document-reference-status.html">DocumentReferenceStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/document-relationship-type</td>
        <td>2.16.840.1.113883.4.642.4.245</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-document-relationship-type.html">DocumentRelationshipType</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/document-reference-status</td>
        <td>2.16.840.1.113883.4.642.4.8</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-encounter-status.html">EncounterStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/encounter-status</td>
        <td>2.16.840.1.113883.4.642.4.247</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/event-status">EventStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/event-status</td>
        <td>2.16.840.1.113883.4.642.4.110</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1">Individual Healthcare Identifier Record Status</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1</td>
        <td>1.2.36.1.2001.1004.200.10016</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/ihi-status-1">Individual Healthcare Identifier Status</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/CodeSystem/ihi-status-1</td>
        <td>1.2.36.1.2001.1004.200.10015</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/nctis-data-components-1">NCTIS Data Components</a></td>
        <td>ADHA</td>
        <td>https://healthterminologies.gov.au/fhir/CodeSystem/nctis-data-components-1</td>
        <td>1.2.36.1.2001.1001.101</td>
    </tr>
    <tr>
        <td><a href="https://healthterminologies.gov.au/fhir/CodeSystem/separation-mode-1">Separation Mode</a></td>
        <td>ADHA ( METeOR)</td>
        <td>https://healthterminologies.gov.au/fhir/CodeSystem/separation-mode-1</td>
        <td>2.16.840.1.113883.13.65</td>
    </tr>
    <tr>
        <td><a href="https://www.gs1.org/">GTIN</a></td>
        <td>GS1</td>
        <td>https://www.gs1.org/gtin</td>
        <td>1.3.160</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/v2/0074/index.html">HL7 Version 2 Table 0074</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/v2-0074</td>
        <td></td>
    </tr>
    <tr>
        <td><a href="https://www.iso.org/iso-3166-country-codes.html">ISO 3166</a></td>
        <td>ISO</td>
        <td>urn:iso:std:iso:3166</td>
        <td>1.0.3166.1.2.2</td>
    </tr>
     <tr>
        <td><a href="http://terminology.hl7.org/CodeSystem/v2-0203">IdentifierType</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/v2-0203</td>
        <td>2.16.840.1.113883.18.108</td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v2-0203.html">IdentifierType AU</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/CodeSystem/v2-0203</td>
        <td>2.16.840.1.113883.2.3.4.1.3.203</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-list-empty-reason.html">List Empty Reasons</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/list-empty-reason</td>
        <td>2.16.840.1.113883.4.642.4.1106</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-list-status.html">ListStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/list-status</td>
        <td>2.16.840.1.113883.4.642.4.327</td>
    </tr>   
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-location-status.html">LocationStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/location-status</td>
        <td>2.16.840.1.113883.4.642.4.333</td>
    </tr>
    <tr>
        <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-location-type.html">Location Type AU</a></td>
        <td>HL7 AU</td>
        <td>http://terminology.hl7.org.au/CodeSystem/location-type</td>
        <td>2.16.840.1.113883.2.3.4.1.4.26</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-location-mode.html/">LocationMode</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/location-mode</td>
        <td>2.16.840.1.113883.4.642.4.331</td>
    </tr>
    <tr>
        <td><a href="https://loinc.org/">LOINC</a></td>
        <td>Regenstrief Institute, Inc.</td>
        <td>http://loinc.org</td>
        <td>2.16.840.1.113883.6.1</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-medication-admin-status.html">Medication administration status codes</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/medication-admin-status</td>
        <td>2.16.840.1.113883.4.642.4.1311</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-medicationdispense-status.html">Medication dispense status codes</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/medicationdispense-status</td>
        <td>2.16.840.1.113883.4.642.4.1313</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-medicationrequest-intent.html">Medication request intent</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/CodeSystem/medicationrequest-intent</td>
        <td>2.16.840.1.113883.4.642.4.1378</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-medication-statement-status.html">Medication status codes</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/CodeSystem/medication-statement-status</td>
        <td>2.16.840.1.113883.4.642.4.1379</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-medicationrequest-status.html">Medicationrequest status</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/CodeSystem/medicationrequest-status</td>
        <td>2.16.840.1.113883.4.642.4.1377</td>
    </tr>
    <tr>
        <td><a href="https://tools.ietf.org/search/bcp13">Multipurpose Internet Mail Extensions (MIME)</a></td>
        <td>IETP</td>
        <td>urn:ietf:bcp:13</td>
        <td> </td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/observation-status">ObservationStatus</a></td>
        <td>HL7</td>
        <td>http://hl7.org/fhir/observation-status</td>
        <td>2.16.840.1.113883.4.642.4.401</td>
    </tr>
    <tr>
        <td><a href="https://developer.digitalhealth.gov.au/products/clinical-terminology">SNOMED CT (SNOMED CT AU (Australian Medicines Terminology))</a></td>
        <td>IHTSDO (ADHA)</td>
        <td>http://snomed.info/sct</td>
        <td>2.16.840.1.113883.6.96</td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/codesystem-substance-category.html">Substance Category Codes</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/substance-category</td>
        <td>2.16.840.1.113883.4.642.4.1138 </td>
    </tr>  
    <tr>
        <td><a href="https://terminology.hl7.org/2.1.0/CodeSystem-v2-0916.html">RelevantClincialInformation</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/v2-0916</td>
        <td>2.16.840.1.113883.18.422</td>
    </tr>
    <tr>
        <td><a href="https://terminology.hl7.org/2.1.0/CodeSystem-v3-RoleCode.html">RoleCode</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/v3-RoleCode</td>
        <td>2.16.840.1.113883.5.111</td>
    </tr>
    <tr>
        <td><a href="https://tools.ietf.org/search/bcp47">Tags for Identifying Languages</a></td>
        <td>IETP</td>
        <td>urn:ietf:bcp:47</td>
        <td> </td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/v3/ObservationInterpretation/cs.html">v3 Code System ObservationInterpretation</a></td>
        <td>HL7</td>
        <td>http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation</td>
        <td>2.16.840.1.113883.5.83</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
    <tr>
        <td><a href="TBD">TBD</a></td>
        <td>TBD</td>
        <td>TBD</td>
        <td>TBD</td>
    </tr>
  </table>