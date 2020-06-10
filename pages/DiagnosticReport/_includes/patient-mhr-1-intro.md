#### My Health Record Patient
The purpose of this profile is to define a representation of a patient for exchange usage scenarios to support the electronic exchange of healthcare information between healthcare providers and the My Health Record system infrastructure in Australia.

This profile supports the exchange of some of the Cultural and Linguistic Diversity (CALD) data set [<sup>[1]</sup>](https://www.abs.gov.au/AUSSTATS/abs@.nsf/Latestproducts/1289.0Main%20Features11999) [<sup>[2]</sup>](https://meteor.aihw.gov.au/content/index.phtml/itemId/491352), including a country of birth, year of arrival and preferred language.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
  <li>country of birth is sent in <a href="StructureDefinition-patient-ident-1-definitions.html#Patient.extension:birthPlace">extension:birthPlace</a></li>
  <li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
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
[Diagnostic Imaging Study](StructureDefinition-imagingstudy-diag-1.html),
[Order Details for Diagnostic Imaging Report](StructureDefinition-servicerequest-imag-report-1.html),
[Order Details for Other Diagnostic Report](StructureDefinition-servicerequest-otherdiag-report-1.html),
[Order Details for Pathology Report](StructureDefinition-servicerequest-path-report-1.html),
[Other Diagnostic Report](StructureDefinition-composition-otherdiagreport-1.html),
[Pathology Report](StructureDefinition-composition-pathreport-1.html),
[Simple Imaging Observation](StructureDefinition-observation-imag-simple-1.html),
[Simple Other Diagnostic Observation](StructureDefinition-observation-otherdiag-simple-1.html) and
[Simple Pathology Observation](StructureDefinition-observation-path-simple-1.html).