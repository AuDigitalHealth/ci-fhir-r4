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
        <td>The category of the condition</td>
        <td>Condition.category</td>
  </tr>
  <tr>
        <td>patient:identifier</td>
        <td><a href="https://build.fhir.org/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Who has the condition?</td>
        <td>Condition.subject.identifier</td>
  </tr>
  <tr>
        <td>code</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>Code for the condition</td>
        <td>Condition.code</td>
  </tr>
  <tr>
        <td>clinical-status</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHALL</b></td>
        <td>The clinical status of the condition</td>
        <td>Condition.clinicalStatus</td>
  </tr>
  <tr>
        <td>onset-date</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHOULD</b></td>
        <td>Date related onsets (dateTime and Period)</td>
        <td>Condition.onset.as(dateTime) | Condition.onset.as(Period)</td>
  </tr>
  <tr>
        <td>abatement-date</td>
        <td><a href="http://hl7.org/fhir/search.html#token">token</a></td>
        <td><b>SHOULD</b></td>
        <td>Date-related abatements (dateTime and period)</td>
        <td>Condition.abatement.as(dateTime) | Condition.abatement.as(Period)</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all conditions for a patient using the **`patient:identifier`** search parameter:

    `GET [base]/Condition?patient:identifier={system|}[code]`

    Example:
    ~~~
    GET [base]/Condition?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437
    ~~~
    *Implementation Notes:* Fetches a bundle of all Condition resources for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`category`** search parameter:

    `GET [base]/Condition?patient:identifier={system|}[code]&category={system|}[code]`

    Example:
    ~~~
    GET [base]/Condition?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&category=http://terminology.hl7.org/CodeSystem/condition-category|problem-list-item
    ~~~
    *Implementation Notes:* Fetches a bundle of all Condition resources with the category of "Problem List Item" for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the combination **`patient:identifier`** and **`code`** search parameter:

    `GET [base]/Condition?patient:identifier={system|}[code]&code={system|}[code]`

    Example:
    ~~~
    GET [base]/Condition?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&code=http://snomed.info/sct|68566005
    ~~~
    *Implementation Notes:* Fetches a bundle of all Condition resources with the code of an 68566005 (Urinary tract infection) for the specified patient ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))

1. **SHALL** support searching using the combination **`patient:identifier`** and **`clinical-status`** search parameter:

    `GET [base]/Condition?patient:identifier={system|}[code]&clinical-status={system|}[code]`

    Example:
    ~~~
    GET [base]/Condition?patient=http://ns.electronichealth.net.au/id/hi/ihi/1.0|8003608000228437&clinical-status=http://terminology.hl7.org/CodeSystem/condition-clinical|active
    ~~~
    *Implementation Notes:* Fetches a bundle of all Condition resources for the specified patient and status code.  This will not return any &#34;entered in error&#34; resources because of the conditional presence of the clinicalStatus element. ([how to search by :identifier](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/search.html#token))