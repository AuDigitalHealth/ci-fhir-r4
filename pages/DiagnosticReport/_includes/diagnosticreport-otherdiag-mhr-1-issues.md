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
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/44">ci-fhir-r4/issues/44</a></td>
   </tr>
   <tr>
    <td>status (terminology binding)</td>
    <td><p>We need to create a more constrained value set for reporting the status of a diagnostic report for the overarching usage scenarios - this value set would be used for pathology, imaging, and other diagnostics.</p>
        <p>Thinking to constrain the status with the current required valueset of <a href="http://hl7.org/fhir/R4/valueset-diagnostic-report-status.html">http://hl7.org/fhir/R4/valueset-diagnostic-report-status.html</a> to just contain the codes of "partial", "preliminary", "final", "amended", "corrected", "appended" i.e remove "registered", cancelled", "entered-in-error" & "unknown".</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/44">ci-fhir-r4/issues/44</a>, and <a href="https://jira.aws.tooling/browse/FTR-933">jira.aws.tooling/browse/FTR-933</a></td>
   </tr>
   <tr>
    <td>category (terminology binding)</td>
    <td>We need to create a more constrained value set that at least removes imaging and pathology.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/42">ci-fhir-r4/issues/42</a></td>
   </tr> 
   <tr>
    <td>category (fixed code for implementation)</td>
    <td>There is likely a need for a single fixed code to indicate that this is 'other diagnostics' for a similar use case in the My Health Record to identifying and retrieving 'pathology' and 'imaging'.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/42">ci-fhir-r4/issues/42</a></td>
   </tr> 
    <tr>
    <td>code (missing terminology)</td>
    <td><p>We need a value set whose permissible values represent types of diagnostic tests that are not categorised as either a pathology test nor a diagnostic imaging test. Common examples of these tests are:</p>
        <ul>
            <li>cardiology field - ECG, echo cardiogram, angiocardiography</li>
            <li>neurology field - EEG, EMG, evoked potentials, nerve conduction tests</li>
            <li>gastroenterology field - endoscopy, colonoscopy</li>
            <li>respiratory field - pulmonary function tests</li>
            <li>audiology - hearing tests</li>
            <li>sleep studies</li>
        </ul>
        <p>These types of tests are those that are not done by either pathology or imaging providers, and are usually done by specialist providers (ie cardiologists, neurologists etc). And apart from the common tests above, it is expected that the relevant providers would have many more specialised tests that they would perform.</p>
        <p> This terminology is expected to be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a></p></td>
    <td>See <a href="https://jira.aws.tooling/browse/FTR-898">jira.aws.tooling/browse/FTR-898</a>, and <a href="https://github.com/hl7au/au-fhir-base/issues/402">au-fhir-base/issues/402</a></td>
   </tr>
   <tr>
    <td>subject (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/44">ci-fhir-r4/issues/44</a></td>
   </tr>
   <tr>
    <td>performer (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/44">ci-fhir-r4/issues/44</a></td>
   </tr>
   <tr>
    <td>performer (incorrect cardinality)</td>
    <td>This profile is derived from <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a> which has incorrectly constrained the cardinality on DiagnosticReport.performer from 0..* to 0..1. There should not be any constraints on DiagnosticReport.performer in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a> and a GitHub issue has been created to have this constraint removed.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/44">ci-fhir-r4/issues/44</a>, and <a href="https://github.com/hl7au/au-fhir-base/issues/411">au-fhir-base/issues/411</a></td>
   </tr>
   <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>   
</tbody>
</table>
