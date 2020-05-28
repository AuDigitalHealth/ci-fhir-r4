<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th> 
    <th>Issue No.</th>
  </tr>
  <tr>
    <td>Patient (country of birth missing implementation guidance)</td>
    <td>A patient's country of birth can be sent multiple ways using the birthPlace extension - e.g. using Address.text or Address.country. At this time the preferred option has not been identified.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/62">ci-fhir-r4/issues/62</a></td>
  </tr>
  <tr>
    <td>Patient (multipleBirth[x])</td>
    <td>Missing support for birth plurality. The element multipleBirth[x] offers a choice between multipleBirthBoolean or multipleBirthInteger (e.g. '2' to indicate the 2nd born), but does not allow recording the total number of births from one pregnancy - e.g. 2nd of 4. Clinical and jurisdiction feedback indicate that this is a useful data point to collect, to facilitate identification. This work is expected to be progressed via HL7 AU, with an extension being added to the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a>.</td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/417">au-fhir-base/issues/417</a></td>
  </tr>
  <tr>
    <td>contact (use cases)</td>
    <td>At this time specific usage scenarios are undefined for exchanging types of patient contact information, for example federal or state agencies managing children in care.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/16">ci-fhir-r4/issues/16</a>  See <a href="https://github.com/hl7au/au-fhir-base/issues/418">au-fhir-base/issues/418</a></td>
  </tr>
  <tr>
    <td>contact.relationship (terminology binding missing)</td>
    <td>Missing support for <a href="https://healthterminologies.gov.au/fhir/ValueSet/contact-relationship-type-1">Contact Relationship Type</a>. Work is underway to bind to terminology supporting contact relationship types in an Australian healthcare context. This is expected to be progressed via HL7 AU, resulting in support for this valueset as an extensible binding in the <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/index.html">HL7 AU Base Implementation Guide</a>.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/16">ci-fhir-r4/issues/16</a>  See <a href="https://github.com/hl7au/au-fhir-base/issues/419">au-fhir-base/issues/419</a></td>
  </tr>
</tbody>
</table>
