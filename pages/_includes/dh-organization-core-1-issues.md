<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
        <td>type (terminology support)</td>
        <td>There is a gap in support for Australian requirements. It has been proposed a FHIR code system representation for <a href="https://www.abs.gov.au/ausstats/abs@.nsf/mf/1292.0">1292.0 - Australian and New Zealand Standard Industrial Classification (ANZSIC)</a> be developed to meet this need.</td>
        <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/333">au-fhir-base/issues/333</a>, and<a href="https://jira.aws.tooling/browse/FTR-768">jira.aws.tooling/browse/FTR-768</a></td>
  </tr>
  <tr>
        <td>type (terminology support)</td>
        <td>There is a gap in support for fine grained occupation types. A SNOMED CT-AU value set, <a href="https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1">Healthcare Organisation Role Type</a>, has been published to support the representation of finer grained healthcare organisation types. It is under consideration for use in AU Base Organization.</td>
        <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/333">au-fhir-base/issues/333</a></td>
  </tr>
  <tr>
  <td>contact (use cases)</td>
  <td>At this time, specific usage scenarios are undefined for exchanging types of organisation contact information. An organisation may have multiple contacts, each for different purposes, such as patient record accuracy, clinical record accuracy or practitioner request for patient information.</td>
  <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/73">ci-fhir-r4/issues/73</a></td>
  </tr>
  <tr>
        <td>Constraint presentation</td>
        <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
        <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
 </tbody>
</table>
