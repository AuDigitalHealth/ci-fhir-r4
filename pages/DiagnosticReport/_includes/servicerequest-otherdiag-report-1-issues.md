<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
   <tr>
       <td>category (appropriateness of code)</td>
       <td><p>This profile is intended to support all 'other' diagnostic reports which is broad.</p>
	   <p>We are considering whether category is better supported as a value set including a set of diagnostic report types, or whether it has to be fixed to be a catch-all code and with the referencing diagnostic report provides the finer grain.</p>
	   <p>This issue applies to DiagnosticReport.category, ServiceRequest.category, and Observation.category.</p></td>
       <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/42">ci-fhir-r4/issues/42</a></td>
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
    <td>Support for self initiated requests</td>
    <td>Not yet clear how requests that are initiated by a patient or related person should be supported. ServiceRequest.requester does allow for a Patient or RelatedPerson resource though currently constrained out in this profile. We need to investigate the need for supporting self-initiated requests in the usage scenarios this profile is intended to support.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/56">ci-fhir-r4/issues/56</a></td>
   </tr>

  <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>
</tbody>
</table>
