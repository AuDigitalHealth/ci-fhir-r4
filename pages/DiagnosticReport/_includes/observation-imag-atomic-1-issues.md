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
            <td>code (terminology support)</td>
            <td><p>It is unclear if the SNOMED CT-AU value set <a href=" https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1">Imaging Procedure</a> is sufficient for supporting electronic exchange of diagnostic imaging observations in Australia.</p>
<p>Feedback from stakeholders should be sought on the need for additional terminologies in this sector. It is expected that this would be progressed via an HL7 AU Working Group and any additional support be included in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a> in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a>.</p></td>
            <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/406">au-fhir-base/issues/406</a></td>
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
