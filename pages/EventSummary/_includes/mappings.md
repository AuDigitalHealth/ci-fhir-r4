# {{ page.title }}

This informative section provides mapping from the data items (i.e. requirements) in [Event Summary Information Requirements [NEHT2015a]](index.html#NEHT2015a).

The table below matches the data items to the corresponding supported element in the Event Summary (ES) profile, or referenced profile (e.g. Summary Statement of Allergy or Intolerance). The hierarchy column demonstrates the path to that supported element from the root Composition. 

<table class="list" width="100%">
               <thead>
                    <tr>
                    <th>Data Item</th>
                    <th>Req. No</th>
                    <th>Element</th>
                    <th>Hierarchy</th>
                </tr>
                </thead>
               <tfoot>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>Supported element</td>
                    <td>The path to the supported element from the root Composition</td>
                </tr>
                </tfoot> 
                <tbody> 
                <tr>
                    <td>Individual Healthcare Identifier (mandatory)</td>
                    <td>022082</td>
                    <td>Patient.identifier</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.identifier</td>
                </tr>
                <tr>
                    <td>Individual’s Title (optional)</td>
                    <td>022081</td>
                    <td>Patient.name</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.name</td>

                </tr>
                <tr>
                    <td>Individual’s Given Name (optional)</td>
                    <td>023056</td>
                    <td>Patient.name</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.name</td>
                </tr>
                <tr>
                    <td>Individual’s family name (mandatory)</td>
                    <td>023058</td>
                    <td>Patient.name</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.name</td>
                </tr>
                <tr>
                    <td>Individual’s Name Suffix (optional)</td>
                    <td>023059</td>
                    <td>Patient.name</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.name</td>
                </tr>
                <tr>
                    <td>Individual’s Sex (mandatory)</td>
                    <td>024032</td>
                    <td>Patient.gender</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.gender</td>
                </tr>
                <tr>
                    <td>Individual’s Date of Birth (mandatory)</td>
                    <td>023060</td>
                    <td>Patient.birthDate</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.birthDate</td>
                </tr>
                <tr>
                    <td>Date of Birth accuracy indicator (optional)</td>
                    <td>024026</td>
                    <td>Patient.birthDate.date-accuracy-indicator</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.birthDate.date-accuracy-indicator</td>
                </tr>
                <tr>
                    <td>Individual’s Address (mandatory)</td>
                    <td>024041</td>
                    <td>Patient.address</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.address</td>
                </tr>
                <tr>
                    <td>Individual’s Electronic Communication Details (optional)</td>
                    <td>024042</td>
                    <td>Patient.telecom</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.telecom</td>
                </tr>
                <tr>
                    <td>Indigenous Status (mandatory)</td>
                    <td>024033</td>
                    <td>Patient.indigenous-status</td>
                    <td>Composition.subject(Patient as Patient with Mandatory IHI).Patient.indigenous-status</td>
                </tr>
                <tr>
                    <td>Healthcare Provider Professional Role (mandatory)</td>
                    <td>024040</td>
                    <td>PractitionerRole.code</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.code</td>
                </tr>
                 <tr>
                    <td>Healthcare provider organisation name (mandatory)</td>
                    <td>023070</td>
                    <td>Organization.name</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.organization(Organization as Base Organization).Organization.name</td>
                </tr>
                <tr>
                    <td>Healthcare Provider Employer Organisation Address</td>
                    <td>025064</td>
                    <td>Organization.address</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.organization(Organization as Base Organization).Organization.address</td>
                </tr>
                <tr>
                    <td>Healthcare Provider Employer Organisation Electronic Communication Detail</td>
                    <td>025063</td>
                    <td>Organization.telecom</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.organization(Organization as Base Organization).Organization.telecom</td>
                </tr>

                <tr>
                    <td>Healthcare provider Identifier-Individual (mandatory)</td>
                    <td>023066</td>
                    <td>Practitioner.identifier</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.practitioner(Practitioner as Practitioner with Mandatory Identifier).Practitioner.identifier </td>
                </tr>
                <tr>
                    <td>Healthcare Provider Identifier-Organisation (mandatory)</td>
                    <td>023071</td>
                    <td>Organization.identifier</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.organization(Organization as Base Organization).Organization.identifier</td>
                </tr>
                <tr>
                    <td rowspan="2">Healthcare Provider’s Title (optional)</td>
                    <td rowspan="2">023061</td>
                    <td>Practitioner.name</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.practitioner(Practitioner as Practitioner with Mandatory Identifier).Practitioner.name</td>
                </tr>
                <tr>
                    <td>Practitioner.name </td>
                    <td>Composition.author(Practitioner as Practitioner with Mandatory Identifier).Practitioner.name</td>
                </tr>
                <tr>
                    <td rowspan="2">Healthcare Provider Given Name (optional)</td>
                    <td rowspan="2">023062</td>
                    <td>Practitioner.name</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.practitioner(Practitioner as Practitioner with Mandatory Identifier).Practitioner.name</td>
                </tr>
                <tr>
                    <td>Practitioner.name</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.practitioner(Practitioner as Practitioner with Mandatory Identifier).Practitioner.name</td>
                </tr>
                <tr>
                    <td rowspan="2">Healthcare Provider Family Name (mandatory)</td>
                    <td rowspan="2">023064</td>
                    <td>Practitioner.name</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.practitioner(Practitioner as Practitioner with Mandatory Identifier).Practitioner.name</td>
                </tr>
                <tr>
                    <td>Practitioner.name</td>
                    <td>Composition.author(Practitioner as Practitioner with Mandatory Identifier).Practitioner.name</td>
                </tr>
                <tr>
                    <td rowspan="2">Healthcare provider name suffix (optional)</td>
                    <td rowspan="2">023065</td>
                    <td>Practitioner.name </td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.practitioner(Practitioner as Practitioner with Mandatory Identifier).Practitioner.name</td>
                </tr>
                <tr>
                    <td>Practitioner.name</td>
                    <td>Composition.author(Practitioner as Practitioner with Mandatory Identifier).name</td>
                </tr>
                <tr>
                    <td>Healthcare Provider Individual’s Workplace Address (optional)</td>
                    <td>024035</td>
                    <td>Practitioner.address</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.practitioner(Practitioner as Practitioner with Mandatory Identifier).Practitioner.name</td>
                </tr>
                <tr>
                    <td rowspan="2">Healthcare Provider Individual’s Workplace Electronic
                        Communication Details (optional)</td>
                    <td rowspan="2">024036</td>
                    <td>Practitioner.telecom</td>
                    <td>Composition.composition-author-role(PractitionerRole as Base PractitionerRole).PractitionerRole.practitioner(Practitioner as Practitioner with Mandatory Identifier).Practitioner.telecom</td>
                </tr>
                <tr>
                    <td>Practitioner.telecom</td>
                    <td>Composition.author(Practitioner as Practitioner with Mandatory Identifier).Practitioner.telecom</td>
                </tr>

 <!-- Event details -->               
               <tr>
                    <td rowspan="2">Component</td>
                    <td rowspan="2">025005</td>
                    <td>Composition.section(Event details)</td>
                    <td>Composition.section(Event details)</td>
                </tr>
                <tr>
                    <td>Composition.section(Event details).entry</td>
                    <td>Composition.section(Event details).entry</td>
                </tr>
                <tr>
                    <td rowspan="1">Reason for Visit</td>
                    <td rowspan="1">025006</td>
                    <td>Composition.section(Event details).text</td>
                    <td>Composition.section(Event details).text</td>
                </tr>
                <tr>
                    <td rowspan="1">Event Date</td>
                   <td rowspan="1">025007</td>
                    <td>Composition.date</td>
                    <td>Composition.date</td>
                </tr>
<!-- /Event details -->               
               
<!--Allergies and Adverse Reactions-->               
                <tr>
                    <td rowspan="4">Component</td>
                    <td rowspan="3">025009</td>
                    <td>Composition.section(Allergies)</td>
                    <td>Composition.section(Allergies)</td>
                </tr>
                <tr>
                    <td>Composition.section(Allergies).entry</td>
                    <td>Composition.section(Allergies).entry</td>
                </tr>
                <tr>
                    <td>Composition.section(Allergies).emptyReason</td>
                    <td>Composition.section(Allergies).emptyReason</td>
                </tr>
                <tr>
                    <td rowspan="1">025008</td>
                    <td>Information regarding an individual’s allergies and adverse reactions</td>
                    <td>Composition.section(Allergies).text</td>
                </tr>

 <!--Agent Description-->               
               <tr>
                    <td rowspan="4">Agent Description</td>
                    <td rowspan="2">025010</td>
                    <td>AllergyIntolerance.code</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.code</td>
                </tr>
                <tr>
                    <td>AllergyIntolerance.reaction.substance</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.reaction.substance</td>
                </tr>
                <tr>
                    <td rowspan="2">025011</td>
                    <td>AllergyIntolerance.code</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.code</td>
                </tr>
                <tr>
                    <td>AllergyIntolerance.reaction.substance</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.reaction.substance</td>
                </tr>

<!--Reaction Type-->               
                <tr>
                    <td rowspan="2">Reaction Type</td>
                    <td>024963</td>
                    <td>AllergyIntolerance.type</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.type</td>
                </tr>
                <tr>
                    <td>024964</td>
                    <td>AllergyIntolerance.type</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.type</td>
                </tr>
                
<!--Reaction Description-->               
                <tr>
                    <td rowspan="4">Reaction Description</td>
                    <td>025012</td>
                    <td>AllergyIntolerance.reaction.manifestation</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.reaction.manifestation</td>
                </tr>
                <tr>
                    <td>025013</td>
                    <td>AllergyIntolerance.reaction.manifestation</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.reaction.manifestation</td>
                </tr>
                <tr>
                    <td>025014</td>
                    <td>AllergyIntolerance.reaction.manifestation</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance).AllergyIntolerance.reaction.manifestation</td>
                </tr>
                <tr>
                    <td>025015</td>
                    <td>AllergyIntolerance.reaction.manifestation</td>
                    <td>Composition.section(Allergies).entry(AllergyIntolerance as Summary Statement of Allergy or Intolerance).AllergyIntolerance.reaction.manifestation</td>
                </tr>
 <!--/Allergies and Adverse Reactions-->               
               
 <!--Medicines-->               
               <tr>
                    <td rowspan="5">Component</td>
                    <td rowspan="3">025016</td>
                    <td>Composition.section(Medications)</td>
                    <td>Composition.section(Medications)</td>
                </tr>
                <tr>
                    <td>Composition.section(Medications).entry</td>
                    <td>Composition.section(Medications).entry</td>
                </tr>
                <tr>
                    <td>Composition.section(Medications).emptyReason</td>
                    <td>Composition.section(Medications).emptyReason</td>
                </tr>
                <tr>
                    <td rowspan="2">025017</td>
                    <td>Composition.section(Medications).entry</td>
                    <td>Composition.section(Medications).entry</td>
                </tr>
                <tr>
                    <td>Composition.section(Medications).emptyReason</td>
                    <td>Composition.section(Medications).emptyReason</td>
                </tr>
                
 <!--Item Description-->               
               <tr>
                    <td rowspan="3">Item Description</td>
                    <td>025018</td>
                    <td>Composition.section(Medications).entry</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement</td>
                </tr>
                <tr>
                    <td>025019</td>
                    <td>Composition.section(Medications).entry</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement</td>
                </tr>
                <tr>
                    <td>025020</td>
                    <td>Composition.section(Medications).entry</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement</td>
                </tr>
 
