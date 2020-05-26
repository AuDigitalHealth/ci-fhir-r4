#### Patient with Mandatory Identifier *[[Draft](http://hl7.org/fhir/r4/valueset-publication-status.html)]*
The purpose of this profile is to define a representation of a patient for exchange usage scenarios in an Australian context where unambiguous identification of a patient is mandatory. This profile is intended to support the electronic exchange of health information between healthcare providers in Australia.

This profile supports the exchange of some of the Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including a patient's country of birth, year of arrival and preferred language.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
  <li>country of birth is sent in the extension <a href="http://hl7.org/fhir/R4/extension-patient-birthplace.html">patient-birthPlace</a></li>
  <li>when representing that an interpreter is required, using the extension <a href="http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html">patient-interpreterRequired</a> the guidance in the following table applies.
    <table class="list" style="width:100%;border-spacing:15px">
      <tr>
        <th>Scenario</th>
        <th>Known language?</th>
        <th>Ext:patient-interpreterRequired</th>
        <th>communication.language</th>
        <th>communication.preferred</th>
      </tr>
      <tr>
        <td>An interpreter is required for a known language</td>
        <td>yes</td>
        <td style="font-family:courier;">true</td>
        <td>add language</td>
        <td style="font-family:courier;">true</td>
      </tr>
      <tr>
        <td>An interpreter is required, but the language is not known</td>
        <td>no</td>
        <td style="font-family:courier;">true</td>
        <td>empty</td>
        <td>empty</td>
      </tr>
    </table>
  </li>
  <li>when representing a local identifier for a patient, if there isn’t a local identifier namespace available, then an identifier can be sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
  <li>a maximum of one Individual Healthcare Identifier is present (ihiNumber)</li>
  <li>an Australian address conforms to <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html">AU Base Address</a></li>
</ul>

#### Boundaries and relationships
Other related patient attributes, ostensibly considered to be demographic in nature, are better represented in other resources rather than directly part of the Patient. These attributes may include:
* a patient's biological sex - this is a testable observation about a biological property of a patient, and as such should be represented using an [Observation](http://hl7.org/fhir/observation.html) resource. See the discussion on this in the [FHIR specification](http://hl7.org/fhir/patient.html#gender). 
* a patient's pregnancy status - this is a transient clinical statement better represented using the [Condition](http://hl7.org/fhir/condition.html) resource
* various social determinants of health (such as housing status, employment status or socio-economic background) - these patient attributes are better tracked using a combination of other resources such as [Observation](http://hl7.org/fhir/observation.html), [Condition](http://hl7.org/fhir/condition.html) or [Flag](http://hl7.org/fhir/flag.html)

Forthcoming work on these related attributes in collaboration with HL7 AU is expected to result in profiles published as part of [HL7 AU Base Implementation Guide](http://build.fhir.org/ig/hl7au/au-fhir-base/index.html).

This profile is referenced by
[Atomic Diagnostic Imaging Report](StructureDefinition-diagnosticreport-imag-atomic-1.html),
[Atomic Imaging Observation](StructureDefinition-observation-imag-atomic-1.html),
[Atomic Other Diagnostic Observation](StructureDefinition-observation-otherdiag-atomic-1.html),
[Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html),
[Atomic Pathology Observation](StructureDefinition-observation-path-atomic-1.html),
[Atomic Pathology Report](StructureDefinition-diagnosticreport-path-atomic-1.html),
[Base BodyStructure](StructureDefinition-bodystructure-dh-base-1.html),
[Collected Specimen](StructureDefinition-specimen-collect-1.html),
[Diagnostic Imaging Report](StructureDefinition-composition-imagreport-1.html),
[Order Details for Diagnostic Imaging Report](StructureDefinition-servicerequest-imag-report-1.html),
[Order Details for Other Diagnostic Report](StructureDefinition-servicerequest-otherdiag-report-1.html),
[Order Details for Pathology Report](StructureDefinition-servicerequest-path-report-1.html),
[Other Diagnostic Report](StructureDefinition-composition-otherdiagreport-1.html),
[Pathology Report](StructureDefinition-composition-pathreport-1.html),
[Simple Imaging Observation](StructureDefinition-observation-imag-simple-1.html),
[Simple Other Diagnostic Observation](StructureDefinition-observation-otherdiag-simple-1.html) and
[Simple Pathology Observation](StructureDefinition-observation-path-simple-1.html).
