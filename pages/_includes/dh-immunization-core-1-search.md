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
        <td>Business identifier</td>
        <td>Immunization.identifier</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>The patient for the vaccination record</td>
        <td>Immunization.subject.identifier</td>
  </tr>
  <tr>
        <td>vaccine-code</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Vaccine Product Administered</td>
        <td>Immunization.vaccineCode</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHALL</b></td>
        <td>Vaccination (non)-Administration Date</td>
        <td>Immunization.occurrence</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHALL</b></td>
        <td>Immunization event status</td>
        <td>Immunization.status</td>
  </tr>
  <tr>
        <td>target-disease</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHOULD</b></td>
        <td>The target disease the dose is being administered against</td>
        <td>Immunization.protocolApplied.targetDisease</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all immunisations for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/Immunization?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Immunization?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all Immunization resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the **`identifier`** search parameter:

     `GET [base]/Immunization?identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Immunization?identifier=urn:ietf:rfc:3986|urn:uuid:44a8f148-f5f7-447c-9e68-a9f06635ab6c
    ~~~
     *Implementation Notes:* Fetches a bundle containing any Immunization resources matching the identifier ([how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`vaccine-code`** and **`status`** search parameter:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Immunization?patient:identifier={system|}[code]&vaccine-code={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/Immunization?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&vaccine-code=http://snomed.info/sct|1525011000168107&status=completed
    ~~~
    *Implementation Notes:* Fetches a bundle of all Immunization resources with the vaccine code of an 1525011000168107 (Pfizer Comirnaty) and status for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`date`** and **`status`** search parameters:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Immunization?patient:identifier={system|}[code]&date=[date]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/Immunization?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2013-03-14
    ~~~
    *Implementation Notes:* Fetches a bundle of all Immunization resources for the specified patient that have a date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))
    
    
1. **SHOULD** support searching using the combination **`patient:identifier`** and **`target-disease`** and **`status`** search parameter:
- including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Immunization?patient:identifier={system|}[code]&target-disease={system|}[code]&status={system|}[code]`

    Example:
    ~~~
    GET [base]/Immunization?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&target-disease=http://snomed.info/sct|840539006
    ~~~
    *Implementation Notes:* Fetches a bundle of all Immunization resources with the target disease of an 840539006 (COVID-19) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))