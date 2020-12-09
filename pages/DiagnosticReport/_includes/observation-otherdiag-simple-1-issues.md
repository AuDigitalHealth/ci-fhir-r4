<table class="list" width="100%">
    <tbody>
      <tr>
        <th>Reference</th>
        <th>Description</th>
        <th>Issue No.</th>
      </tr>
       <tr>
       <td>category (appropriateness of value set)</td>
       <td><p>Observation.category has been bound (preferred) to <a href="http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html">DiagnosticServiceSectionCodes</a>; however the codes in this value set are not well suited to the other diagnostic (non pathology and non diagnostic imaging) reports. </p>
		<p>This value set will be evaluated for suitability and if appropriate a new value set will be investigated to accommodate the Australian context of other diagnostic reports.</p>
	  </td>
       <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/112">ci-fhir-r4/issues/112</a></td>
   </tr>
       <tr>
       <td>code</td>
       <td><p>A value set <a href="https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1">Evaluation Procedure</a> has been created to allow 
 permissible values which represent types of diagnostic tests that are not categorised as either a pathology test nor a diagnostic imaging test.</p>
        <p>Analysis needs to be performed to determine if the value set is appropriate for the Australian context i.e. adequately covers Australian other diagnostic tests.</p>
        </td>
        <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/402">hl7au/au-fhir-base/issues/402</a></td>
   </tr>
   <tr>
       <td>value[x]</td>
       <td><p>Stakeholder and business agreement is required to determine whether value[x] can be included in this profile.</p>
        </td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/105">ci-fhir-r4/issues/105</a></td>
   </tr>
   <tr>
       <td>performer</td>
       <td><p>Stakeholder feedback is required to confirm whether the inclusion of organization (essentially a lab) in observation.performer is apporopriate.</p>
        </td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/106">ci-fhir-r4/issues/106</a></td>
   </tr>
      <tr>
            <td>Constraint presentation</td>
            <td><p>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</p>
            </td>
            <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream.
            </td>
   </tr>    
</tbody>
</table>
