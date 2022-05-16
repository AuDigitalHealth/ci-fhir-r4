#### ADHA Authoring RelatedPerson
The purpose of this profile is to define a representation of a related person in the role of an author or observer for exchange usage scenarios to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) that are supported. 

This profile is designed to set a RelatedPerson standard for:
* exchanging consumer-authored clinical information
* querying for records authored or uploaded by a related person
* record or update a record uploaded by a related person

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)
 

#### Profile specific guidance
The table below provides guidance on representing communication preferences for a related person.
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
		<th>Notes</th>
      </tr>
      <tr>
        <td>Preferred language is English</td>
        <td></td>
        <td></td>
        <td>No element sent, as per the guidance in the <a href="http://hl7.org/fhir/relatedperson-definitions.html#RelatedPerson.communication">Comments</a> of RelatedPerson.communication</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>language.coding</td>
        <td></td>
        <td>Each language instantiated in separate communication nodes; communication.preferred may be sent as needed.</td>
      </tr>
    </tbody>
</table>

Blank cells in the above table indicate that the given element is absent from the resource.


#### Boundaries and relationships
This profile is referenced by 
[ADHA Core AllergyIntolerance](StructureDefinition-dh-allergyintolerance-core-1.html), 
[ADHA Continuity of Care Summary Composition](StructureDefinition-dh-composition-cocs-1.html), 
[ADHA Core Composition](StructureDefinition-dh-composition-core-1.html), 
[ADHA Advance Care Custodian Record Composition](StructureDefinition-dh-composition-acdcr-1.html), 
[ADHA Advance Care Planning Composition](StructureDefinition-dh-composition-acp-1.html), 
[ADHA Document Composition](StructureDefinition-dh-composition-document-1.html), 
[ADHA Discharge Summary Composition](StructureDefinition-dh-composition-ds-1.html), 
[ADHA Medicare Overview Composition](StructureDefinition-dh-composition-mov-1.html), 
[ADHA National Cancer Screening Program Participation View](StructureDefinition-dh-composition-ncspv-1.html), 
[ADHA National Cancer Screening Program Participation Composition ValueSet](StructureDefinition-dh-composition-ncspp-valuesetoptions-1.html), 
[ADHA Personal Health Notes Composition](StructureDefinition-dh-composition-phn-1.html), 
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html), 
[ADHA Prescription and or Dispense History Composition](StructureDefinition-dh-composition-pdl-1.html), 
[ADHA Personal Observations Composition](StructureDefinition-dh-composition-po-1.html), 
[ADHA Pharmacist Shared Medicines List Composition](StructureDefinition-dh-composition-psml-1.html),
[ADHA Shared Medicines List Composition](StructureDefinition-dh-composition-sml-1.html),
[ADHA Core Condition](StructureDefinition-dh-condition-core-1.html), 
[ADHA Advance Care Planning Document DocumentReference](StructureDefinition-dh-documentreference-acp-1.html), 
[ADHA Core DocumentReference](StructureDefinition-dh-documentreference-core-1.html), 
[ADHA Core List](StructureDefinition-dh-list-core-1.html),
[ADHA Core MedicationAdministration](StructureDefinition-dh-medicationadministration-core-1.html), 
[ADHA Core MedicationDispense](StructureDefinition-dh-medicationdispense-core-1.html), 
[ADHA Core MedicationRequest](StructureDefinition-dh-medicationrequest-core-1.html), 
[ADHA Core MedicationStatement](StructureDefinition-dh-medicationstatement-core-1.html), 
[ADHA Core Observation](StructureDefinition-dh-observation-core-1.html), 
[ADHA Simple Observation](StructureDefinition-dh-observation-simple-1.html), 
[ADHA Core Procedure](StructureDefinition-dh-procedure-core-1.html), and 
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).
