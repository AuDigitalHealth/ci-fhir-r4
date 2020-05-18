<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
      <td>meta.profile (invariant on profile value)</td>
      <td>Invariant enforcing the canonical url for this profile is missing - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/33">ci-fhir-r4/issues/33</a></td>
  </tr>
  <tr>
      <td>status (terminology binding missing)</td>
      <td>Thinking to constrain the FHIR element Composition.status with the current required valueset of <a href="http://hl7.org/fhir/R4/valueset-composition-status.html">http://hl7.org/fhir/R4/valueset-composition-status.html</a> to just contain the codes of "final" and "amended" and exclude the codes of "preliminary" and "entered-in-error". For the usage scenarios it doesn't make sense to support "entered-in-error" however there may be a requirement to allow for "preliminary".<br/><br/>
	  This binding is expected to shared by <a href="StructureDefinition-composition-pathreport-1.html">Pathology Report</a>, <a href="StructureDefinition-composition-imagreport-1.html">Diagnostic Imaging Report</a>, <a href="StructureDefinition-composition-otherdiagreport-1.html">Other Diagnostic Report</a>, and likely other documents such as Event Summary.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/41">ci-fhir-r4/issues/41</a>, and <a href="https://jira.aws.tooling/browse/FTR-928">jira.aws.tooling/browse/FTR-928</a></td>
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
      <td>subject (Reference type too open)</td>
      <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/33">ci-fhir-r4/issues/33</a></td>
  </tr>
  <tr>
      <td>encounter</td>
      <td>Not enough is known about the encounter in the Composition - Other Diagnostic Report to determine if there needs to be any specialisations/constraints on encounter.<br/><br/>
      This will need to be determined with stakeholder engagement.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/34">ci-fhir-r4/issues/34</a></td>
  </tr>
  <tr>
      <td>author (Reference type too open)</td>
      <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/33">ci-fhir-r4/issues/33</a></td>
  </tr>
  <tr>
      <td>attester.party (Reference type too open)</td>
      <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/33">ci-fhir-r4/issues/33</a></td>
  </tr>
  <tr>
      <td>custodian (Reference type too open)</td>
      <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/33">ci-fhir-r4/issues/33</a></td>
  </tr>
  <tr>
      <td>Constraint presentation</td>
      <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
      <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
 </tbody>
</table>