<!--Status-->               
                 <tr>
                    <td rowspan="2">Status</td>
                    <td>025021</td>
                    <td>MedicationStatement.status</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement.status</td>
                </tr>
                  <tr>
                    <td>025022</td>
                    <td>Composition.section(Medications).entry(reason for change)</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement.status</td>
                </tr>
             
<!--Dose Instruction-->                               
                <tr>
                    <td>Dose Instructions</td>
                    <td>025023</td>
                    <td>MedicationStatement.dosage</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement.dosage</td>
                </tr>
                
<!--Reason for Medicine-->                               
               <tr>
                    <td rowspan="2">Reason for Medicine</td>
                    <td>025024</td>
                    <td>MedicationStatement.reasonCode</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement.reasonCode</td>
                </tr>
                <tr>
                    <td>025025</td>
                    <td>MedicationStatement.reasonCode</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement.reasonCode</td>
                </tr>
                
<!--Additional Comments-->                               
                <tr>
                    <td rowspan="2">Additional comments</td>
                    <td>025026</td>
                    <td>MedicationStatement.note</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement.reasonCode.note</td>
                </tr>
                <tr>
                    <td>025027</td>
                    <td>MedicationStatement.note</td>
                    <td>Composition.section(Medications).entry(List as List of Medicine Changes from an Event).List.entry.item(MedicationStatement as Summary Statement of Known Medicine).MedicationStatement.reasonCode.note</td>
                </tr>
