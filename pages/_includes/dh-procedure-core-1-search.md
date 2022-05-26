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
        <td>category</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Classification of the procedure</td>
        <td>Procedure.category</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Search by subject - a patient</td>
        <td>Procedure.subject.identifier</td>
  </tr>
  <tr>
        <td>code</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>A code to identify a procedure</td>
        <td>Procedure.code</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>When the procedure was performed</td>
        <td>Procedure.performed</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown</td>
        <td>Procedure.status</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all procedures for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/Procedure?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Procedure?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all Procedure resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`category`** search parameter:

    `GET [base]/Procedure?patient:identifier={system|}[code]&category={system|}[code]`

    Example:
    ~~~
    GET [base]/Procedure?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&category=http://snomed.info/sct|387713003
    ~~~
    *Implementation Notes:* Fetches a bundle of all Procedure resources with the category of "Surgical procedure" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`code`** search parameter:

    `GET [base]/Procedure?patient:identifier={system|}[code]&code={system|}[code]`

    Example:
    ~~~
    GET [base]/Procedure?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&code=http://snomed.info/sct|34068001
    ~~~
    *Implementation Notes:* Fetches a bundle of all Procedure resources with the code of an 34068001 (Heart valve replacement) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))

1. **SHALL** support searching using the combination **`patient:identifier`** and **`status`** search parameter:

    `GET [base]/Procedure?patient:identifier={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/Procedure?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&&status=completed
    ~~~
    *Implementation Notes:* Fetches a bundle of all completed Procedure resources for the specified patient.
    
1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`date`** search parameters:

    `GET [base]/Procedure?patient:identifier={system|}[code]&date=[date]`

    Example:
    ~~~ 
    GET [base]/Procedure?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2013-03-14
    ~~~
    *Implementation Notes:* Fetches a bundle of all Procedure resources for the specified patient that have a date greater than or equal to 14 March 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))