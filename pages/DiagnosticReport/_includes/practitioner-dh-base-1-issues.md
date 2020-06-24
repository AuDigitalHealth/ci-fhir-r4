### Known issues
<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue link</th>
  </tr>
   <tr>
     <td>qualification (use case)</td>
     <td>At this time specific usage scenarios are undefined for exchanging types of practitioner qualification information.</td>
     <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/314">au-fhir-base/issues/314</a><br/>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/90">ci-fhir-r4/issues/90</a></td>
  </tr> 
     <tr>
     <td>qualification (terminology)</td>
     <td>The available example value set <a href="http://hl7.org/fhir/R4/v2/0360/2.7/index.html">v2 table 0360, Version 2.7</a> is insufficient to support the exchange of qualifications commonly relevant to a healthcare setting in Australia. There is some overlap with Australian qualifications and qualifications recognised in Australia. An investigation of how qualifications may be supported,  and which qualifications can be best supported with terminology, e.g. categories of qualifications, education and degree-levels, is required.</td>
     <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/314">au-fhir-base/issues/314</a><br/>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/90">ci-fhir-r4/issues/90</a></td>
  </tr> 
   <tr>
     <td>Constraint presentation</td>
     <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
     <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr> 
 </tbody>
</table> 