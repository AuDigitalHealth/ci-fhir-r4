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
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/30">ci-fhir-r4/issues/30</a> and <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/27">ci-fhir-r4/issues/27</a> </td>
  </tr>
   <tr>
    <td>category (potential code system redundancy / duplication)</td>
    <td>The element category is present in <a href="http://hl7.org/fhir/R4/diagnosticreport.html">DiagnosticReport</a>, <a href="http://hl7.org/fhir/R4/observation.html">Observation</a>, and <a href="http://hl7.org/fhir/R4/servicerequest.html">ServiceRequest</a>. A rationalisation of the codes used for categorisation needs to be performed - work in progress.<br/><br/>
        Observation.category: "laboratory" <a href="http://hl7.org/fhir/R4/codesystem-observation-category.html">http://terminology.hl7.org/CodeSystem/observation-category</a><br/><br/>
        DiagnosticReport.category: "LAB" <a href="http://hl7.org/fhir/R4/v2/0074/index.html">http://terminology.hl7.org/CodeSystem/v2-0074</a><br/><br/>
        ServiceRequest.category: "108252007" <a href="http://hl7.org/fhir/R4/snomedct.html">https://snomed.info/sct</a> (Laboratory procedure)</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/28">ci-fhir-r4/issues/28</a></td>
   </tr>
    <tr>
    <td>code (RCPA terminology)</td>
    <td>One or more value sets representing the Standard for Pathology Informatics in Australia - Requesting codes (see <a href="https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads">DOWNLOADS</a>) are in progress. This terminology is expected to be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a>.<br/><br/>
        When this content is available we are expecting to replace the placeholder SNOMED CT-AU set with this material.</td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/399">au-fhir-base/issues/399</a></td>
   </tr>
  <tr>
      <td>subject (Reference type too open)</td>
      <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/30">ci-fhir-r4/issues/30</a></td>
  </tr>
  <tr>
      <td>performer (Reference type too open)</td>
      <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/30">ci-fhir-r4/issues/30</a></td>
  </tr>
  <tr>
      <td>referenceRange (too broad)</td>
      <td>Investigation on usage scenario support for reference ranges is required - can some more meaningful modelling be done here to clarify how this structure should be used for some common scenarios.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/37">ci-fhir-r4/issues/37</a></td>
  </tr>
   <tr>
      <td>Constraint presentation</td>
      <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
      <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
 </tbody>
</table>
