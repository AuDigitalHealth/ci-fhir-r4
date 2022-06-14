Below is an overview of the mandatory and optional search parameters. FHIR search operations and the syntax used to describe the interactions is described <a href="http://hl7.org/fhir/R4/search.html">here</a>.

<table class="list" width="100%">
<tbody>
  <tr>
    <th>Name</th>
    <th>Type</th>
    <th>Description</th>
    <th>Conformance</th>
    <th>Path</th>
  </tr>
  <tr>
        <td>category</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td>The classification of the type of observation</td>
        <td><b>SHALL</b></td>
        <td>Observation.category</td>
  </tr>
  <tr>
        <td>subject:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td>The subject that the observation is about</td>
        <td><b>SHALL</b></td>
        <td>Observation.subject.identifier</td>
  </tr>
  <tr>
        <td>code</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td>The code of the observation type</td>
        <td><b>SHALL</b></td>
        <td>Observation.code</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td>Obtained date/time. If the obtained element is a period, a date that falls in the period</td>
        <td><b>SHALL</b></td>
        <td>Observation.effective</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all allergies for a patient using the **`subject:identifier`** search parameter:

    `GET [base]/Observation?subject:identifier={system|}[code]`

    Example:
    
      1. GET [base]/Observation?subject:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the combination **`subject:identifier`** and **`category`** search parameter:

    `GET [base]/Observation?subject:identifier={system|}[code]&category[code]`

    Example:
    
      1. GET [base]/Observation?subject:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&category=http://terminology.hl7.org/CodeSystem/observation-category|procedure

    *Implementation Notes:* Fetches a bundle of all Observation resources with the category of "procedure" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`subject:identifier`** and **`code`** search parameter:

    `GET [base]/Observation?subject:identifier={system|}[code]&code={system|}[code]`

    Example:
    
      1. GET [base]/Observation?subject:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&code=http://loinc.org|90568-7

    *Implementation Notes:* Fetches a bundle of all Observation resources with the code of an 90568-7 (Polysomnography panel) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHOULD** support searching using the combination of the **`subject:identifier`** and **`date`** search parameters:

    `GET [base]/Observation?subject:identifier={system|}[code]&date=[date]`

    Example:
    
      1. GET [base]/Observation?subject:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2010-01-01&date=le2011-12-31

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient that have a date greater than or equal to 1st Jan 2010, a date less than or equal to 31st Dec 2011. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))