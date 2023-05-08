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
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>The patient who is the focus of this episode of care</td>
        <td>EpisodeOfCare.patient.identifier</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHALL</b></td>
        <td>The current status of the Episode of Care as provided (does not check the status history collection) active | finished</td>
        <td>EpisodeOfCare.status</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="https://build.fhir.org/search.html#date">date</a></td>        
        <td><b>SHOULD</b></td>
        <td>The provided date search value falls within the episode of care's period</td>
        <td>EpisodeOfCare.period</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all consent statements for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/EpisodeOfCare?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/EpisodeOfCare?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all EpisodeOfCare resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))



1. **SHALL** support searching using the combination **`patient:identifier`** and **`status`** search parameter:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/EpisodeOfCare?patient:identifier={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/EpisodeOfCare?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of the active EpisodeOfCare resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHOULD** support searching using the combination of the **`patient:identifier`** and **`date`** and **`status`** search parameters:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/EpisodeOfCare?patient:identifier={system|}[code]&date=[date]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/EpisodeOfCare?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2013-03-14&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of all active EpisodeOfCare resources for the specified patient that have a date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))
    