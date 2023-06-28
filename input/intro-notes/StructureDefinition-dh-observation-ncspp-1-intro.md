The purpose of this profile is to provide a representation of an individual's participation in a national cancer screening program, e.g. national bowel cancer screening program for the electronic exchange of health information between individuals, healthcare providers, the National Cancer Screening Register, and the My Health Record system infrastructure in Australia. Participation information may include information on an individual's eligibility for a program, suspension of participation in a program, or status of participation in a program.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

This profile is designed to set an Observation standard for:
* Query for a national bowel cancer screening program participation observation for a patient
* Query for a national cervical cancer screening program participation observation for a patient
* Record or update a national bowel cancer screening program participation observation for a patient
* Record or update a national cervical cancer screening program participation observation for a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- `Observation.code` identifies the health program and nature of the observation (e.g. 1602081000168109 \|National bowel cancer screening program participation\| or 1602101000168102 \|National cervical cancer screening program participation	\|).
- Participant status is represented as a SNOMED CT-AU coded value in `Observation.component.valueCodeableConcept` with `Observation.component.code`= "1603781000168102" 
  - Guidance on mapping participant status value domain to SNOMED CT-AU is in the table below.   
- Next screening action is represented as:
  - text in `Observation.component.valueCodeableConcept.text` with `Observation.component.code`= "1604041000168107". 
  - date in `Observation.component.valueDateTime` with `Observation.component.code`= "1604051000168109". 

Mapping from the participant status value domain to the concepts in the <a href="https://healthterminologies.gov.au/fhir/ValueSet/health-program-participation-status-1">Health Program Participation Status</a> value set is provided below.

<table class="list" style="width:100%">
    <colgroup>
       <col span="1" style="width: 30%;"/>
       <col span="1" style="width: 35%;"/>
       <col span="1" style="width: 35%;"/>
    </colgroup>
	<tbody>
      <tr>
        <th>Participant Status Value Domain</th>
        <th>SNOMED CT Concept ID</th>
        <th>Preferred term</th>
      </tr>
      <tr>
        <td>Actively Screening</td>
        <td>1602001000168101</td>
        <td>Active participation</td>
      </tr>
      <tr>
        <td>Age Exited</td>
        <td>1602051000168102</td>
        <td>Participation complete</td>
      </tr>
      <tr>
        <td>Excluded</td>
        <td>1602031000168108</td>
        <td>Excluded from participation</td>
      </tr>
      <tr>
        <td>Never Responder</td>
        <td>1602021000168105</td>
        <td>Inactive participation</td>
      </tr>
      <tr>
        <td>New to Screening</td>
        <td>1601971000168104</td>
        <td>New participation</td>
      </tr>
      <tr>
        <td>Not Eligible</td>
        <td>1601961000168105</td>
        <td>Not eligible for participation</td>
      </tr>
      <tr>
        <td>Overdue for Screening</td>
        <td>1602011000168103</td>
        <td>Participation overdue</td>
      </tr>
    </tbody>
</table>



