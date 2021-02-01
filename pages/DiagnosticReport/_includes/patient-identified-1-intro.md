#### Identified Patient
The purpose of this profile is to define a representation of a patient for exchange usage scenarios in an Australian context where unambiguous identification of a patient is mandatory. This profile is intended to support the electronic exchange of health information between healthcare providers in Australia.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
<ul>
  <li>a local identifier is sent with a <a href="http://ns.electronichealth.net.au/id/hpio-scoped/service-provider-individual/1.0/index.html">HPI-O scoped</a> or <a href="http://ns.electronichealth.net.au/id/abn-scoped/service-provider-individual/1.0/index.html">ABN-scoped</a> identifier namespace if there isn't a local namespace available (see the <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions">FAQ</a> for more information)</li>
  <li>an IHI conforms to <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-ihi.html">AU IHI</a> slice and a maximum of one is sent</li>
  <li>an Australian address conforms to <a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html">AU Base Address</a></li>
</ul>

When sending communication preferences for a patient acting in a role other than the subject the a record the guidance in the following table applies.
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
		<th>Notes</th>
      </tr>
      <tr>
        <td>Preferred language is English</td>
        <td></td>
        <td></td>
        <td>No element sent, as per the guidance in the <a href="http://hl7.org/fhir/patient-definitions.html#Patient.communication">Comments</a> of Patient.communication</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>language.coding</td>
        <td></td>
        <td>Each language instantiated in separate communication nodes; communication.preferred may be sent as needed.</td>
      </tr>
    </tbody>
</table>

Blank cells in the above table indicate that the given element is absent from the resource.

#### Boundaries and relationships
The purpose of this profile is to define a representation of a patient, acting in a role other than the subject of the record, for example when the patient is acting as the author of the document. The concept of a patient as the subject of a record is represented in [My Health Record Patient](StructureDefinition-patient-mhr-1.html) and [Patient with Mandatory Identifier](StructureDefinition-patient-ident-1.html). 

This profile is referenced by 
[Order Details for Diagnostic Report](StructureDefinition-servicerequest-diag-report-1.html), and
[Identified RelatedPerson](StructureDefinition-relatedperson-identified-1.html).
