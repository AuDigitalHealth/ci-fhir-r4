<table class="list" width="100%">
    <tbody>
      <tr>
        <th>Reference</th>
        <th>Description</th>
        <th>Issue No.</th>
      </tr>
      <tr>
        <td>status (terminology binding)</td>
        <td><p>Publication of the <a href="https://healthterminologies.gov.au/fhir/ValueSet/observationstatus-result-available-1">ObservationStatus Result Available</a> value set is pending.</p></td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/48">ci-fhir-r4/issues/48</a></td>
      </tr>
      <tr>
        <td>category (pattern)</td>
        <td><p>The use of pattern on category is in conflict with the intended design and implementation guidance. We want to fix a domain category, e.g. imaging, and encourage the sending of a second finer grained category, but current profile forces all instances of category to match the fixed pattern or an error is thrown. We need to change this design, possibly slicing on category or using an invariant would be better.</p></td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/87">ci-fhir-r4/issues/87</a></td>
   </tr>
       <tr>
       <td>category (appropriateness of code)</td>
       <td><p>This profile is intended to support all 'other' diagnostic reports which is broad.</p>
	   <p>We are considering whether category is better supported as a value set including a set of diagnostic report types, or whether it has to be fixed to be a catch-all code and with the referencing diagnostic report provides the finer grain.</p>
	   <p>This issue applies to DiagnosticReport.category, ServiceRequest.category, and Observation.category.</p></td>
       <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/42">ci-fhir-r4/issues/42</a></td>
   </tr>
       <tr>
            <td>code (missing terminology)</td>
            <td><p>We need <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a>.</p>
            </td>
            <td>See <a href="https://jira.aws.tooling/browse/FTR-898">jira.aws.tooling/browse/FTR-898</a>, and <a href="https://github.com/hl7au/au-fhir-base/issues/402">hl7au/au-fhir-base/issues/402</a>
            </td>
       </tr> 
        <tr>
          <td>bodySite (terminology binding)</td>
           <td><p>This element should be bound to <a href="https://api.healthterminologies.gov.au/integration/v2/fhir/ValueSet/body-site-1">https://healthterminologies.gov.au/fhir/ValueSet/body-site-1</a> <a href="http://hl7.org/fhir/R4/terminologies.html#extensible">(extensible)</a>.</p>
                <p>This terminology is expected to be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a> as a preferred binding and then tightened in this profile when available.</p>
           </td>
           <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/405">hl7au/au-fhir-base/issues/405</a>
           </td>
       </tr>
      <tr>
            <td>Constraint presentation</td>
            <td><p>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</p>
            </td>
            <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream.
            </td>
   </tr>    
</tbody>
</table>
