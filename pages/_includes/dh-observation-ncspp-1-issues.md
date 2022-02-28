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
        <td>Dependency on HL7 AU Profile: in development</td>
        <td>This ADHA profile is dependent on the HL7 AU Profile Health Program Participation that is currently in development. This profile derives from the HL7 AU national model and constrains to support project-specific NCSR to MHR integration requirements.</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Structure driven narrative</td>
        <td>To do: design discussion with architect on supporting generated narrative via structure to meet the requirement to not exchange narrative when uploading from NCSR to MHR system. Is there a business case and the pre-requisite stability to fix the desired element labels in the profile?</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Terminology for typing of health program participation</td>
        <td>To develop, if possible, a set of concepts to identify the type of observation of program participation status including: Cancer screening program participation (national bowel cancer screening program participation, national cervical cancer screening program participation, national breast cancer screening program participation), Other expected needs include concepts like weight management program participation, alcohol twelve step program participation.</td>
        <td>N/A</td>
  </tr>
  <tr>
        <td>Terminology for program participation status</td>
        <td>To investigate and develop if possible an appropriate set of concepts to indicate program participation status. The requirements from Dept of Health are expected to be only a subset of these concepts – and are scoped towards their reporting requirements. The semantic meaning of the program participation values will be achieved by understanding what the participation status value means in the context of a particular program e.g. may understand that an individual is ‘actively screening’ if the program is a screening program and the status is a value of active involvement. Dept of Health preliminary requirements for participation status that are of interest to the cervical and bowel national cancer screening programs: Never Responder | Overdue for Screening | New to Screening | Actively Screening | Not Eligible | Excluded | Age Exited.</td>
        <td>N/A</td>
  </tr>
 </tbody>
</table>
