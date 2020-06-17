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
    <td>category (pattern)</td>
    <td><p>The use of pattern on category is in conflict with the intended design and implementation guidance. We want to fix a domain category, e.g. imaging, and encourage the sending of a second finer grained category, but current profile forces all instances of category to match the fixed pattern or an error is thrown. We need to change this design, possibly slicing on category or using an invariant would be better.</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/87">ci-fhir-r4/issues/87</a></td>
   </tr>
      <tr>
    <td>category (potential code system redundancy / duplication)</td>
    <td><p>The element category is present in DiagnosticReport, Observation, and ServiceRequest. A rationalisation of the codes used for categorisation needs to be performed.</p>
        <p>Observation.category: "imaging" <a href="http://hl7.org/fhir/R4/codesystem-observation-category.html">http://terminology.hl7.org/CodeSystem/observation-category</a></p>
        <p>DiagnosticReport.category: "RAD" <a href="http://hl7.org/fhir/R4/v2/0074/index.html">http://terminology.hl7.org/CodeSystem/v2-0074</a></p>
        <p>ServiceRequest.category: "363679005" <a href="http://hl7.org/fhir/R4/snomedct.html">https://snomed.info/sct</a> (Laboratory procedure)</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/28">ci-fhir-r4/issues/28</a></td>
   </tr>
    <tr>
    <td>category (terminology binding)</td>
    <td><p>The example value set is too broad for diagnostic imaging reporting - we need a value set that is a constrained value set from that example set <a href="http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html">Diagnostic Service Section Codes</a> that is restricted to the diagnostic imaging appropriate codes. This value set would become required.</p>
        <p>Stakeholder feedback is required to determine in <a href="https://www.rsna.org/en/practice-tools/data-tools-and-standards/radlex-radiology-lexicon">Radlex</a> or the output from the work with RSNA and LOINC would be more appropriate</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/55">ci-fhir-r4/issues/55</a>, and <a href="https://jira.aws.tooling/browse/FTR-954">jira.aws.tooling/browse/FTR-954</a></td>
   </tr>
   <tr>
    <td>code (terminology support)</td>
    <td><p>It is unclear if the slice from HL7 <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a> coding:snomedImagingProcedures is sufficient for supporting electronic exchange of diagnostic imaging observations in Australia.</p>
        <p>Feedback from stakeholders should be sought on the need for additional terminologies in this sector, e.g. <a href="http://hl7.org/fhir/uv/ips/ValueSet/imaging-observations-uv-ips">http://hl7.org/fhir/uv/ips/ValueSet/imaging-observations-uv-ips</a>. It is expected that this would be progressed via a HL7 AU Working Group and any additional support be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a>.</p></td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/407">au-fhir-base/issues/407</a></td>
   </tr>
   <tr>
    <td>Support aggregation of multiple diagnostic investigations?</td>
    <td><p>This profile is intended to support one DiagnosticReport per diagnostic investigation / procedure - it is unclear if support for the aggregation of multiple investigations / procedures is desired. Feedback from stakeholders will be sought on whether this is to be supported.</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/88">ci-fhir-r4/issues/88</a></td>
   </tr>
   <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
   </tr>   
</tbody>
</table>
