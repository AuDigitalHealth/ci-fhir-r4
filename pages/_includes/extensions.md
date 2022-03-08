# {{ page.title }}
> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>

The following extensions form part of this implementation guide:

<table class="list" width="100%">
    <tr>
        <th>Extension</th>
        <th>id</th>
        <th>Type</th>
        <th>Context</th>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-address-identifier.html">Address Identifier</a></td>
        <td>address-identifier</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Address">Address</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ahpraprofession-details.html">AHPRA Profession Details</a></td>
        <td>ahpraprofession-details</td>
        <td>(complex)</td>
        <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ahpraregistration-details.html">AHPRA Registration Details</a></td>
        <td>ahpraregistration-details</td>
        <td>(complex)</td>
        <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-indigenous-status.html">Australian Indigenous Status</a></td>
        <td>indigenous-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-timezone.html">Australian Time Zone </a></td>
        <td>au-timezone</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#CodeableConcept">CodeableConcept</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#time">time</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-birthplace.html">Birth Place</a></td>
        <td>birthPlace</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Address">Address</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-patient-birthtime.html">birthTime</a></td>
        <td>patient-birthTime</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#dateTime">dateTime</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient.birthDate</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-change-description.html">Change Description</a></td>
        <td>change-description</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/list.html">List.entry</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-closing-the-gap-registration.html">Closing the Gap Registration</a></td>
        <td>closing-the-gap-registration</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#boolean">boolean</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-contact-purpose.html">Contact Purpose</a></td>
        <td>contact-purpose</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#CodeableConcept">CodeableConcept</a></td>
        <td><a href="http://hl7.org/fhir/datatypes.html#ContactPoint">ContactPoint</a></td>
    </tr>    
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-date-accuracy-indicator.html">Date Accuracy Indicator</a></td>
        <td>date-accuracy-indicator</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#date">date</a>, <a href="http://hl7.org/fhir/R4/datatypes.html#dateTime">dateTime</a> </td>
    </tr>
        <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-date-of-arrival.html">Date of Arrival in Australia</a></td>
        <td>date-of-arrival</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#date">date</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a>, <a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a>, and <a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
    </tr>
      <tr>
        <td><a href="StructureDefinition-packed-in-daa-1.html">Dose Administration Aid Medicines Indicator</a></td>
        <td>packed-in-daa-1</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#CodeableConcept">CodeableConcept</a></td>
        <td><a href="http://hl7.org/fhir/R4/list.html">List</a></td>  
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-encounter-description.html">Encounter Description</a></td>
        <td>encounter-description</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/encounter.html">Encounter</a></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-dh-attachment-hl7-base64-1.html">ADHA Alternate HL7 Format as Attachment Base64 Encoded</a></td>
        <td>dh-attachment-hl7-base64-1</td>
        <td><a href="https://www.hl7.org/fhir/datatypes.html#Attachment">Attachment</a></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-dh-hl7-v2-base64-1.html">ADHA HL7 V2 as Base64</a></td>
        <td>dh-hl7-v2-base64-1</td>
        <td><a href="https://www.hl7.org/fhir/datatypes.html#base64Binary">base64Binary</a></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-dh-attachment-hl7-v2-base64-1.html">ADHA HL7 V2 as Attachment Base64 Encoded</a></td>
        <td>dh-attachment-hl7-v2-base64-1</td>
        <td><a href="https://www.hl7.org/fhir/datatypes.html#Attachment">Attachment</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ihi-record-status.html">IHI Record Status</a></td>
        <td>ihi-record-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ihi-status.html">IHI Status</a></td>
        <td>ihi-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ihi-verified.html">IHI Verified</a></td>
        <td>ihi-verified</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#dateTime">dateTime</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-information-recipient.html">Information Recipient</a></td>
        <td>information-recipient</td>
        <td><a href="http://hl7.org/fhir/R4/references.html#Reference">Reference</a></td>
        <td><a href="http://hl7.org/fhir/R4/composition.html">Composition</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html">Interpreter Required</a></td>
        <td>patient-interpreterRequired</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#boolean">boolean</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-brand-name.html">Medication Brand Name</a></td>
        <td>medication-brand-name</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/Medication">Medication</a>, <a href="http://hl7.org/fhir/R4/MedicationRequest">MedicationRequest</a>, <a href="http://hl7.org/fhir/R4/MedicationDispense">MedicationDispense</a>, <a href="http://hl7.org/fhir/R4/MedicationStatement">MedicationStatement</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-generic-name.html">Medication Generic Name</a></td>
        <td>medication-generic-name</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/Medication">Medication</a>, <a href="http://hl7.org/fhir/R4/MedicationRequest">MedicationRequest</a>, <a href="http://hl7.org/fhir/R4/MedicationDispense">MedicationDispense</a>, <a href="http://hl7.org/fhir/R4/MedicationStatement">MedicationStatement</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html">Medication Type</a></td>
        <td>medication-type</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-patient-mothersmaidenname.html">Mother's Maiden Name</a></td>
        <td>patient-mothersMaidenName</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-no-fixed-address.html">No Fixed Address</a></td>
        <td>no-fixed-address</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#boolean">boolean</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Address">Address</a></td>
    </tr>
</table>
