<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
   <tr>
    <td>Usage of "Atomic" in description</td>
    <td>The term "Atomic" is used to describe data at the element level allowing element names and values to be represented in the report. Whether "Atomic" is the appropriate descriptive term to be used needs to be determined by the stakeholders and changes made if necessary.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/27">ci-fhir-r4/issues/27</a></td>
   </tr>
    <tr>
        <td>status (terminology binding)</td>
        <td><p>Publication of the <a href="https://healthterminologies.gov.au/fhir/ValueSet/diagnosticreportstatus-report-available-1">DiagnosticReportStatus Report Available</a> value set is pending.</p></td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/58">ci-fhir-r4/issues/58</a></td>
      </tr>
   <tr>
    <td>category (terminology binding)</td>
    <td>We need to create a more constrained value set that at least removes imaging and pathology.</td>
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
        <p>These types of tests are those that are not done by either pathology or imaging providers, and are usually done by specialist providers (i.e. cardiologists, neurologists etc). And apart from the common tests above, it is expected that the relevant providers would have many more specialised tests that they would perform.</p>
        <p> This terminology is expected to be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a></p></td>
    <td>See <a href="https://jira.aws.tooling/browse/FTR-898">jira.aws.tooling/browse/FTR-898</a>, and <a href="https://github.com/hl7au/au-fhir-base/issues/402">au-fhir-base/issues/402</a></td>
   </tr>
   <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>   
</tbody>
</table>
