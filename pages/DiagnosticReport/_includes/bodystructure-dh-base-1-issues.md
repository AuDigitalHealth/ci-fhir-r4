<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
      <td>morphology (terminology binding - AU Base)</td>
      <td>Need to have the terminology team check if a SNOMED CT AU ref set / value set is more appropriate than the current binding to <a href="http://hl7.org/fhir/R4/valueset-bodystructure-code.html">SNOMEDCTMorphologicAbnormalities</a> (<a href="http://hl7.org/fhir/R4/terminologies.html#example">example</a>) in <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-bodystructure.html">AU Base Body Structure</a> in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide.</a></td>
      <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/409">au-fhir-base/issues/409</a>, and <a href="https://jira.aws.tooling/browse/FTR-955">jira.aws.tooling/browse/FTR-955</a></td>
  </tr>
  <tr>
      <td>morphology (terminology binding)</td>
      <td>The binding strength of <a href="http://hl7.org/fhir/R4/valueset-bodystructure-code.html">SNOMED CT Morphologic Abnormalities</a> (<a href="http://hl7.org/fhir/R4/terminologies.html#example">example</a>) should be preferred in this profile.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/40">ci-fhir-r4/issues/40</a></td>
  </tr>
  <tr>
      <td>location (terminology binding)</td>
      <td>The binding strength of <a href="https://healthterminologies.gov.au/fhir/ValueSet/body-site-1">https://healthterminologies.gov.au/fhir/ValueSet/body-site-1</a> (<a href="http://hl7.org/fhir/R4/terminologies.html#extensible">extensible</a>) should be required in this profile.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/40">ci-fhir-r4/issues/40</a></td>
  </tr>
  <tr>
      <td>locationQualifier (terminology binding)</td>
      <td>The binding strength of <a href="http://hl7.org/fhir/R4/valueset-bodystructure-relative-location.html">Bodystructure Location Qualifier</a> (<a href="http://hl7.org/fhir/R4/terminologies.html#example">Example</a>) should be at least extensible in this profile. Consider setting a minimum value set of SNOMED CT to enforce that the code must be SNOMED CT though possibly fixing the system value may be sufficient.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/40">ci-fhir-r4/issues/40</a></td>
  </tr>
  <tr>
      <td>subject (Reference type too open)</td>
      <td>The Reference type is too open, we need to ensure that either a reference conforming to the profiles or a logical reference via identifier is supplied - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/40">ci-fhir-r4/issues/40</a></td>
  </tr>
  <tr>
      <td>Constraint presentation</td>
      <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
      <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
 </tbody>
</table>
