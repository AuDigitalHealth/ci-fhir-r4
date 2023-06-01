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
        <td>The business identifier of the Explanation of Benefit</td>
        <td>ExplanationOfBenefit.identifier</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>The reference to the patient</td>
        <td>ExplanationOfBenefit.patient.identifier</td>
  </tr>
  <tr>
        <td>type</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Classification of the record - for indexing/retrieval</td>
        <td>ExplanationOfBenefit.type</td>
  </tr>
  <tr>
        <td>subType</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Classification of the record using funding scheme - for indexing/retrieval</td>
        <td>ExplanationOfBenefit.subType</td>
  </tr>
  <tr>
        <td>created</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHALL</b></td>
        <td>The creation date for the EOB</td>
        <td>ExplanationOfBenefit.created</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHALL</b></td>
        <td>Status of the instance</td>
        <td>ExplanationOfBenefit.status</td>
  </tr>
 </tbody>
</table>


### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all claims for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/ExplanationOfBenefit?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/ExplanationOfBenefit?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all ExplanationOfBenefit resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the **`identifier`** search parameter:

     `GET [base]/ExplanationOfBenefit?identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/ExplanationOfBenefit?identifier=urn:ietf:rfc:3986|urn:uuid:44a8f148-f5f7-447c-9e68-a9f06635ab6c
    ~~~
     *Implementation Notes:* Fetches a bundle containing any ExplanationOfBenefit resources matching the identifier ([how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`type`** and **`status`** search parameter:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/ExplanationOfBenefit?patient:identifier={system|}[code]&type={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/ExplanationOfBenefit?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&type=http://terminology.hl7.org/CodeSystem/claim-type|institutional&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of all active ExplanationOfBenefit resources with the type of "Institutional" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`subType`** and **`status`** search parameter:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/ExplanationOfBenefit?patient:identifier={system|}[code]&subType={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/ExplanationOfBenefit?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&subType=https://healthterminologies.gov.au/fhir/CodeSystem/australian-benefit-payment-category-1|mbs&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of all active ExplanationOfBenefit resources with the subType of mbs (MBS) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`created`** and **`status`** search parameters:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/ExplanationOfBenefit?patient:identifier={system|}[code]&created=[date]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/ExplanationOfBenefit?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&created=ge2013-03-14&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of all active ExplanationOfBenefit resources for the specified patient that have a created date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))
    