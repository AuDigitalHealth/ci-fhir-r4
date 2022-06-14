Below is an overview of the mandatory and optional search parameters. FHIR search operations and the syntax used to describe the interactions is described <a href="http://hl7.org/fhir/R4/search.html">here</a>.

<table class="list" width="100%">
<tbody>
  <tr>
    <th>Name</th>
    <th>Type</th>
    <th>Conformance</th>
    <th>Description</th>
    <th>Path</th>
  </tr>
  <tr>
        <td>subject:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>The identity of a patient, animal or group to list statements for</td>
        <td>MedicationStatement.subject.identifier</td>
  </tr>
  <tr>
        <td>effective</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHALL</b></td>
        <td>Date when patient was taking (or not taking) the medication</td>
        <td>MedicationStatement.effective</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHALL</b></td>
        <td>Return statements that match the given status</td>
        <td>MedicationStatement.status</td>
  </tr>
  <tr>
        <td>code</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHOULD</b></td>
        <td>Return statements of this medication code</td>
        <td>MedicationStatement.medicationCodeableConcept</td>
  </tr>
  <tr>
        <td>medication</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHOULD</b></td>
        <td>Return statements of this medication reference</td>
        <td>MedicationStatement.medicationReference</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all medication usage statements for a patient using the combination of the **`patient:identifier`**:
    - including support for *OR* search on `intent` (e.g.`intent={system|}[code],{system|}[code],...`)
     
    `GET [base]/MedicationStatement?subject:identifier={system|}[code]&intent=order,plan`

    Example:
    ~~~
    GET [base]/MedicationStatement?sibkect:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all MedicationStatement resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`status`** search parameters:
    - including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/MedicationStatement?subject:identifier={system|}[code]&intent=order,plan&status={system|}[code]{,{system|}[code],...}`

    Example:
    ~~~
    GET [base]/MedicationStatement?sibkect:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of all MedicationStatement resources for the specified patient and and status ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`effective`** search parameters:
    - including support for *OR* search on `intent` (e.g.`intent={system|}[code],{system|}[code],...`)
    
    `GET [base]/MedicationStatement?subject:identifier={system|}[code]&effective=[date]`

    Example:
    ~~~
    GET [base]/MedicationStatement?sibkect:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&effective=ge2013-03-14
    ~~~
    *Implementation Notes:* Fetches a bundle of all MedicationStatement resources for the specified patient that have a date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))