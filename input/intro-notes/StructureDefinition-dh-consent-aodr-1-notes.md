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
        <td>Identifier for this record (external references)</td>
        <td>Consent.identifier</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Who the consent applies to</td>
        <td>Consent.patient.identifier</td>
  </tr>
  <tr>
        <td>category</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Classification of the consent statement - for indexing/retrieval</td>
        <td>Consent.category</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHOULD</b></td>
        <td>When this Consent was created or indexed</td>
        <td>Consent.dateTime</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHALL</b></td>
        <td>draft | proposed | active | rejected | inactive | entered-in-error</td>
        <td>Consent.status</td>
  </tr>
 </tbody>
</table>


### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all consent statements for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/Consent?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Consent?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all Consent resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the **`identifier`** search parameter:

     `GET [base]/Consent?identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Consent?identifier=urn:ietf:rfc:3986|urn:uuid:44a8f148-f5f7-447c-9e68-a9f06635ab6c
    ~~~
     *Implementation Notes:* Fetches a bundle containing any Consent resources matching the identifier ([how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`category`** and **`status`** search parameter:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Consent?patient:identifier={system|}[code]&category={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/Consent?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&category=http://loinc.org|64300-7&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of all active Consent resources with the category of "Organ donation consent" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHOULD** support searching using the combination of the **`patient:identifier`** and **`date`** and **`status`** search parameters:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Consent?patient:identifier={system|}[code]&date=[date]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/Consent?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2013-03-14&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of all active Consent resources for the specified patient that have a date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))
    