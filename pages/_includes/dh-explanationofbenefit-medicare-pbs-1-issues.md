<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
        <td>Constraint presentation</td>
        <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
        <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
  <tr>
        <td>ExplanationOfBenefit.insurer</td>
        <td>The standard reprsentation is to be defined; preference is for display (Dept Name) and identifier (ABN). To be agreed.</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>ExplanationOfBenefit.priority</td>
        <td>This element is not of use in this profile, however the canonical FHIR resource definition binds to an exmple CodeSystem not ValueSet - this is throwing errors. Current workaround is to profile that element to point to the ValueSet instead.</td>
        <td>N/A</td>
  </tr>
 </tbody>
</table>
