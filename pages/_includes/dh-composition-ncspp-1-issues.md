<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
        <td>Constraint presentation</td>
        <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
        <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
  <tr>
        <td>Current design supports a structure of subtyping - flex for doc + view</td>
        <td>Decision on whether to proceed with flexible profile or fixed profile for view only.</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Record titles?</td>
        <td>What are the record titles for each national cancer screening program participation record + the view.</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Dependency on HL7 AU Profile: in development</td>
        <td>The section entry profile is in development but is dependent on the HL7 AU Profile Health Program Participation that is currently in development.</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Structure driven narrative</td>
        <td>To do: design discussion with architect on supporting generated narrative via structure to meet the requirement to not exchange narrative when uploading from NCSR to MHR system. Is there a business case and the pre-requisite stability to fix the desired element labels in the profile?</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Section constraints - specificty vs flexibility</td>
        <td>Choice to be made between repeatable section supported by a value set or a defined set of section slices as shown in <a href="StructureDefinition-dh-composition-ncspp-valuesetoptions-1.html">Section type design elaboration version of ADHA National Cancer Screening Program Participation Composition</a>.</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Section title constraints</td>
        <td>Choice to be made on where in the solution to fix the section title constraints - if set in the profile these need to be updated and maintained to change the section title. Would be breaking change in profile.</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Terminology for section concepts</td>
        <td>Terminology is in design. Concept development is in review process. Value set and value set membership needs to be taken to stakeholders via <a href="StructureDefinition-dh-composition-ncspp-valuesetoptions-1.html">Section type design elaboration version of ADHA National Cancer Screening Program Participation Composition</a>.</td>
        <td>N/A</td>
  </tr>
 </tbody>
</table>
