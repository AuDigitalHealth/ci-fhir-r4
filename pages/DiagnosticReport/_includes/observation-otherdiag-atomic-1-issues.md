<table class="list" width="100%">
    <tbody>
      <tr>
        <th>Reference</th>
        <th>Description</th>
        <th>Issue No.</th>
      </tr>
    <tr>
        <td>Usage of "Atomic" in description</td>
        <td>
            <p>The term "Atomic" is used to describe data at the element level allowing element names and values to be represented in the report. Whether "Atomic" is the appropriate descriptive term to be used needs to be determined by the stakeholders and changes made if necessary.</p>
        </td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/27">ci-fhir-r4/issues/27</a>
        </td>
    </tr>
        <tr>
        <td>status (terminology binding)</td>
        <td><p>Publication of the <a href="https://healthterminologies.gov.au/fhir/ValueSet/observationstatus-result-available-1">ObservationStatus Result Available</a> value set is pending.</p></td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/59">ci-fhir-r4/issues/59</a></td>
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
            <td><p>We need a value set whose permissible values represent types of diagnostic tests that are not categorised as either a pathology test nor a diagnostic imaging test. Common examples of these tests are:
                <ul>
                    <li>cardiology field - ECG, echo cardiogram, angiocardiography</li>
                    <li>neurology field - EEG, EMG, evoked potentials, nerve conduction tests</li>
                    <li>gastroenterology field - endoscopy, colonoscopy</li>
                    <li>respiratory field - pulmonary function tests</li>
                    <li>audiology - hearing tests</li>
                    <li>sleep studies</li>
                </ul>
                </p>
               <p>These types of tests are those that are not done by either pathology or imaging providers, and are usually done by specialist providers (ie cardiologists, neurologists etc). And apart from the common tests above, it is expected that the relevant providers would have many more specialised tests that they would perform.</p>
                <p>This terminology is expected to be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a>.</p>
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
            <td>referenceRange (too broad)</td>
            <td>Investigation on usage scenario support for reference ranges is required - can some more meaningful modelling be done here to clarify how this structure should be used for some common scenarios.</td>
            <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/37">ci-fhir-r4/issues/37</a>
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