<!--/Medicines-->               
                 
<!--Medical History (Diagnoses / interventions-->                               
                <tr>
                <td rowspan="5">Component</td>
                <td rowspan="3">025030</td>
                <td>Composition.section(MedicalHistory)</td>
                <td>Composition.section(MedicalHistory)</td>
        </tr>
        <tr>
              <td>Composition.section(MedicalHistory).entry</td>
              <td>Composition.section(MedicalHistory).entry</td>
        </tr>
        <tr>
            <td>Composition.section(MedicalHistory).emptyReason</td>
            <td>Composition.section(MedicalHistory).emptyReason</td>
        </tr>
        <tr>
            <td rowspan="2">025031</td>
            <td>Composition.section(MedicalHistory).entry</td>
            <td>Composition.section(MedicalHistory).entry</td>
        </tr>
        <tr>
            <td>Composition.section(MedicalHistory).emptyReason</td>
            <td>Composition.section(MedicalHistory).emptyReason</td>
        </tr>
        
                <tr>
                    <td rowspan="3">Medical History Description</td>
                    <td rowspan="2">025032</td>
                    <td>Condition.code</td>
                    <td>Composition.section(MedicalHistory).entry(Condition as Summary Statement of Condition).Condition.code</td>
                </tr>
                <tr>
                    <td>Procedure.code</td>
                    <td>Composition.section(MedicalHistory).entry(Procedure as Summary Statement of Known Procedure).Procedure.code</td>
                </tr>
                
                <tr>
                    <td rowspan="1">025033</td>
                    <td>Condition.code</td>
                    <td>Composition.section(MedicalHistory).entry(Condition as Summary Statement of Condition).Condition.code</td>
                </tr>
                
 <!-- Medical History Comments -->               
                  <tr>
                    <td rowspan="2">Medical History comments</td>
                    <td rowspan="2">025035</td>
                    <td>Condition.note</td>
                    <td>Composition.section(MedicalHistory).entry(Condition as Summary Statement of Condition).Condition.note</td>
                </tr>
                <tr>
                    <td rowspan="1">Procedure.note</td>
                    <td>Composition.section(MedicalHistory).entry(Procedure as Summary Statement of Known Procedure).Procedure.note</td>
                </tr>
<!-- /Medical History -->                
                
<!-- Immunisations -->                
                <tr>
                    <td rowspan="6">Component</td>
                    <td rowspan="3">025036</td>
                    <td>Composition.section(Immunisations)</td>
                    <td>Composition.section(Immunisations)</td>
                </tr>
                <tr>
                    <td>Composition.section(Immunisations).entry</td>
                    <td>Composition.section(Immunisations).entry</td>
                </tr>
                <tr>
                    <td>Composition.section(Immunisations).emptyReason</td>
                    <td>Composition.section(Immunisations).emptyReason</td>
                </tr>
                <tr>
                    <td>025037</td>
                    <td>Composition.section(Immunisations).entry</td>
                    <td>Composition.section(Immunisations).entry</td>
                </tr>
               <tr>
                    <td rowspan="2">024967</td>
                    <td>Composition.section(Immunisations).entry</td>
                    <td>Composition.section(Immunisations).entry</td>
                </tr>
                <tr>
                    <td>Composition.section(Immunisations).emptyReason</td>
                    <td>Composition.section(Immunisations).emptyReason</td>
                </tr>
                
 <!-- Vaccine Name -->                
               <tr>
                    <td rowspan="3">Vaccine Name</td>
                    <td>025038</td>
                    <td>Immunization.vaccineCode</td>
                    <td>Composition.section(Immunisations).entry(Immunization as Summary Statement of Administered Vaccine).Immunization.vaccineCode</td>
                </tr>
                <tr>
                    <td>025039</td>
                    <td>Immunization.vaccineCode</td>
                    <td>Composition.section(Immunisations).entry(Immunization as Summary Statement of Administered Vaccine).Immunization.vaccineCode</td>
                </tr>
                <tr>
                    <td>025040</td>
                    <td>Immunization.vaccineCode</td>
                    <td>Composition.section(Immunisations).entry(Immunization as Summary Statement of Administered Vaccine).Immunization.vaccineCode</td>
                </tr>
 <!-- /Immunisations -->                
               
<!-- Diagnostic investigations -->                
                <tr>
                    <td rowspan="4">Component</td>
                    <td rowspan="3">025041</td>
                    <td>Composition.section(Diagnostic investigations)</td>
                    <td>Composition.section(Diagnostic investigations)</td>
                </tr>
                <tr>
                    <td>Composition.section(Diagnostic investigations).entry</td>
                    <td>Composition.section(Diagnostic investigations).entry</td>
                </tr>
                 <tr>
                    <td>Composition.section(Immunisations).emptyReason</td>
                    <td>Composition.section(Immunisations).emptyReason</td>
                </tr>
               <tr>
                    <td>025042</td>
                    <td>Composition.section(Diagnostic investigations).entry</td>
                    <td>Composition.section(Diagnostic investigations).entry</td>
                </tr>
<!-- Investigation Type -->                
               <tr>
                    <td rowspan="1">Investigation Type</td>
                    <td>025043</td>
                    <td>Incomplete: Please see note below*</td>
                    <td>Incomplete: Please see note below*</td>
                </tr>
<!-- Investigation Name -->                
               <tr>
                    <td rowspan="1">Investigation Name</td>
                    <td>025044</td>
                    <td>Incomplete: Please see note below*</td>
                    <td>Incomplete: Please see note below*</td>
                </tr>
<!-- Result Status -->                
               <tr>
                    <td rowspan="1">Result Status</td>
                    <td>025045</td>
                    <td>Incomplete: Please see note below*</td>
                    <td>Incomplete: Please see note below*</td>
                </tr>
<!-- Result Content -->                
               <tr>
                    <td rowspan="1">Result Content</td>
                    <td>025046</td>
                    <td>Incomplete: Please see note below*</td>
                    <td>Incomplete: Please see note below*</td>
                </tr>
<!-- /Diagnostic investigations -->                

<!-- Document Control -->
<!-- Date attested -->                
               <tr>
                    <td>DateTime Attested (mandatory)</td>
                    <td>025051</td>
                    <td>Composition.attester(Legal Attester).time</td>
                    <td>Composition.attester(Legal Attester).time</td>
                </tr>
            </tbody>
        </table>
<p>*Note: Diagnostic Investigations (Editorial Note: The design of this section is incomplete. The intended structure of section.entry and section.emptyReason is not yet available.)</p>

