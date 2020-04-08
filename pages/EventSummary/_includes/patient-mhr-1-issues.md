<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
        <td>URI</td>
        <td>The URI for this profile will change to a version independent one. It will change from http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/patient-mhr-1 to http://ns.electronichealth.net.au/ci/fhir/StructureDefinition/patient-mhr-1.</td>
        <td>n/a</td>
  </tr>
  <tr>
        <td>Additional element</td>
        <td>Support will be added for biological sex.</td>
        <td>See HL7 AU GitHub issue #321 <a href="https://github.com/hl7au/au-fhir-base/issues/321">Represent patient's biological sex</a></td>
  </tr>
  <tr>
        <td>Additional element</td>
        <td>Support will be added for Year of arrival in Australia.</td>
        <td>See Agency GitHub issue #13 <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/13">Support exchange of CALD (Cultural and Linguistic Diversity) minimum data set</a></td>
  </tr>
  <tr>
        <td>Invariants</td>
        <td>The invariants on generalPractitioner, managingOrganization and contact.organization will be replaced with use of a new profile of Reference that imposes the same constraint.</td>
        <td>n/a</td>
  </tr>
  <tr>
        <td>contact.relationship</td>
        <td>The binding of contact.relationship will be done in AU Base.</td>
        <td>TBD</td>
  </tr>
 </tbody>
</table>
