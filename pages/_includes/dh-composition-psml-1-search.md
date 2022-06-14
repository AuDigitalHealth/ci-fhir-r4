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
        <td>Composition.identifier</td>
  </tr>
  <tr>
        <td>category</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Categorization of Composition</td>
        <td>Composition.category</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Who and/or what the composition is about</td>
        <td>Composition.subject.identifier</td>
  </tr>
  <tr>
        <td>type</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Kind of composition (LOINC if possible)</td>
        <td>Composition.code</td>
  </tr>
  <tr>
        <td>date</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHALL</b></td>
        <td>Composition editing time</td>
        <td>Composition.effective</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHOULD</b></td>
        <td>preliminary | final | amended | entered-in-error</td>
        <td>Composition.status</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all compositions for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/Composition?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Composition?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all Composition resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the **`identifier`** search parameter:

     `GET [base]/Composition?identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Composition?identifier=urn:ietf:rfc:3986|urn:uuid:b487469d-810c-40ae-b5a9-c0beb9001c9f
    ~~~
     *Implementation Notes:* Fetches a bundle containing any Composition resources matching the identifier ([how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`category`** search parameter:

    `GET [base]/Composition?patient:identifier={system|}[code]&category[code]`

    Example:
    ~~~
    GET [base]/Composition?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&category=http://loinc.org|56445-0
    ~~~
    *Implementation Notes:* Fetches a bundle of all Composition resources with the category of "Shared Medicines List" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`type`** search parameter:

    `GET [base]/Composition?patient:identifier={system|}[code]&type={system|}[code]`

    Example:
    ~~~
    GET [base]/Composition?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&type=http://loinc.org|56445-0
    ~~~
    *Implementation Notes:* Fetches a bundle of all Composition resources with the type of an 56445-0 (Medication summary Document) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`date`** search parameters:

    `GET [base]/Composition?patient:identifier={system|}[code]&date=[date]`

    Example:
    ~~~
    GET [base]/Composition?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&date=ge2013-03-14
    ~~~
    *Implementation Notes:* Fetches a bundle of all Composition resources for the specified patient that have a date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))