#### Patient with Mandatory Identifier *[[Draft](http://hl7.org/fhir/r4/valueset-publication-status.html)]*
The purpose of this profile is to define a representation of a patient for exchange usage scenarios in an Australian context where unambiguous identification of a patient is mandatory. This profile is intended to support the electronic exchange of health information between healthcare providers in Australia.

This profile supports the exchange of some of the Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including a country of birth, year of arrival and preferred language.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
  <li>country of birth is sent in the extension <a href="http://hl7.org/fhir/R4/extension-patient-birthplace.html">patient-birthPlace</a></li>
  <li>local identifier for a patient, if there isn’t a local identifier namespace available, then an identifier can be sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
  <li>an IHI conforms to the ihiNumber Identifier slice and a maximum of one will be sent</li>
  <li>an Australian address conforms to <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html">AU Base Address</a></li>
  <li>generalPractitioner will be sent as a PractitionerRole, unless a practitioner is not able to be nominated, in that case an Organization is sent instead</li> 
</ul>

When sending communication preferences for a patient the guidance in the following table applies.
<table class="list" style="width:100%">
    <colgroup>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 24%;"/>
    </colgroup>
	<tbody>
      <tr>
        <th>Scenario</th>
        <th>communication.language</th>
        <th>communication.preferred</th>
        <th>extension:interpreterRequired</th>
		<th>Notes</th>
      </tr>
      <tr>
        <td>Preferred language is English</td>
        <td></td>
        <td></td>
        <td></td>
        <td>No communication related elements will be sent in this scenario, as per the guidance in the <a href="http://hl7.org/fhir/patient-definitions.html#Patient.communication">Comments field</a> of the Patient.communication element.</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language, as coding</td>
        <td>'true'</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is known</td>
        <td>language, as coding</td>
        <td>'true'</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language not known</td>
        <td></td>
        <td></td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>each language instantiated in separate communication nodes, as coding</td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
</table>

Blank cells in the above table indicate that the given element is absent from the resource.

#### Boundaries and relationships
Other related patient attributes, ostensibly considered to be demographic in nature, are better represented in other resources rather than directly part of the Patient. These attributes may include:
* a patient's biological sex - this is a testable observation about a biological property of a patient, and as such should be represented using an [Observation](http://hl7.org/fhir/observation.html) resource. See the discussion on this in the [FHIR specification](http://hl7.org/fhir/patient.html#gender). 
* a patient's pregnancy status - this is a transient clinical statement better represented using the [Condition](http://hl7.org/fhir/condition.html) resource
* various social determinants of health (such as housing status, employment status or socio-economic background) - these patient attributes are better tracked using a combination of other resources such as [Observation](http://hl7.org/fhir/observation.html), [Condition](http://hl7.org/fhir/condition.html) or [Flag](http://hl7.org/fhir/flag.html)

Forthcoming work on these related attributes in collaboration with HL7 AU is expected to result in profiles published as part of [HL7 AU Base Implementation Guide](http://build.fhir.org/ig/hl7au/au-fhir-base/index.html).

This profile is referenced by TBD.