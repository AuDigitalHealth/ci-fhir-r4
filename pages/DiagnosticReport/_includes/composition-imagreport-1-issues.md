<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
        <td>status (terminology binding)</td>
        <td><p>Publication of the <a href="https://healthterminologies.gov.au/fhir/ValueSet/compositionstatus-document-available-1">CompositionStatus Document Available</a> value set is pending.</p></td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/57">ci-fhir-r4/issues/57</a></td>
      </tr>
  <tr>
      <td>subject (Reference type too open)</td>
      <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/41">ci-fhir-r4/issues/41</a></td>
  </tr>
  <tr>
      <td>author (cardinality)</td>
      <td>More than one author is allowed to support the My Health Record Diagnostic Imaging Report scenario (see <a href="https://developer.digitalhealth.gov.au/specifications/clinical-documents/ep-2560-2017/nehta-2215-2016">eHealth Diagnostic Imaging Report My Health Record Conformance Profile v1.1</a>) - however confirmation that the My Health Record can accept more than one author is required.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/22">ci-fhir-r4/issues/22</a></td>
  </tr>
  <tr>
      <td>Constraint presentation</td>
      <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
      <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
 </tbody>
</table>
