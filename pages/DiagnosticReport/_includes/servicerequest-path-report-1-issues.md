<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
    <td>status (terminology binding)</td>
    <td><p>We need to create a more constrained value set for reporting the status of a service request for the overarching usage scenarios - this value set would be used for pathology, imaging, and other diagnostics reports.</p>
        <p>Constrain the terminology <a href="http://hl7.org/fhir/R4/valueset-request-status.html">http://hl7.org/fhir/R4/valueset-request-status.html</a> to "active", "on-hold" & "completed" and remove "draft", "revoked", "entered-in-error" and "unknown".</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/31">ci-fhir-r4/issues/31</a>, and <a href="https://jira.aws.tooling/browse/FTR-943">jira.aws.tooling/browse/FTR-943</a></td>
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
    <td>code (missing terminology)</td>
    <td>We need to create a value set for the pathology orders. This will be SNOMED CT-AU content and will be interim until the RCPA value set(s) becomes available.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/31">ci-fhir-r4/issues/31</a>, and <a href="https://jira.aws.tooling/browse/FTR-248">jira.aws.tooling/browse/FTR-248</a></td>
   </tr> 
    <tr>
    <td>code (RCPA terminology)</td>
    <td><p>One or more value sets representing the Standard for Pathology Informatics in Australia - Requesting codes (see <a href="https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads">DOWNLOADS</a>) are in progress. This terminology is expected to be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-servicerequest.html">AU Diagnostic Service Request</a>.</p>
        <p>When this content is available we are expecting to replace the placeholder SNOMED CT-AU set with this material.</p></td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/401">au-fhir-base/issues/401</a></td>
   </tr>
   <tr>
    <td>subject (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/31">ci-fhir-r4/issues/31</a></td>
   </tr>
   <tr>
    <td>requester (Reference type too open)</td>
    <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/31">ci-fhir-r4/issues/31</a></td>
   </tr>
  <tr>
    <td>Support for screening programs initiated requests</td>
    <td>Not yet clear how requests that are initiated by a national program, e.g. National Bowel Cancer Screening Program, are well supported with this model beyond allowing an organization as a requester - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/31">ci-fhir-r4/issues/31</a></td>
   </tr>
  <tr>
    <td>Support for self initiated requests</td>
    <td>Not yet clear how requests that are initiated by a patient or related person should be supported - work in progress.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/31">ci-fhir-r4/issues/31</a></td>
   </tr>
  <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>   
   
</tbody>
</table>
