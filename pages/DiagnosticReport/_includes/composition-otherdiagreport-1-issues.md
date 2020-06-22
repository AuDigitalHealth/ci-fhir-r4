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
      <td>type (missing terminology)</td>
      <td>This profile is intended to support all 'other' diagnostic reports which is broad.<br/><br/>
      We are considering whether Composition.type is better supported as a value set including a set of diagnostic report types, or whether it has to be fixed to be a catch-all code (e.g. 371525003 |Clinical procedure report|) and with the referenced diagnostic report provides the finer grain.<br/><br/>
      There are implementation constraints on the use of document types in the Australian digital health ecosystem that in practice mean that the values in Composition.type are tightly controlled and rarely extended - this is likely to mean that either a fixed value or a value set of only a few gross document types are preferred with the current approach.
      </td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/35">ci-fhir-r4/issues/35</a></td>
  </tr>
  <tr>
      <td>encounter</td>
      <td>Not enough is known about the encounter in the Composition - Other Diagnostic Report to determine if there needs to be any specialisations/constraints on encounter.<br/><br/>
      This will need to be determined with stakeholder engagement.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/34">ci-fhir-r4/issues/34</a></td>
  </tr>
  <tr>
      <td>Constraint presentation</td>
      <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
      <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
 </tbody>
</table>
