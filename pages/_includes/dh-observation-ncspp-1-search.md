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
        <td>The classification of the type of observation</td>
        <td>Observation.category</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Who the sensitivity is for by patient identifier</td>
        <td>Observation.subject.identifier</td>
  </tr>
  <tr>
        <td>code</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>The code of the observation type</td>
        <td>Observation.code</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHALL</b></td>
        <td>Obtained date/time. If the obtained element is a period, a date that falls in the period</td>
        <td>Observation.effective</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHOULD</b></td>
        <td>The status of the observation</td>
        <td>Observation.status</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all observations for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/Observation?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Observation?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`category`** search parameter:

    `GET [base]/Observation?patient:identifier={system|}[code]&category[code]`

    Example:
    ~~~
    GET [base]/Observation?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&category=http://terminology.hl7.org.au/CodeSystem/observation-category|program
    ~~~
    *Implementation Notes:* Fetches a bundle of all Observation resources with the category of "program" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`code`** search parameter:

    `GET [base]/Observation?patient:identifier={system|}[code]&code={system|}[code]`

    Example:
    ~~~
    GET [base]/Observation?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&code=http://snomed.info/sct|1602081000168109
    ~~~
    *Implementation Notes:* Fetches a bundle of all Observation resources with the code of an 1602081000168109 (National bowel cancer screening program participation) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`date`** search parameters:

    `GET [base]/Observation?patient:identifier={system|}[code]&date=[date]`

    Example:
    ~~~
    GET [base]/Observation?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2022-03-14
    ~~~
    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient that have a date greater than or equal to 14 March 2022. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))