#### Australian Digital Health Agency Authoring RelatedPerson
The purpose of this profile is to define a representation of a related person in the role of an author or observer for exchange usage scenarios to support the electronic exchange of health information between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) that are supported. 

This profile is designed to set a RelatedPerson standard for:
* exchanging consumer-authored clinical information
* querying for records uploaded by a related person
* record or update a record uploaded by a related person

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)
 

#### Guidance
The following guidance applies:
* a local identifier may have an [HPI-O scoped](http://ns.electronichealth.net.au/id/hpio-scoped/medicalrecord/1.0/index.html) or [ABN-scoped](http://ns.electronichealth.net.au/id/abn-scoped/medicalrecord/1.0/index.html) identifier namespace if there isn't a local namespace available (see the [FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for more information)
* an IHI conforms to [AU IHI](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html)
* an Australian address conforms to [AU Base Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-ihi.html)

The table below provides guidance on the representation of communication preferences for a related person.
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
        <td>No element sent, as per the guidance in the <a href="http://hl7.org/fhir/relatedperson-definitions.html#RelatedPerson.communication">Comments</a> of RelatedPerson.communication</td>
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
This profile is referenced by 
[TBD](StructureDefinition-TBD-1.html).