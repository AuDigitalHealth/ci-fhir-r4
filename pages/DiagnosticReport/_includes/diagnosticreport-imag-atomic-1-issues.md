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
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/50">ci-fhir-r4/issues/50</a></td>
   </tr>
   <tr>
    <td>status (terminology binding)</td>
    <td>We need to create a more constrained value set for the Agency FHIR Pathology Report (DiagnsoticReport) profile. We would like to constrain the FHIR element DiagnosticReport.status with the current required valueset of <a href="http://hl7.org/fhir/R4/valueset-diagnostic-report-status.html">http://hl7.org/fhir/R4/valueset-diagnostic-report-status.html</a> to just contain the codes of "partial", "preliminary", "final", "amended", "corrected", "appended" i.e remove "registered", "cancelled", "entered-in-error" & "unknown".</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/50">ci-fhir-r4/issues/50</a>, and <a href="https://jira.aws.tooling/browse/FTR-933">jira.aws.tooling/browse/FTR-933</a></td>
   </tr>
      <tr>
    <td>category (potential code system redundancy / duplication)</td>
    <td><p>The element category is present in DiagnosticReport, Observation, and ServiceRequest. A rationalisation of the codes used for categorisation needs to be performed - work in progress.</p>
        <p>Observation.category: "imaging" <a href="http://hl7.org/fhir/R4/codesystem-observation-category.html">http://terminology.hl7.org/CodeSystem/observation-category</a></p>
        <p>DiagnosticReport.category: "RAD" <a href="http://hl7.org/fhir/R4/v2/0074/index.html">http://terminology.hl7.org/CodeSystem/v2-0074</a></p>
        <p>ServiceRequest.category: "363679005" <a href="http://hl7.org/fhir/R4/snomedct.html">https://snomed.info/sct</a> (Laboratory procedure)</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/28">ci-fhir-r4/issues/28</a></td>
   </tr>
    <tr>
    <td>category (terminology binding)</td>
    <td><p>The example value set is too broad for diagnostic imaging reporting - we need a value set that is a constrained value set from that example set <a href="http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html">Diagnostic Service Section Codes</a> that is restricted to the diagnostic imaging appropriate codes. This value set would become required.</p>
        <p>Stakeholder feedback is required to determine in <a href="https://www.rsna.org/en/practice-tools/data-tools-and-standards/radlex-radiology-lexicon">Radlex</a> or the output from the work with RSNA and LOINC would be more appropriate</p>
        <p>Codes from this value set are implemented in current CDA implementations for the My Health Record system.</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/55">ci-fhir-r4/issues/55</a>, and <a href="https://jira.aws.tooling/browse/FTR-954">jira.aws.tooling/browse/FTR-954</a></td>
   </tr>
   <tr>
    <td>code (terminology support)</td>
    <td><p>It is unclear if the slice from HL7 <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a> coding:snomedImagingProcedures is sufficient for supporting electronic exchange of diagnostic imaging observations in Australia.</p>
        <p>Feedback from stakeholders should be sought on the need for additional terminologies in this sector, e.g. <a href="http://hl7.org/fhir/uv/ips/ValueSet/imaging-observations-uv-ips">http://hl7.org/fhir/uv/ips/ValueSet/imaging-observations-uv-ips</a>. It is expected that this would be progressed via a HL7 AU Working Group and any additional support be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a>.</p></td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/407">au-fhir-base/issues/407</a></td>
   </tr>
   <tr>
    <td>subject (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/50">ci-fhir-r4/issues/50</a></td>
   </tr>
   <tr>
    <td>performer (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/50">ci-fhir-r4/issues/50</a></td>
   </tr>
   <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
   </tr>   
</tbody>
</table>
