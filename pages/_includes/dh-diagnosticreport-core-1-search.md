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
        <td>identifier</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>An identifier for the report</td>
        <td>DiagnosticReport.identifier</td>
  </tr>
  <tr>
        <td>category</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Which diagnostic discipline/department created the report</td>
        <td>DiagnosticReport.category</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>The subject of the report if a patient</td>
        <td>DiagnosticReport.subject.identifier</td>
  </tr>
  <tr>
        <td>code</td>
        <td><a href="http://hl7.org/fhir/search.html#token">Type</a></td>
        <td><b>SHALL</b></td>
        <td>The code for the report, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result</td>
        <td>DiagnosticReport.code</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHALL</b></td>
        <td>The clinically relevant time of the report</td>
        <td>DiagnosticReport.effective</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHOULD</b></td>
        <td>The status of the report</td>
        <td>DiagnosticReport.status</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all diagnostic reports for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/DiagnosticReport?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/DiagnosticReport?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the **`identifier`** search parameter:

     `GET [base]/DiagnosticReport?identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/DiagnosticReport?identifier=http://doombenpathlabs.example.com/reports|1032702
    ~~~
     *Implementation Notes:* Fetches a bundle containing any DiagnosticReport resources matching the identifier ([how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`category`** search parameter:

    `GET [base]/DiagnosticReport?patient:identifier={system|}[code]&category[code]`

    Example:
    ~~~
    GET [base]/DiagnosticReport?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&category=http://terminology.hl7.org/CodeSystem/v2-0074|AU
    ~~~
    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources with the category of "Audiology" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`code`** search parameter:

    `GET [base]/DiagnosticReport?patient:identifier={system|}[code]&code={system|}[code]`

    Example:
    ~~~
    GET [base]/DiagnosticReport?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&code=http://loinc.org|68635-2
    ~~~
    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources with the code of an 68635-2 (Audiology Diagnostic study note) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`date`** search parameters:

    `GET [base]/DiagnosticReport?patient:identifier={system|}[code]&date=[date]`

    Example:
    ~~~
    GET [base]/DiagnosticReport?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2013-03-14
    ~~~
    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient that have a date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))