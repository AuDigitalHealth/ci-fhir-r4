<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th> 
    <th>Issue No.</th>
  </tr>
  <tr>
    <td>Country of birth (missing implementation guidance)</td>
    <td>A patient's country of birth can be sent multiple ways using the birthPlace extension - e.g. using Address.text or Address.country. At this time the preferred option has not been identified.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/62">ci-fhir-r4/issues/62</a></td>
  </tr>
  <tr>
    <td>multipleBirth[x] (missing support for birth plurality)</td>
    <td>The element multipleBirth[x] offers a choice between multipleBirthBoolean or multipleBirthInteger (e.g. '2' to indicate the 2nd born), but does not allow recording the total number of births from one pregnancy - e.g. 2nd of 4. Clinical and jurisdiction feedback indicate that this is a useful data point to collect, to facilitate identification. This work is expected to be progressed via HL7 AU, with an extension being added to the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a>.</td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/417">au-fhir-base/issues/417</a> See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/66">ci-fhir-r4/issues/66</a></td>
  </tr>
  <tr>
    <td>contact (use cases)</td>
    <td>At this time specific usage scenarios are undefined for exchanging types of patient contact information, for example federal or state agencies managing children in care.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/16">ci-fhir-r4/issues/16</a> See <a href="https://github.com/hl7au/au-fhir-base/issues/418">au-fhir-base/issues/418</a></td>
  </tr>
  <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr> 
</tbody>
</table>
