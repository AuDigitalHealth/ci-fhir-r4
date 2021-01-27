# {{ page.title }}
{% include publish-box.html %}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

## Introduction

The Diagnostic Report implementation guide is intended to support multiple usage scenarios; some profiles described within this implementation guide are reused across usage scenarios and other implementation guides.

This informative section provides a mapping from the requirements of each end-product clinical specification to elements in a profiled FHIR resource. At the time of publication of this implementation guide the only end-product clinical specification supported is TBD (TBD).

The mapping from requirements table below demonstrates the logical decomposition of each requirement to the lowest possible element in an applicable profile. 

## Mapping from Diagnostic Report - Business Requirements v1.0
This informative section provides mapping from the data items (i.e. requirements) in [Diagnostic Report - Business Requirements v1.0 [TBD]](index.html#TBD).

The table below matches the data items to the corresponding supported element in the [TBD profile](TBD) profile, or referenced profile (e.g. [TBD](TBD)). The hierarchy column demonstrates the path to that supported element from the root Composition. 

See the [legend](mappings.html#legend-for-mapping-from-requirements) for information on the columns used to present the mapping content.

<table class="list" width="100%">
	<col style="width:20%"/>
	<col style="width:7%"/>
	<col style="width:20%"/>
	<col style="width:25%"/>
	<col style="width:28%"/>
            <thead>
                <tr>
                    <th>Requirement</th>
                    <th>Req. No</th>
                    <th>Element name</th>
                    <th>Hierarchy</th>
                    <th>Additional notes</th>
                </tr>
            </thead>
            <tbody>
             <!-- ======================================================================== -->
                <tr>
                    <td>Newly authored document with a subtype</td>
                    <td>040005</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Inclusion of a subtype in document</td>
                    <td>040020</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Inclusion of a display name in document</td>
                    <td>040025</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>No address for consumer</td>
                    <td>040011</td>
                    <td></td>
                    <td></td>
                    <td>
                        <p>This requirement prohibits inclusion of any address for the consumer when uploaded to the My Health Record.</p>
                        <p>This requirement may be enforced by mandating conformance to the <a href="StructureDefinition-patient-mhr-1.html">My Health Record Patient</a> profile.</p>
                    </td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Diagnostic Report</td>
                    <td>040035</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Inclusion of a subtype in document</td>
                    <td>040070</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Inclusion of a display name in document</td>
                    <td>040075</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Inclusion of subtype in document banner</td>
                    <td>040080</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td rowspan="9">Components in the Diagnostic Report</td>
                    <td rowspan="9">040018</td>
                    <td>Composition</td>
                    <td>Composition</td>
                    <td rowspan="9">
                        <p>The profile does not mandate a versioning mechanism (e.g. meta.versionId). Versioning is an implementation environment concern and outside of the scope of the FHIR profiles.</p>
                        <p>This requirement states a PSML document will contain the organisation the pharmacist is representing at the time of document authoring. The profile has this as optional.</p>
                        <p>The profile supports inclusion of a primary care provider as a practitioner or as an organisation - direct support is not provided in FHIR for a primary care provider practitioner with included organisational information. The profile for a primary care provider organisation allows a name or identifier - it does not mandate name.</p>
                        <p>These parts of the requirement are best enforced in a further profile.</p>
                     </td>
                 </tr>
                 <tr>
                    <td>Composition.extension(composition-author-role)</td>
                     <td>Composition.extension(composition-author-role)</td>
                 </tr>
                 <tr>
                    <td>PractitionerRole.organization</td>
                     <td>Composition.extension(composition-author-role)> PractitionerRole.organization</td>
                 </tr> 
                 <tr>
                    <td>Composition.identifier</td>
                    <td>Composition.identifier</td>
                 </tr>
                 <tr>
                    <td>Composition.subject</td>
                     <td>Composition.subject</td>
                 </tr>
                 <tr>
                    <td>Patient.generalPractitioner</td>
                     <td>Composition.subject> Patient.generalPractitioner</td>
                 </tr> 
                 <tr>
                    <td>Composition.date</td>
                     <td>Composition.date</td>
                 </tr>                 
              <!-- ======================================================================== -->
                <tr>
                    <td>Diagnostic results in PDF attachment </td>
                    <td>040045</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Identifier for document author</td>
                    <td>040040</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
              <tr>
                    <td>No address for consumer</td>
                    <td>040050</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>No Electronic Communication Detail for the consumer</td>
                    <td>040055</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>HPI-I relaxed document upload</td>
                    <td>040060</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is applicable only to a CDA implementation.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Point-to-point transmission</td>
                    <td>040065</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Unique subtype values</td>
                    <td>040086</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Unique subtype meanings</td>
                    <td>040087</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Authoring document with updated subtype value sets</td>
                    <td>040106</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Changing subtype value sets</td>
                    <td>040115</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Legacy documents in MHR</td>
                    <td>040210</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Newly authored document without a subtype</td>
                    <td>040215</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Display subtype in document banner</td>
                    <td>040230</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Display subtype in MHR document list</td>
                    <td>040220</td>
                    <td></td>
                    <td></td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Search on subtype in CIS/mobile</td>
                    <td>040225</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Integration with existing MHR views</td>
                    <td>040235</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Display subtype in Health Record Overview</td>
                    <td>040240</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Display subtype in Medicines Information View</td>
                    <td>040245</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Display subtype in document banner</td>
                    <td>040275</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Display subtype in MHR document list</td>
                    <td>040270</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a rendering requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Search on subtype in CIS/mobile</td>
                    <td>040290</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a producing system behavioural requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Integrate with Health Record Overview</td>
                    <td>040280</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a producing system behavioural requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Discover new (or updated) document types and subtypes</td>
                    <td>040016</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a producing system behavioural requirement.</td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Support the discovery of new document types and subtypes</td>
                    <td>040201</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Subtype value set in document</td>
                    <td>040021</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Transition to enhanced specifications</td>
                    <td>040010</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->                
                <tr>
                    <td>Subtype value set in document</td>
                    <td>040071</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Governance group</td>
                    <td>040085</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Changing subtypes value sets</td>
                    <td>040105</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Validation of subtype value</td>
                    <td>040110</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>View document subtype via existing connected systems</td>
                    <td>040205</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>This requirement is a producing system behavioural requirement.</td>
                </tr>
              <!-- ======================================================================== -->
             </tbody>
</table>

## Mapping from Diagnostic Report - Information Requirements v1.0
This informative section provides mapping from the data items (i.e. requirements) in [Diagnostic Report - Information Requirements v1.0 [TBD]](index.html#TBD).

The table below matches the data items to the corresponding supported element in the [TBD profile](TBD) profile, or referenced profile (e.g. [TBD](TBD)). The hierarchy column demonstrates the path to that supported element from the root Composition. 

See the [legend](mappings.html#legend-for-mapping-from-requirements) for information on the columns used to present the mapping content.

<table class="list" width="100%">
	<col style="width:20%"/>
	<col style="width:7%"/>
	<col style="width:20%"/>
	<col style="width:25%"/>
	<col style="width:28%"/>
            <thead>
                <tr>
                    <th>Requirement</th>
                    <th>Req. No</th>
                    <th>Element name</th>
                    <th>Hierarchy</th>
                    <th>Additional notes</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Individual (mandatory)</td>
                    <td>027984</td>
                    <td>Patient</td>
                    <td>Composition.subject> Patient</td>
                    <td><p></p></td>
                </tr>                
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Individual Healthcare Identifier (mandatory)</td>
                    <td rowspan="2">022082</td>
                    <td>Patient.identifier</td>
                    <td>Composition.subject> Patient.identifier</td>
                    <td rowspan="2">
                        <p>This requirement mandates inclusion of the individual's IHI.</p>
                        <p>This requirement may be enforced by mandating conformance to the <a href="StructureDefinition-patient-mhr-1.html">My Health Record Patient</a> profile.</p>
                    </td>
                </tr>
                <tr>
                    <td>Composition.subject.identifier</td>
                    <td>Composition.subject.identifier</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Individual's title (optional)</td>
                    <td rowspan="2">022081</td>
                    <td>Patient.name.text</td>
                    <td>Composition.subject> Patient.name.text</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Patient.name.prefix</td>
                    <td>Composition.subject> Patient.name.prefix</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Individual's given name (optional)</td>
                    <td rowspan="2">023056</td>
                    <td>Patient.name.text</td>
                    <td>Composition.subject> Patient.name.text</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Patient.name.given</td>
                    <td>Composition.subject> Patient.name.given</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Individual's family name (optional)</td>
                    <td rowspan="2">023058</td>
                    <td>Patient.name.text</td>
                    <td>Composition.subject> Patient.name.text</td>
                    <td rowspan="2">
                        <p>This requirement mandates inclusion of the individual's family name.</p>
                        <p>This requirement may be enforced by mandating conformance to the <a href="StructureDefinition-patient-mhr-1.html">My Health Record Patient</a> profile.</p>
                       </td>
                </tr>
                <tr>
                    <td>Patient.name.family</td>
                    <td>Composition.subject> Patient.name.family</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Individual's name suffix (optional)</td>
                    <td rowspan="2">023059</td>
                    <td>Patient.name.text</td>
                    <td>Composition.subject> Patient.name.text</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Patient.name.suffix</td>
                    <td>Composition.subject> Patient.name.suffix</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Individual's gender (mandatory)</td>
                    <td>027983</td>
                    <td>Patient.gender</td>
                    <td>Composition.subject> Patient.gender</td>
                    <td>
                        <p>This requirement mandates inclusion of the individual's gender.</p>
                       <p>This requirement may be enforced by mandating conformance to the <a href="StructureDefinition-patient-mhr-1.html">My Health Record Patient</a> profile.</p>
                       
                    </td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Individual's sex (optional)</td>
                    <td>028570</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>
                        <p>Not directly supported in FHIR.</p>
                        <p>This implementation guide only supports including a patient’s gender as part of a patient’s demographics for identification purposes in line with the <a href="https://www.ag.gov.au/Publications/Pages/AustralianGovernmentGuidelinesontheRecognitionofSexandGender.aspx">Australian Government Guidelines on the Recognition of Sex and Gender</a>.</p>
                        <p>Work is underway via HL7 AU to define a nationally agreed clinical observation of biological sex at birth, see <a href="https://github.com/hl7au/au-fhir-base/issues/321">https://github.com/hl7au/au-fhir-base/issues/321</a>.</p>
                    </td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Individual's date of birth (mandatory)</td>
                    <td>023060</td>
                    <td >Patient.birthDate</td>
                    <td>Composition.subject> Patient.birthDate</td>
                    <td>
                        <p>This requirement mandates inclusion of the individual's date of birth.</p>
                        <p>This requirement may be enforced by mandating conformance to the <a href="StructureDefinition-patient-mhr-1.html">My Health Record Patient</a> profile.</p>
                                            </td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Date of birth accuracy indicator (optional)</td>
                    <td>024026</td>
                    <td rowspan="2">Patient.birthDate.extension(date-accuracy-indicator)</td>
                    <td rowspan="2">Composition.subject> Patient.birthDate.extension(date-accuracy-indicator)</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>027005</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Date of birth accuracy indicator values (optional)</td>
                    <td>027005</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                  <tr>
                    <td>Indigenous status (mandatory)</td>
                    <td>024033</td>
                    <td>Patient.extension(indigenous-status)</td>
                    <td>Composition.subject> Patient.extension(indigenous-status)</td>
                    <td>
                        <p>This requirement mandates inclusion of the individual's indigenous status.</p>
                        <p>This requirement may be enforced by mandating conformance to the <a href="StructureDefinition-patient-mhr-1.html">My Health Record Patient</a> profile.</p>
                    </td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Individual's address (optional)</td>
                    <td>028640</td>
                    <td>Patient.address</td>
                    <td>Composition.subject> Patient.address</td>
                    <td><p></p></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Individual's electronic communication details (optional)</td>
                    <td>024042</td>
                    <td>Patient.telecom</td>
                    <td>Composition.subject> Patient.telecom</td>
                    <td><p></p></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Document author (mandatory)</td>
                    <td>027985</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                 <tr>
                    <td>Healthcare provider organisation name (mandatory)</td>
                    <td>023070</td>
                    <td>Organization.name</td>
                    <td>Composition.extension(composition-author-role)> PractitionerRole.organization> Organization.name</td>
                    <td>
                        <p>This requirement mandates inclusion of the name of the organisation
                            the author is representing. This requirement is best enforced in a
                            further profile.</p>
                        <p>The profile supports organisation as optional.</p>
                    </td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Healthcare provider individual's workplace address (mandatory)</td>
                    <td>024891</td>
                    <td>Practitioner.address</td>
                    <td>Composition.author> Practitioner.address</td>
                    <td>
                        <p>This requirement mandates inclusion of the author's workplace address. This requirement is best enforced in a further profile.</p>
                        <p>The profile supports address as optional.</p>
                    </td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider individual's workplace electronic communication details (optional)</td>
                    <td rowspan="2">024036</td>
                    <td>PractitionerRole.telecom</td>
                    <td>Composition.extension(composition-author-role)> PractitionerRole.telecom</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Practitioner.telecom</td>
                    <td>Composition.author> Practitioner.telecom</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Healthcare provider professional role (mandatory)</td>
                    <td>024040</td>
                    <td>PractitionerRole.code</td>
                    <td>Composition.extension(composition-author-role)> PractitionerRole.code</td>
                    <td>
                        <p>This requirement mandates inclusion of an element for the author's professional role (it may carry an absent value). This requirement is best enforced in a further profile.</p>
                        <p>The profile supports role as optional.</p>
                    </td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare Provider Identifier-Individual (optional)</td>
                    <td rowspan="2">024601</td>
                    <td>Practitioner.identifier</td>
                    <td>Composition.author> Practitioner.identifier</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Composition.author.identifier</td>
                    <td>Composition.author.identifier</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare Provider Identifier-Organisation (optional)</td>
                    <td rowspan="2">024602</td>
                    <td>Organization.identifier</td>
                    <td>Composition.extension(composition-author-role)> PractitionerRole.organization> Organization.identifier</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>PractitionerRole.organization.identifier</td>
                    <td>Composition.extension(composition-author-role)> PractitionerRole.organization.identifier</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider's title (optional)</td>
                    <td rowspan="2">023061</td>
                    <td>Practitioner.name.text</td>
                    <td>Composition.author> Practitioner.name.text</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Practitioner.name.prefix</td>
                    <td>Composition.author> Practitioner.name.prefix</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider given name (optional)</td>
                    <td rowspan="2">023062</td>
                    <td>Practitioner.name.text</td>
                    <td>Composition.author> Practitioner.name.text</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Practitioner.name.given</td>
                    <td>Composition.author> Practitioner.name.given</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider family name (mandatory)</td>
                    <td rowspan="2">023064</td>
                    <td>Practitioner.name.text</td>
                    <td>Composition.author> Practitioner.name.text</td>
                    <td>
                        <p>This requirement mandates inclusion of the author's family name. This requirement is best enforced in a further profile.</p>
                        <p>The profile supports name as optional.</p>
                    </td>
                </tr>
                <tr>
                    <td>Practitioner.name.family</td>
                    <td>Composition.author> Practitioner.name.family</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider name suffix (optional)</td>
                    <td rowspan="2">023065</td>
                    <td>Practitioner.name.text</td>
                    <td>Composition.author> Practitioner.name.text</td>
                    <td rowspan="2"><p></p></td>
               </tr>
                <tr>
                    <td>Practitioner.name.suffix</td>
                    <td>Composition.author> Practitioner.name.suffix</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Test requester (mandatory)</td>
                    <td>050001</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Healthcare provider’s organisation name (mandatory)</td>
                    <td>050000</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Healthcare provider’s Healthcare Provider Identifier-Organisation (optional)</td>
                    <td>050005</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Healthcare provider’s Healthcare Provider Identifier-Individual (optional)</td>
                    <td>050010</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider's title (optional)</td>
                    <td rowspan="2">023061</td>
                    <td>Practitioner.name.text</td>
                    <td>Composition.author> Practitioner.name.text</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Practitioner.name.prefix</td>
                    <td>Composition.author> Practitioner.name.prefix</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider given name (optional)</td>
                    <td rowspan="2">023062</td>
                    <td>Practitioner.name.text</td>
                    <td>Composition.author> Practitioner.name.text</td>
                    <td rowspan="2"><p></p></td>
                </tr>
                <tr>
                    <td>Practitioner.name.given</td>
                    <td>Composition.author> Practitioner.name.given</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider family name (mandatory)</td>
                    <td rowspan="2">023064</td>
                    <td>Practitioner.name.text</td>
                    <td>Composition.author> Practitioner.name.text</td>
                    <td>
                        <p>This requirement mandates inclusion of the author's family name. This requirement is best enforced in a further profile.</p>
                        <p>The profile supports name as optional.</p>
                    </td>
                </tr>
                <tr>
                    <td>Practitioner.name.family</td>
                    <td>Composition.author> Practitioner.name.family</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider name suffix (optional)</td>
                    <td rowspan="2">023065</td>
                    <td>Practitioner.name.text</td>
                    <td>Composition.author> Practitioner.name.text</td>
                    <td rowspan="2"><p></p></td>
               </tr>
                <tr>
                    <td>Practitioner.name.suffix</td>
                    <td>Composition.author> Practitioner.name.suffix</td>
                </tr>
                 <!-- ======================================================================== -->
                <tr>
                    <td>Healthcare provider individual's workplace address (optional)</td>
                    <td>024035</td>
                    <td>Practitioner.address</td>
                    <td>Composition.subject> Patient.generalPractitioner> Practitioner.address</td>
                    <td><p></p></td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Healthcare provider individual's workplace electronic communication details (optional)</td>
                    <td>024036</td>
                    <td>Practitioner.telecom</td>
                    <td>Composition.subject> Patient.generalPractitioner> Practitioner.telecom</td>
                    <td><p></p></td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td rowspan="2">Healthcare provider professional role (mandatory)</td>
                    <td rowspan="2">024040</td>
                    <td>N/A</td>
                    <td>Composition.subject> Patient.generalPractitioner</td>
                    <td rowspan="2">
                        <p>This requirement mandates inclusion of the primary care provider's professional role though it may be supplied as an absent value. This requirement is best enforced in a further profile.</p>
                        <p>The profile implicitly casts the professional role as general practitioner; a different role may be supplied in the organisation type.</p>
                    </td>
                </tr>
                <tr>
                    <td>Organization.type</td>
                    <td>Composition.subject> Patient.generalPractitioner> Organization.type</td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Procedure name (mandatory)</td>
                    <td>050035</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Procedure name values (optional)</td>
                    <td>050036</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Procedure date and time (mandatory)</td>
                    <td>050040</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Report status (mandatory)</td>
                    <td>050045</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Results status values (mandatory)</td>
                    <td>050050</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
              <!-- ======================================================================== -->
                <tr>
                    <td>Single PDF attachment (mandatory)</td>
                    <td>050055</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
             <!-- ======================================================================== -->
                <tr>
                    <td>Document version number (mandatory)</td>
                    <td>023068</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>
                    <p>This requirement mandates a document version number for a PSML document. This requirement is best enforced in a further profile.</p>
                        <p>The profile does not mandate a versioning mechanism (e.g. meta.versionId). Versioning is an implementation environment concern and outside of the scope of the FHIR profiles.</p>
                    </td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Document instance identifier (mandatory)</td>
                    <td>023067</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>
                    <p>This requirement mandates a document instance identifier for a PSML document. This requirement is best enforced in a further profile.</p>
                        <p>The profile does not mandate an instance identifier mechanism (e.g. Bundle.identifier). This is an implementation environment concern and outside of the scope of the FHIR profiles.</p>
                    </td>
                </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Date and time of document creation (mandatory)</td>
                    <td>024025</td>
                    <td>N/A</td>
                    <td>N/A</td>
                    <td>
                        <p>This requirement is applicable only to a CDA implementation.</p>
                    </td>
                 </tr>
                <!-- ======================================================================== -->
                <tr>
                    <td>Document type (mandatory)</td>
                    <td>024027</td>
                    <td>Composition.category</td>
                    <td>Composition.category</td>
                    <td><p></p></td>
                </tr>
                <!-- ======================================================================== -->
                 <tr>
                    <td>Document subtype values (mandatory)</td>
                    <td>050060</td>
                    <td>Composition.type</td>
                    <td>Composition.type</td>
                    <td><p></p></td>
                </tr>
              <!-- ======================================================================== -->
             </tbody>
</table>               

## Legend for mapping from requirements

A mappings from requirements table demonstrates the logical decomposition of each requirement to the lowest possible element in an applicable profile.

<table class="list" width="100%">
	<col style="width:20%"/>
	<col style="width:20%"/>
	<col style="width:20%"/>
	<col style="width:20%"/>
	<col style="width:20%"/>
            <thead>
                <tr>
                    <th>Requirement</th>
                    <th>Req. No</th>
                    <th>Element name</th>
                    <th>Hierarchy</th>
                    <th>Additional notes</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><p>The heading text of the requirement as taken from the requirements specification.</p></td>
                    <td><p>The requirement number as taken from the requirements specification.</p></td>
                    <td>
                        <p>Either the name of the lowest element in a profiled FHIR resource that addresses the requirement or 'N/A' where 
                        the requirement has been deemed not applicable to a FHIR profile.</p>
                       <p>If the lowest possible decomposition is to the resource then only the resource name (e.g. Patient) is present. 
                    If the lowest possible decomposition is to one or more child elements of a FHIR resource then a dot notation is 
                    used to indicate the hierarchical relationship.</p>
                       <p>For example Patient.communication.language indicates 
                    the requirement maps to the language element, that is a child of the communication element, 
                    in the Patient FHIR resource.</p>
                    </td>
                    <td>
                        <p>Either the full hierarchical path from the root FHIR resource (e.g. Composition) to the element 
                    the requirement is mapped to or 'N/A' where the requirement has been deemed not applicable to a FHIR profile.</p>
                        <p>A dot notation is used to demonstrate hierarchy within a FHIR resource.</p>
                        <p>An arrow '<span style="font-family:courier;">&#62;</span>' is used to denote the reference connecting one FHIR resource 
                    to another from the linking element. For example Composition.subject> Patient or Composition.author> Patient.</p>
                    <p>Where a requirement is addressed by multiple elements, the elements are presented in order of appearance in the profiled FHIR resource.</p>
                    </td>
                    <td>
                        <p>Additional notes are provided where a gap between a requirement, or parts of a requirement, and the 
                    profiles is identified. Where a requirement is fully addressed by the mapped elements then no entry in this 
                    column is expected.</p>
                    </td>
                </tr>
             </tbody>
</table>