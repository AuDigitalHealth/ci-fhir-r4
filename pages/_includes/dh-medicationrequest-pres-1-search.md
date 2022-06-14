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
        <td>Return prescriptions with this external identifier</td>
        <td>MedicationRequest.identifier</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Returns prescriptions for a specific patient</td>
        <td>MedicationRequest.subject.identifier</td>
  </tr>
  <tr>
        <td>authoredon</td>
        <td><a href="http://hl7.org/fhir/search.html#date">date</a></td>
        <td><b>SHALL</b></td>
        <td>Return prescriptions written on this date</td>
        <td>MedicationRequest.effective</td>
  </tr>
  <tr>
        <td>status</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHALL</b></td>
        <td>Status of the prescription</td>
        <td>MedicationRequest.status</td>
  </tr>
  <tr>
        <td>intent</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>        
        <td><b>SHALL</b></td>
        <td>Returns prescriptions with different intents</td>
        <td>MedicationRequest.intent</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all medication requests for a patient using the combination of the **`patient:identifier`** and **`intent`** search parameters:
    - including support for *OR* search on `intent` (e.g.`intent={system|}[code],{system|}[code],...`)
     
    `GET [base]/MedicationRequest?patient:identifier={system|}[code]&intent=order,plan`

    Example:
    ~~~
    GET [base]/MedicationRequest?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all MedicationRequest resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the **`identifier`** search parameter:

     `GET [base]/MedicationRequest?identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/MedicationRequest?identifier=http://fhir.erx.com.au/NamingSystem/identifiers#local-script-number|2998
    ~~~
     *Implementation Notes:* Fetches a bundle containing any MedicationRequest resources matching the identifier ([how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`intent`** and **`status`** search parameters:
    - including support for *OR* search on `intent` (e.g.`intent={system|}[code],{system|}[code],...`)
    - including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/MedicationRequest?patient:identifier={system|}[code]&intent=order,plan&status={system|}[code]{,{system|}[code],...}`

    Example:
    ~~~
    GET [base]/MedicationRequest?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&intent=order,plan&status=active
    ~~~
    *Implementation Notes:* Fetches a bundle of all MedicationRequest resources for the specified patient and intent code = `order,plan` and status ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))


1. **SHALL** support searching using the combination of the **`patient:identifier`** and **`intent`** and **`authoredon`** search parameters:
    - including support for *OR* search on `intent` (e.g.`intent={system|}[code],{system|}[code],...`)
    
    `GET [base]/MedicationRequest?patient:identifier={system|}[code]&intent=order,plan&authoredon=[date]`

    Example:
    ~~~
    GET [base]/MedicationRequest?patient:identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&intent=order,plan&authoredon=ge2013-03-14
    ~~~
    *Implementation Notes:* Fetches a bundle of all MedicationRequest resources for the specified patient that have a date greater than or equal to 21st Jan 2013. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))