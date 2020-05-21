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
        <p>Thinking to further constrain the status element required binding <a href="http://hl7.org/fhir/R4/valueset-observation-status.html">ObservationStatus</a> to contain "preliminary", "final", "amended", "corrected" i.e. remove "registered", "cancelled", "entered-in-error" & "unknown".</p></td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/48">ci-fhir-r4/issues/48</a>, and <a href="https://jira.aws.tooling/browse/FTR-938">jira.aws.tooling/browse/FTR-938</a></td>
   </tr>
   <tr>
    <td>code (terminology support)</td>
    <td><p>It is unclear if the slice from HL7 <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a> coding:snomedImagingProcedure is sufficient for supporting electronic exchange of diagnostic imaging observations in Australia.</p>
    <p>Feedback from stakeholders should be sought on the need for additional terminologies in this sector, e.g. <a href="https://build.fhir.org/ig/HL7/fhir-ips/ValueSet-results-radiology-observations-uv-ips.html">Results Radiology Observation - IPS</a>. It is expected that this would be progressed via a HL7 AU Working Group and any additional support be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a>.</p></td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/406">au-fhir-base/issues/406</a></td>
   </tr> 
   <tr>
    <td>subject (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/48">ci-fhir-r4/issues/48</a></td>
   </tr>
  <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>    
</tbody>
</table>
