<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
    <tr>
    <td>URI of location of referred to content</td>
    <td><p>Some consideration required for supporting in this profile how to support the requirement that the diagnostic report should store one URI per report or test referencing the externally images or other useful content. Where a URI is not available, additional narrative might be included stating a phone number or other contact details for further enquiry.</p>
        <p>This is a requirement in Diagnostic Imaging Report but still under consideration as to whether or not this is to be supported for Pathology Reports.</p>
        <p>Possibly an endPoint extension may be useful, possibly a simple extension for only the use case is appropriate.</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/32">ci-fhir-r4/issues/32</a></td>
   </tr>
   <tr>
    <td>category (pattern)</td>
    <td><p>The use of pattern on category is in conflict with the intended design and implementation guidance. We want to fix a domain category, e.g. imaging, and encourage the sending of a second finer grained category, but current profile forces all instances of category to match the fixed pattern or an error is thrown. We need to change this design, possibly slicing on category or using an invariant would be better.</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/87">ci-fhir-r4/issues/87</a></td>
   </tr>
   <tr>
    <td>category (potential code system redundancy / duplication)</td>
    <td><p>The element category is present in <a href="http://hl7.org/fhir/R4/diagnosticreport.html">DiagnosticReport</a>, <a href="http://hl7.org/fhir/R4/observation.html">Observation</a>, and <a href="http://hl7.org/fhir/R4/servicerequest.html">ServiceRequest</a>. A rationalisation of the codes used for categorisation needs to be performed.</p>
        <p>Observation.category: "laboratory" <a href="http://hl7.org/fhir/R4/codesystem-observation-category.html">http://terminology.hl7.org/CodeSystem/observation-category</a></p>
        <p>DiagnosticReport.category: "LAB" <a href="http://hl7.org/fhir/R4/v2/0074/index.html">http://terminology.hl7.org/CodeSystem/v2-0074</a></p>
        <p>ServiceRequest.category: "108252007" <a href="http://hl7.org/fhir/R4/snomedct.html">https://snomed.info/sct</a> (Laboratory procedure)</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/28">ci-fhir-r4/issues/28</a></td>
   </tr>
    <tr>
    <td>code (RCPA terminology)</td>
    <td><p>One or more value sets representing the Standard for Pathology Informatics in Australia - Reporting codes (see <a href="https://www.rcpa.edu.au/Library/Practising-Pathology/PTIS/APUTS-Downloads">DOWNLOADS</a>) are in progress. This terminology is expected to be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a>.</p>
        <p>When this content is available we are expecting to replace the placeholder SNOMED CT-AU set with this material.</p></td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/399">au-fhir-base/issues/399</a></td>
   </tr>
   <tr>
    <td>effective[x] (period)</td>
    <td>The My Health Record system expects only a dateTime; period is a relevant type for some imaging examinations. The constraining of types should be reconfirmed.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/47">ci-fhir-r4/issues/47</a></td>
   </tr>
   <tr>
    <td>presentedForm (PDF packaging requirements)</td>
    <td>Not yet clear what the packaging requirements are for attachments when sending FHIR to the My Health Record system infrastructure. In lieu of a FHIR equivalent of the <a href="https://developer.digitalhealth.gov.au/specifications/clinical-documents/ep-1962-2014/nehta-1229-2011">Clinical Documents - CDA Package v1.0</a> specification, examples for this profile will include workarounds (e.g. absolute url to a placeholder repository for attachment) or inclusion as base64 binary in a bundle.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/74">ci-fhir-r4/issues/74</a></td>
   </tr>
   <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>   
</tbody>
</table>
