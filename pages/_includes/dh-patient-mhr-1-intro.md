#### Australian Digital Health Agency My Health Record Patient
The purpose of this profile is to define a representation of a patient for exchange usage scenarios with the My Health Record system infrastructure in Australia.

This profile supports exchange of some of the Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including country of birth, year of arrival and preferred language.

This profile is designed to define a representation of a Patient for:
* Insert TBD ADHA API Endpoint
* Insert TBD ADHA API Endpoint

#### Implementation guidance
The following guidance applies:
<ul>
  <li>country of birth is sent in <a href="StructureDefinition-patient-ident-1-definitions.html#Patient.extension:birthPlace">extension:birthPlace</a></li>
  <li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
   <li>Where a sending system cannot send a family name (Patient.name.family) it is expected that:</li>
        <ul>
            <li>family name is sent in text (Patient.name.text)</li>
        </ul>
  <li>if sent, a generalPractitioner is sent as a reference to a PractitionerRole resource with:
      <ul>
         <li>a PractitionerRole.code, e.g. 62247001 |General practitioner|</li> 
         <li>a PractitionerRole.organization as either:
             <ul>
               <li>a reference to an Organization resource with Organization.name, or</li>
                <li>organization.display with the organisation's name</li>   
            </ul>
        </li>
      </ul>
</li>
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
        <td>No element sent, as per the guidance in the <a href="http://hl7.org/fhir/patient-definitions.html#Patient.communication">Comments</a> of Patient.communication</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is known</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is not known</td>
        <td></td>
        <td></td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>language.coding</td>
        <td></td>
        <td></td>
        <td>Each language instantiated in separate communication nodes; communication.preferred and extension:interpreterRequired may be sent as needed.</td>
      </tr>
    </tbody>
</table>

Blank cells in the above table indicate that the given element is absent from the resource.

#### Boundaries and relationships
Other attributes, ostensibly considered to be demographic in nature, are better represented in other resources rather than directly part of the Patient. These attributes may include:
* a patient's biological sex - this is a testable observation about a biological property of a patient, and as such should be represented using an [AU Sex Assigned At Birth](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-sexassignedatbirth.html) profile. . 
* a patient's pregnancy status - this is a transient clinical statement better represented using the [Condition](http://hl7.org/fhir/condition.html) resource
* various social determinants of health (such as housing status, employment status or socio-economic background) - these patient attributes are better tracked using a combination of other resources such as [Observation](http://hl7.org/fhir/observation.html), [Condition](http://hl7.org/fhir/condition.html) or [Flag](http://hl7.org/fhir/flag.html)

Forthcoming work on these related attributes in collaboration with HL7 AU is expected to result in profiles published as part of [HL7 AU Base Implementation Guide](http://build.fhir.org/ig/hl7au/au-fhir-base/index.html).

This profile is referenced by
[Australian Digital Health Agency Core BodyStructure](StructureDefinition-dh-bodystructure-core-1.html),
[TBD](StructureDefinition-TBD.html),
[TBD](StructureDefinition-TBD-1.html), and
[TBD](StructureDefinition-TBD-1.html).