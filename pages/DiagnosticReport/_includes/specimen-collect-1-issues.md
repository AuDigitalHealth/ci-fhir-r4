<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
      <td>self collection (not currently supported)</td>
      <td>It is not understood how self collection can be supported in this profile. There is no element or core extension available for Specimen that identifies a patient or related person as a collector.<br/><br/>
      Self collection of bloods or other material including sent by mail kits cancer screening are to be a supported usage scenario.
      </td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/24">ci-fhir-r4/issues/24</a>, and <a href="https://jira.hl7.org/browse/FHIR-26922">jira.hl7.org/browse/FHIR-26922</a></td>
  </tr>
  <tr>
      <td>Support for screening programs initiated requests</td>
      <td>Not yet clear how requests that are initiated by a national program, e.g. <a href="http://www.cancerscreening.gov.au/internet/screening/publishing.nsf/Content/bowel-screening-1">National Bowel Cancer Screening Program</a>, are supported with this model - work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/29">ci-fhir-r4/issues/29</a></td>
  </tr>
  <tr>
      <td>type (coding terminology enforcement)</td>
      <td>It is intended that the slice from HL7 <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-specimen.html">AU Base Specimen</a> coding:snomedSpecimenType should be enforced if any coding is provided. In other words, either text or a code from this value set is required. This is a work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/24">ci-fhir-r4/issues/24</a></td>
  </tr>
  <tr>
      <td>collection.method (coding terminology enforcement)</td>
      <td>It is intended that the slice from HL7 <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-specimen.html">AU Base Specimen</a> coding:snomedSpecimenCollectionProcedure should be enforced if any coding is provided. In other words, either text or a code from this value set is required. This is a work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/24">ci-fhir-r4/issues/24</a></td>
  </tr>
  <tr>
      <td>collection.bodySite (coding terminology enforcement)</td>
      <td>It is intended that the slice from HL7 <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-specimen.html">AU Base Specimen</a> coding:snomedBodySite should be enforced if any coding is provided. In other words, either text or a code from this value set is required. This is a work in progress.</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/24">ci-fhir-r4/issues/24</a></td>
  </tr>
  <tr>
      <td>Constraint presentation</td>
      <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
      <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
 </tbody>
</table>
