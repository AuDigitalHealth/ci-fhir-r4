#### Australian Digital Health Agency Core MedicationStatement
The purpose of this profile is to provide a core representation of a statement of medication use for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia. This profile supports a summary statement relating to an allergy or intolerance including asserting negation for a specific allergy or intolerance, a category, or that a patient has no known allergies or intolerances.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html) that are supported. 

This profile is designed to set a core MedicationStatement standard in the context of:
* Querying a patient's medications (current and historical)
* Recording or updating a record of a medication the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)


#### Guidance
A sending system is to set the value of taken as per the guidance in the Comments field of the [MedicationStatement](StructureDefinition-medicationstatement-detailed-1-definitions.html#MedicationStatement) element.

MedicationStatement.status represents the current state of the medicine item for the patient (active, completed, new), if this resource is referenced by a List, List.entry.flag and MedicationStatement.status should be constructed as per the guidance in the following table.

<table class="list" width="100%">
	<col style="width:25%"/>
	<col style="width:50%"/>
	<col style="width:25%"/>
    <tr>
        <th>Item</th>
        <th>List.entry.flag</th>
        <th>MedicationStatement.status</th>
    </tr>
    <tr>
        <td>new medicine item</td>
        <td>‘new’ or ‘prescribed’</td>
        <td>'intended'</td>
    </tr>
    <tr>
        <td>existing unchanged medicine item</td>
        <td>‘nochange’</td>
        <td>'active' or 'completed'</td>
    </tr>
    <tr>
        <td>existing changed medicine item</td>
        <td>‘amended’</td>
        <td>'active'</td>
    </tr>
    <tr>
        <td>ceased medicine item</td>
        <td>‘ceased’</td>
        <td>'stopped' or 'completed'</td>
    </tr>
    <tr>
        <td>withheld medicine item</td>
        <td>‘suspended’</td>
        <td>'on-hold'</td>
    </tr>
    <tr>
        <td>recommended medicine item</td>
        <td>'new-recommended' or 'prescription-recommended'</td>
        <td>'intended'</td>
    </tr>
    <tr>
        <td>existing medicine item</td>
        <td>'review-recommended' or 'cessation-recommended' or 'suspension-recommended' or 'cancellation-recommended'</td>
        <td>'active'</td>
    </tr>
</table>

The datetime in effective[x] is to be interpreted in regards to the combination of status and/or taken values, as per the guidance in the following table.

<table  class="list" width="100%">
	<col style="width:25%"/>
	<col style="width:25%"/>
	<col style="width:50%"/>
    <tr>
        <th>MedicationStatement.taken</th>
        <th>MedicationStatement.status</th>
        <th>Interpretation</th>
    </tr>
    <tr>
        <td>'n'</td>
        <td>‘active’ ‘on-hold’ or ‘intended’</td>
        <td>effective[x] is the interval of time during which it is being asserted the patient intends to take or is instructed to take a medicine item</td>
    </tr>
    <tr>
        <td>'n'</td>
        <td>‘completed’</td>
        <td>effective[x] is the interval of time during which it is being asserted that the patient was not taking a medicine</td>
    </tr>
    <tr>
        <td>'y'</td>
        <td>‘active’, ‘on-hold’ or ‘intended’</td>
        <td>effective[x] is the interval of time during which it is being asserted that the patient is taking a medicine. The end date of the period is expected to be omitted; if included, the end date represents the date the patient is expected to stop taking a medicine item.</td>
    </tr>   
    <tr>
        <td>'y'</td>
        <td>‘completed’</td>
        <td>effective[x] is the interval of time during which it is being asserted that the patient was taking a medicine</td>
    </tr>               
</table>



#### Boundaries and relationships
This profile is referenced by 
[ADHA Event Summary Composition](StructureDefinition-dh-composition-phs-1.html),
[ADHA Personal Health Summary Composition](StructureDefinition-dh-composition-phs-1.html),
[ADHA Shared Health Summary Composition](StructureDefinition-dh-composition-shs-1.html),
[ADHA Core List](StructureDefinition-dh-list-core-1.html),
[ADHA Medication Use List](StructureDefinition-dh-list-medication-use-1.html), and
[ADHA Practitioner Medicine Review List](StructureDefinition-dh-list-medication-use-pmr-1.html).
