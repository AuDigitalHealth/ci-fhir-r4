<table class="list" width="100%">
    <tbody>
      <tr>
        <th>Reference</th>
        <th>Description</th>
        <th>Issue No.</th>
      </tr>
    <tr>
        <td>Usage of "Atomic"</td>
        <td>
            <p>The term "Atomic" is used to describe data at the element level allowing element names and values to be represented in the report. Whether "Atomic" is the appropriate descriptive term to be used needs to be determined by the stakeholders and changes made if necessary.</p>
        </td>
        <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/27">ci-fhir-r4/issues/27</a>
        </td>
    </tr>
        <tr>
            <td>status (terminology binding)</td>
            <td><p>We need to create a more constrained value set for reporting the status of a diagnostic observation for the overarching usage scenarios - this value set would be used for pathology, imaging, and other diagnostics.</p>
            <p>Thinking to constrain the status with the current required valueset of <a href="http://hl7.org/fhir/R4/valueset-observation-status.html">http://hl7.org/fhir/R4/valueset-observation-status.html</a> to just contain the codes of "preliminary", "final", "amended", "corrected" ie remove "registered", "cancelled", "entered-in-error" & "unknown".</p>
            </td>
            <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/51">ci-fhir-r4/issues/51</a>, and <a href="https://jira.aws.tooling/browse/FTR-938">jira.aws.tooling/browse/FTR-938</a>
            </td>
       </tr>
       <tr>
            <td>code (terminology support)</td>
            <td><p>It is unclear if the slice from <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">HL7 AU Diagnostic Observation</a> coding:snomedImagingProcedure is sufficient for supporting electronic exchange of diagnostic imaging observations in Australia.</p>
<p>Feedback from stakeholders should be sought on the need for additional terminologies in this sector, e.g. <a href="http://hl7.org/fhir/uv/ips/ValueSet/imaging-observations-uv-ips">http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html</a>. It is expected that this would be progressed via an HL7 AU Working Group and any additional support be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a>.</p></td>
            <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/406">au-fhir-base/issues/406</a></td>
       </tr> 
       <tr>
            <td>subject (Reference type too open)</td>
            <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
            <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/51">ci-fhir-r4/issues/51</a>
            </td>
       </tr>
       <tr>
           <td>performer (Reference type too open)</td>
           <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
           <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/51">ci-fhir-r4/issues/51</a>
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
