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
    <td>meta.profile (invariant on profile value)</td>
    <td>Invariant enforcing the canonical url for this profile is missing - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/21">ci-fhir-r4/issues/21</a></td>
   </tr>
  <tr>
    <td>status (terminology binding)</td>
    <td>We need to create a more constrained value set for the Agency FHIR Pathology Report (DiagnsoticReport) profile. We would like to constrain the FHIR element DiagnosticReport.status with the current required valueset of <a href="http://hl7.org/fhir/R4/valueset-request-status.html">http://hl7.org/fhir/R4/valueset-request-status.html</a> to just contain the codes of "partial", "preliminary", "final", "amended", "corrected", "appended" i.e remove "registered", cancelled", "entered-in-error" & "unknown".</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/21">ci-fhir-r4/issues/21</a>, and <a href="https://jira.aws.tooling/browse/FTR-933">jira.aws.tooling/browse/FTR-933</a></td>
   </tr>
   <tr>
    <td>category (potential code system redundancy / duplication)</td>
    <td><p>The element category is present in <a href="http://hl7.org/fhir/R4/diagnosticreport.html">DiagnosticReport</a>, <a href="http://hl7.org/fhir/R4/observation.html">Observation</a>, and <a href="http://hl7.org/fhir/R4/servicerequest.html">ServiceRequest</a>. A rationalisation of the codes used for categorisation needs to be performed - work in progress.</p>
        <p>Observation.category: "laboratory" <a href="http://hl7.org/fhir/R4/codesystem-observation-category.html">http://terminology.hl7.org/CodeSystem/observation-category</a></p>
        <p>DiagnosticReport.category: "LAB" <a href="http://hl7.org/fhir/R4/v2/0074/index.html">http://terminology.hl7.org/CodeSystem/v2-0074</a></p>
        <p>ServiceRequest.category: "108252007" <a href="http://hl7.org/fhir/R4/snomedct.html">https://snomed.info/sct</a> (Laboratory procedure)</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/28">ci-fhir-r4/issues/28</a></td>
   </tr>
   <tr>
    <td>category (terminology binding)</td>
    <td><p>The example value set is too broad for pathology reporting - we need a value set that is a constrained value set from that example set <a href="http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html">Diagnostic Service Section Codes</a> that is restricted to the pathology appropriate codes. This value set would become required.</p>
        <p>Codes from this value set are implemented in current CDA implementations for the My Health Record system.</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/25">ci-fhir-r4/issues/25</a>, and <a href="https://jira.aws.tooling/browse/FTR-953">jira.aws.tooling/browse/FTR-953</a></td>
   </tr> 
   <tr>
    <td>code (terminology binding)</td>
    <td>We need to create a value set for coding pathology. This will be SNOMED CT-AU content and will be interim until the RCPA value set(s) becomes available.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/21">ci-fhir-r4/issues/21</a>, and <a href="https://jira.aws.tooling/browse/FTR-248">jira.aws.tooling/browse/FTR-248</a></td>
   </tr> 
    <tr>
    <td>code (RCPA terminology)</td>
    <td><p>One or more value sets representing the Standard for Pathology Informatics in Australia - Requesting codes (see <a href="https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads">DOWNLOADS</a>) are in progress. This terminology is expected to be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a>.</p>
        <p>When this content is available we are expecting to replace the placeholder SNOMED CT-AU set with this material.</p></td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/399">au-fhir-base/issues/399</a></td>
   </tr>
   <tr>
    <td>subject (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/21">ci-fhir-r4/issues/21</a></td>
   </tr>
   <tr>
    <td>performer (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/21">ci-fhir-r4/issues/21</a></td>
   </tr>
   <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>   
</tbody>
</table>
