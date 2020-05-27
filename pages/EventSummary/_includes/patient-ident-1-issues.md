<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
    <td>Invariants on references</td>
    <td>At present there are 4 invariants to control the quality of reference content. For simplicity, we prefer a single generic invariant that applies to all references. This solution has not yet been deteremined.</td>
    <td>See TODO</td>
  </tr>
  <tr>
    <td>Patient (birthPlace)</td>
    <td>There are multiple ways to send a patient's country of birth, using the birthPlace extension - e.g. using Address.text or Address.country. At this time there is no optimal preference identified.</td>
    <td>See TODO</td>
  </tr>
  <tr>
    <td>Patient (birth plurality)</td>
    <td>The patient resource contains an element for multipleBirth - as a choice of multipleBirthBoolean (yes/no) or multipleBirthInteger (e.g. '3rd'). However, there is no means to record the total number of births from one pregnancy - eg '3rd of 4'. Clinical and jurisdiction feedback indicate that this is a useful data point to collect. Forthcoming work on these related attributes in collaboration with HL7 AU is expected to result in an extension being added to the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a>.</td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/417">au-fhir-base/issues/417</a></td>
  </tr>
  <tr>
    <td>contact (use cases)</td>
    <td>At this time the usage scenarios, such as federal or state agencies managing children in care, are undefined for exchanging a patient's contact information with the My Health Record system.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/16">ci-fhir-r4/issues/16</a></td>
  </tr>
  <tr>
    <td>contact.relationship (terminology)</td>
    <td>Work is underway to bind to terminology supporting contact relationship types in an Australian healthcare context. This work is expected to result in support for values from <a href="https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-1">Contact Relationship Type</a></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/16">ci-fhir-r4/issues/16</a></td>
  </tr>
</tbody>
</table>