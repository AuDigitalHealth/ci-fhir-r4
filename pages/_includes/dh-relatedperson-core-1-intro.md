#### ADHA Core RelatedPerson
The purpose of this profile is to provide a core representation of a related person for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html) that are supported.

This profile is designed to set a core RelatedPerson standard:
* Querying for records associated with a related person
* Record or update a record associated with a related person

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)
 

#### Profile specific guidance
The table below provides guidance on representing communication preferences for a related person.
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
[ADHA Core Bundle](StructureDefinition-dh-bundle-core-1.html), 
[ADHA Core Encounter](StructureDefinition-dh-encounter-core-1.html), 
[ADHA Record of Claim against MBS](StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html),
[ADHA Diagnostic Result Observation](StructureDefinition-dh-observation-diagnosticresult-1.html),
[ADHA Diagnostic Result Group](StructureDefinition-dh-observation-diagnosticresultgroup-1.html),
[ADHA Simple Observation](StructureDefinition-dh-observation-simple-1.html), and
[ADHA Core ServiceRequest](StructureDefinition-dh-servicerequest-core-1.html).

These profiles build on this profile ([ADHA Core RelatedPerson](StructureDefinition-dh-relatedperson-core-1.html)) to define specific roles:
* [ADHA Authoring RelatedPerson](StructureDefinition-dh-relatedperson-author-1.html)
* [ADHA MHR RelatedPerson](StructureDefinition-dh-relatedperson-mhr-1.html)