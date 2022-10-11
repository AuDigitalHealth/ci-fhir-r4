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
        <td>Master Version Specific Identifier</td>
        <td>DocumentReference.identifier | DocumentReference.masterIdentifier</td>
  </tr>
  <tr>
        <td>category</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Categorization of document</td>
        <td>DocumentReference.category</td>
  </tr>
  <tr>
        <td>subject:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Who/what is the subject of the document</td>
        <td>DocumentReference.subject.identifier</td>
  </tr>
  <tr>
        <td>type</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Kind of composition (LOINC if possible)</td>
        <td>DocumentReference.code</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHALL</b></td>
        <td>When this document reference was created</td>
        <td>DocumentReference.date</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHALL</b></td>
        <td>current | superseded | entered-in-error</td>
        <td>DocumentReference.status</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all document references for a patient using the **`subject:identifier`** search parameter:

    `GET [base]/DocumentReference?subject:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/DocumentReference?subject:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the **`identifier`** search parameter:

     `GET [base]/DocumentReference?identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/DocumentReference?identifier=urn:ietf:rfc:3986|urn:uuid:b487469d-810c-40ae-b5a9-c0beb9001c9f
    ~~~
     *Implementation Notes:* Fetches a bundle containing any DocumentReference resources matching the identifier ([how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`subject:identifier`** and **`category`** and **`status`** search parameter:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/DocumentReference?subject:identifier={system|}[code]&category[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/DocumentReference?subject:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&category=https://healthterminologies.gov.au/fhir/CodeSystem/nctis-data-components-1|100.32001&status=current
    ~~~
    *Implementation Notes:* Fetches a bundle of all DocumentReference resources with the category of "Pathology Report" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`subject:identifier`** and **`type`** and **`status`** search parameter:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/DocumentReference?subject:identifier={system|}[code]&type={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/DocumentReference?subject:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&type=https://healthterminologies.gov.au/fhir/CodeSystem/nctis-data-components-1|100.320016&status=current
    ~~~
    *Implementation Notes:* Fetches a bundle of all DocumentReference resources with the type of an 100.32001 (Pathology Report) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`subject:identifier`** and **`date`** and **`status`** search parameters:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/DocumentReference?subject:identifier={system|}[code]&date=[date]&status={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/DocumentReference?subject:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2013-03-14&status=current
    ~~~
    *Implementation Notes:* Fetches a bundle of all current DocumentReference resources for the specified patient that have a date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))