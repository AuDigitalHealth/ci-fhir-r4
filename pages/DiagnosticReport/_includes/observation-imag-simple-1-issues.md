<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
    <tr>
        <td>status (terminology binding)</td>
        <td><p>We need to create a more constrained value set for reporting the status of a diagnostic observation for the overarching usage scenarios - this value set would be used for pathology, imaging, and other diagnostics.</p>
        <p>Thinking to constrain the status with the current required valueset of <a href="http://hl7.org/fhir/R4/valueset-observation-status.html">http://hl7.org/fhir/R4/valueset-observation-status.html</a> to just contain the codes of "preliminary", "final", "amended", "corrected" ie remove "registered", "cancelled", "entered-in-error" & "unknown".</p>
        </td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/48">ci-fhir-r4/issues/48</a>, and <a href="https://jira.aws.tooling/browse/FTR-943">jira.aws.tooling/browse/FTR-938</a></td>
   </tr>
   <tr>
    <td>code (terminology support)</td>
    <td>It is unclear if the slice from <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">HL7 AU Diagnostic Observation</a> coding:snomedImagingProcedure is sufficient for supporting electronic exchange of diagnostic imaging observations in Australia.</td>
    <td>TBD</td>
    <td>TBD</td>
   </tr> 
   <tr>
    <td>subject (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/20">ci-fhir-r4/issues/20</a></td>
   </tr>
  <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>    
</tbody>
</table>
