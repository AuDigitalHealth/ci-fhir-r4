# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>


## Profiles

### ADHA Core FHIR Profiles 

The following core FHIR profiles are defined in this implementation guide. These profiles set a core standard for a FHIR R4 resource identifying additional constraints, extensions, and value sets that build on and extend HL7 AU [Base Implementation Guide](http://build.fhir.org/ig/hl7au/au-fhir-base/index.html) and core HL7 [FHIR R4](http://hl7.org/fhir/R4/index.html).  

<html>
  <div id="segment-content" class="segment">
  <div class="container">
  <div class="row">
  <div class="inner-wrapper">

<div class="col-12">
    <div style="border-right-style: none;" id="tabs">
      <div style="border-right-style: none;" id="tabs">
          <div>
                <table width="100%">
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Foundation</div></td>
                        <td class="frm-category">Conformance</td>
                        <td class="frm-category">Terminology</td>
                        <td class="frm-category">Security</td>
                        <td class="frm-category">Documents</td>
                        <td class="frm-category">Other</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Core CapabilityStatement (TBD Architecture Team)</li>  
                                <li>ADHA Core MessageDefinition profiles (TBD Architecture Team)</li> 
                            </ul>
                        </td> 
                        <td class="frm-null"/>
                        <td class="frm-set">
                        <ul class="frm-set">
                                <li>ADHA Core Provenance (TBD Architecture Team)</li>  
                                <li>ADHA Core Consent</li>  
                            </ul>
                        </td> 
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-composition-core-1.html">ADHA Core Composition</a></li>
                                <li><a href="StructureDefinition-dh-composition-document-1.html">ADHA Document Composition</a></li>
                                <li>ADHA Continuity of Care Summary Composition</li>
                                <li>ADHA Core DocumentReference</li>
                            </ul>
                        </td>  
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Document Bundle</li> 
                                <li>ADHA Message Bundle</li> 
                                <li>ADHA Payload Bundle</li> 
                                <li>ADHA Core Bundle</li>
                                <li>ADHA MHR Bundle (CI &amp; Architecture Team)</li>
                                <li>ADHA Core MessageHeader (Architecture Team)</li>  
                            </ul>
                        </td> 
                    </tr>
                    <tr class="frm-break">
                        <td colspan="6"/>
                   </tr>
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Base</div></td>
                        <td class="frm-category">Individuals</td>
                        <td class="frm-category">Entities #1</td>
                        <td class="frm-category">Entities #2</td>
                        <td class="frm-category">Workflow</td>
                        <td class="frm-category">Management</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-patient-core-1.html">ADHA Core Patient</a></li>
                                <li><a href="StructureDefinition-dh-practitioner-core-1.html">ADHA Core Practitioner</a></li>
                                <li><a href="StructureDefinition-dh-practitionerrole-core-1.html">ADHA Core PractitionerRole</a></li>
                                <li><a href="StructureDefinition-dh-relatedperson-core-1.html">ADHA Core RelatedPerson</a></li>
                            </ul>
                        </td>  
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-organization-core-1.html">ADHA Core Organization</a></li>
                                <li><a href="StructureDefinition-dh-healthcareservice-core-1.html">ADHA Core HealthcareService</a></li>
                                <li><a href="StructureDefinition-dh-location-core-1.html">ADHA Core Location</a></li>
                                <li>ADHA Core Endpoint (TBD Architecture Team)</li>
                            </ul>
                        </td> 
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Device Participant</li>
                                <li><a href="StructureDefinition-dh-device-system-1.html">ADHA System Device</a></li>
                                <li>ADHA Core Substance</li>

                            </ul>
                        </td>                          
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-encounter-core-1.html">ADHA Core Encounter</a></li>
                                <li>ADHA Core EpisodeOfCare</li>
                                <li>ADHA Core Flag</li>
                                <li>ADHA Core List</li>
                            </ul>
                        </td>  
                    </tr>
                    <tr class="frm-break"><td colspan="6"/></tr>
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Clinical</div></td>
                        <td class="frm-category">Summary</td>
                        <td class="frm-category">Diagnostics</td>
                        <td class="frm-category">Medications</td>
                        <td class="frm-category">Care Provision</td>
                        <td class="frm-category">Request &amp; Response</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Core AllergyIntolerance</li>
                                <li><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a></li>
                                <li><a href="StructureDefinition-dh-procedure-core-1.html">ADHA Core Procedure</a></li>
                                <li>ADHA Core FamilyMemberHistory</li>
                                <li>ADHA Core DetectedIssue</li>
                            </ul>
                        </td>    
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-observation-core-1.html">ADHA Core Observation</a></li>
                                <li>ADHA Core DiagnosticReport</li>
                                <li>ADHA Core Specimen</li>
                                <li>ADHA Core BodyStructure</li>
                                <li>ADHA Core Media</li>
                                <li>ADHA Core QuestionnaireResponse</li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Core MedicationRequest/li>
                                <li>ADHA Core MedicationAdministration</li>
                                <li>ADHA Core MedicationDispense</li>
                                <li>ADHA Core MedicationStatement</li>
                                <li>ADHA Core Medication</li>
                                <li>ADHA Core Immunization</li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Core CarePlan</li>
                                <li>ADHA Core ServiceRequest</li>
                            </ul>
                        </td>    
                        <td class="frm-null"/>
                    </tr>
                    <tr class="frm-break"><td colspan="6"/></tr>
                    <!--<tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Financial</div></td>
                        <td class="frm-category">Support</td>
                        <td class="frm-category">Billing</td>
                        <td class="frm-category">Payment</td>
                        <td class="frm-category">General</td>
                        <td class="frm-null"/>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                    </tr>-->
                    <tr class="frm-break"><td colspan="6"/></tr>
                    <!--<tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Specialized</div></td>
                        <td class="frm-category">Public Health &amp; Research</td>
                        <td class="frm-category">Definitional Artifacts</td>
                        <td class="frm-category">Evidence-Based Medicine</td>
                        <td class="frm-category">Quality Reporting &amp; Testing</td>
                        <td class="frm-category">Medication Definition</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                    </tr> -->
                    <tr class="frm-break"><td colspan="6"/></tr>
                </table>
            </div>
      </div>
    
  </div>  <!-- /inner-wrapper -->
  </div>  <!-- /row -->
  </div>  <!-- /container -->
  </div>  <!-- /segment-content -->

	<div id="segment-post-footer" class="segment hidden">  <!-- segment-post-footer -->
		<div class="container">  <!-- container -->
		</div>  <!-- /container -->
	</div>  <!-- /segment-post-footer -->

</div>
</div>
</html>


### ADHA Use Case FHIR Profiles 

FHIR profiles defined in this implementation guide for defined use cases.

<html>
  <div id="segment-content" class="segment">
  <div class="container">
  <div class="row">
  <div class="inner-wrapper">

<div class="col-12">
    <div style="border-right-style: none;" id="tabs">
      <div style="border-right-style: none;" id="tabs">
          <div>
                <table width="100%">
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Foundation</div></td>
                        <td class="frm-category">Conformance</td>
                        <td class="frm-category">Terminology</td>
                        <td class="frm-category">Security</td>
                        <td class="frm-category">Documents</td>
                        <td class="frm-category">Other</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-set">
                        <ul class="frm-set">
                                <li>Provenance profiles (TBD Architecture Team)</li>  
                                <li>Provenance for Generation of a List</li>  
                                <li>ADHA Record of Consent from Australian Organ Donor Register</li>
                                <li>AuditEvent profiles (TBD Architecture Team)</li> 
                            </ul>
                        </td> 
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Advance Care Directive Custodian Record Composition</li>
                                <li>ADHA Advance Care Planning Composition</li>
                                <li>ADHA Aged Care Transfer Summary Composition</li>
                                <li>ADHA Discharge Summary Composition</li>
                                <li>ADHA Event Summary Composition</li>
                                <li>ADHA Event Summary Mixed Narrative and Structure</li>
                                 <li>ADHA Event Summary Narrative</li>
                                 <li>ADHA Medicare Overview Composition</li>
                                <li><a href="StructureDefinition-dh-composition-ncspv-1.html">ADHA National Cancer Screening Program Participation View</a></li>
                                <li>ADHA Personal Health Notes Composition</li>
                                <li>ADHA Personal Health Summary Composition</li>
                                <li>ADHA Personal Observations Composition</li>
                                <li>ADHA Pharmacist Shared Medicines List Composition</li>
                                <li>ADHA Prescription and or Dispense History Composition</li>
                                <li>ADHA Shared Health Summary Composition</li>
                                <li>ADHA Shared Medicines List Composition</li>
                                <li>ADHA Advance Care Planning DocumentReference</li>
                                <li>Architecture related DocumentReference profiles (TBD Architecture Team)</li>                               
                            </ul>
                        </td>  
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA PDF Document Binary (Architecture Team)</li>
                                <li>ADHA MHR CDA Document Package Binary (Architecture Team)</li>
                                <li>Other Binary profiles (TBD Architecture Team)</li>
                                <li>ADHA MHR Document Bundle (Joint w CI &amp; Architecture Team)</li> 
                                <li>ADHA MHR Message Bundle (Joint w CI &amp; Architecture Team)</li>
                                <li>ADHA MHR Payload Bundle (Joint w CI &amp; Architecture Team)</li>   
                                <li>MessageHeader profiles (Architecture Team)</li>  
                                <li>Operation Outcome profiles (Architecture Team)</li>  
                            </ul>
                        </td> 
                    </tr>
                    <tr class="frm-break">
                        <td colspan="6"/>
                   </tr>
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Base</div></td>
                        <td class="frm-category">Individuals</td>
                        <td class="frm-category">Entities #1</td>
                        <td class="frm-category">Entities #2</td>
                        <td class="frm-category">Workflow</td>
                        <td class="frm-category">Management</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA MHR Patient</li>
                                <li>ADHA Patient Match</li>
                                <li>ADHA Patient Demographics</li>
                                <li><a href="StructureDefinition-dh-practitionerrole-author-1.html">ADHA Authoring PractitionerRole</a></li>
                                <li>ADHA Authoring Care Agency Employee</li>
                                <li><a href="StructureDefinition-dh-relatedperson-mhr-1.html">ADHA MHR RelatedPerson</a></li>
                                <li><a href="StructureDefinition-dh-relatedperson-author-1.html">ADHA Authoring RelatedPerson</a></li>
                            </ul>
                        </td>  
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                            <li>ADHA Organization Contact</li>
                                <li>ADHA Implantable Medical Device</li>
                            </ul>
                        </td>                          
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Hospitalisation Encounter</li>
                                <li>ADHA Australian Immunisation Register Notice</li>
                                <li>ADHA Adverse Reactions List</li>
                                <li>ADHA Allergies and Intolerances List</li>
                                <li>ADHA Dispense List</li>
                                <li>ADHA Immunisation History List</li>
                                <li>ADHA Medical History List</li>
                                <li>ADHA Medication Use List</li>
                                <li>ADHA Practitioner Medicine Review List</li>
                                <li>ADHA Problem List</li>
                                <li>ADHA Procedure List</li>
                                <li>ADHA Prescription and or Dispense History List</li>
                                <li>ADHA Prescription List</li>
                            </ul>
                        </td>  
                    </tr>
                    <tr class="frm-break"><td colspan="6"/></tr>
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Clinical</div></td>
                        <td class="frm-category">Summary</td>
                        <td class="frm-category">Diagnostics</td>
                        <td class="frm-category">Medications</td>
                        <td class="frm-category">Care Provision</td>
                        <td class="frm-category">Request &amp; Response</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-null"/>   
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Diagnostic Result Observation</li>
                                <li>ADHA Imaging Result Observation</li>
                                <li>ADHA Pathology Result Observation</li>
                                <li>ADHA Simple Observation</li>
                                <li>ADHA Pathology Report</li>
                                <li>ADHA Diagnostic Imaging DiagnosticReport</li>
                                <li><a href="StructureDefinition-dh-observation-ncspp-1.html">ADHA National Cancer Screening Program Participation Observation</a></li>
                                <li>ADHA Organ or Tissue for Donation BodyStructure</li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Prescription</li>
                                <li><a href="StructureDefinition-dh-medicationrequest-pbs-claim-1.html">ADHA PBS Prescription Claim Item</a></li>
                                <li>ADHA Dispense Record</li>
                                <li>ADHA Record of Immunization</li>
                                <li>ADHA Record of Immunisation from Australian Immunisation Register</li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Referral</li>
                                <li>ADHA MBS Service Claim Item</li>
                                <li>MODI Request for Diagnostic Imaging Service</li>
                            </ul>
                        </td>    
                        <td class="frm-null"/>
                    </tr>
                    <tr class="frm-break"><td colspan="6"/></tr>
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Financial</div></td>
                        <td class="frm-category">Support</td>
                        <td class="frm-category">Billing</td>
                        <td class="frm-category">Payment</td>
                        <td class="frm-category">General</td>
                        <td class="frm-null"/>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Record of Claim against MBS or DVA</li>
                            </ul>
                            <ul class="frm-set">
                                <li>ADHA Record of Claim against PBS or RPBS</li>
                            </ul>
                        </td>     
                        <td class="frm-null"/>
                    </tr>
                    <tr class="frm-break"><td colspan="6"/></tr>
                    <!--<tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Specialized</div></td>
                        <td class="frm-category">Public Health &amp; Research</td>
                        <td class="frm-category">Definitional Artifacts</td>
                        <td class="frm-category">Evidence-Based Medicine</td>
                        <td class="frm-category">Quality Reporting &amp; Testing</td>
                        <td class="frm-category">Medication Definition</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                    </tr> -->
                    <tr class="frm-break"><td colspan="6"/></tr>
                </table>
            </div>
      </div>
    
  </div>  <!-- /inner-wrapper -->
  </div>  <!-- /row -->
  </div>  <!-- /container -->
  </div>  <!-- /segment-content -->

	<div id="segment-post-footer" class="segment hidden">  <!-- segment-post-footer -->
		<div class="container">  <!-- container -->
		</div>  <!-- /container -->
	</div>  <!-- /segment-post-footer -->

</div>
</div>
</html>



### HL7 AU FHIR Profiles 

FHIR profiles defined in HL7 AU [Australian Base Implementation Guide (AU Base 2)](http://build.fhir.org/ig/hl7au/au-fhir-base/index.html) that form part of an Australian Digital Health Agency Core Asset FHIR profile.

<html>
  <div id="segment-content" class="segment">
  <div class="container">
  <div class="row">
  <div class="inner-wrapper">

<div class="col-12">
    <div style="border-right-style: none;" id="tabs">
      <div style="border-right-style: none;" id="tabs">
          <div>
                <table width="100%">
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Data Types</div></td>
                         <td class="frm-category">Primitive</td>
                       <td class="frm-category">Identifiers</td>
                        <td class="frm-category">Other General-Purpose</td>
                        <td class="frm-category">Metadata</td>
                        <td class="frm-category">Special Purpose</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                         <td class="frm-null"/>
                       <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-australianbusinessnumber.html">AU Australian Business Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-australiancompanynumber.html">AU Australian Company Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-australianregistredbodynumber.html">AU Australian Registered Body Number</a></li>
                                <li>AU Australian Passport Number</li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-ahpraregistrationnumber.html">AU AHPRA Registration Number </a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-careagencyemployeeidentifier.html">AU Care Agency Employee Identifier</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-cwlthseniorshealthcardnumber.html">AU Commonwealth Seniors Health Card Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-dvanumber.html">AU DVA Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-employeenumber.html">AU Employee Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-healthcarecardnumber.html">AU Health Care Card Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-hpii.html">AU HPI-I</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-hpio.html">AU HPI-O</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-ihi.html">AU IHI</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medicalrecordnumber.html">AU Medical Record Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medicarecardnumber.html">AU Medicare Card Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medicareprovidernumber.html">AU Medicare Provider Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-pensionerconcessioncardnumber.html">AU Pensioner Concession Card Number</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-residentialagedcareserviceidentifier.html">AU Residential Aged Care Service Identifier</a></li>
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-insurernumber.html">AU Private Health Insurance Member Number</a></li>
                            </ul>
                        </td>  
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html">AU Base Address</a></li>
                            </ul>
                        </td>  
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href ="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-dosage.html">AU Base Dosage</a></li>
                            </ul>
                        </td> 
                    </tr>
                    <tr class="frm-break"><td colspan="6"/></tr>
                    <tr class="frm-group">
                        <td rowspan="2" class="frm-group rotate"><div>Clinical</div></td>
                        <td class="frm-category">Summary</td>
                        <td class="frm-category">Diagnostics</td>
                        <td class="frm-category">Medications</td>
                        <td class="frm-category">Care Provision</td>
                        <td class="frm-category">Request &amp; Response</td>
                    </tr>
                    <tr class="frm-contents" height="80">
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-norelevantfinding.html">AU Assertion of No Relevant Finding</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-sexassignedatbirth.html">AU Biological Sex Assigned at Birth</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-bloodpressure.html">AU Blood Pressure</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-bodyweight.html">AU Body Weight</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-bodyheight.html">AU Body Height</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-bmi.html">AU Body Mass Index</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-oxygensat.html">AU Oxygen Saturation</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-headcircum.html">AU Head Circumference</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-heartrate.html">AU Heart Rate</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-bodytemp.html">AU Body Temperature</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-respirationrate.html">AU Respiration Rate</a></li>
                                <li>AU Level of Consciousness</li>
                                <li><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-vitalspanel.html">AU Vital Signs Panel</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-smokingstatus.html">AU Smoking Status</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-estimateddateofdelivery.html">AU Estimated Date of Delivery </a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-gravidity.html">AU Gravidity</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-parity.html">AU Parity</a></li>
                                <li><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-lastmenstrualperiod.html">AU Last Menstrual Period</a></li>
                                <li>AU Health Program Participation Summary</li>
                            </ul>
                        </td>   
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                        <td class="frm-null"/>
                    </tr>
                    <tr class="frm-break"><td colspan="6"/></tr>
                </table>
            </div>
      </div>
    
  </div>  <!-- /inner-wrapper -->
  </div>  <!-- /row -->
  </div>  <!-- /container -->
  </div>  <!-- /segment-content -->

	<div id="segment-post-footer" class="segment hidden">  <!-- segment-post-footer -->
		<div class="container">  <!-- container -->
		</div>  <!-- /container -->
	</div>  <!-- /segment-post-footer -->

</div>
</div>
</html>

## Extensions

The following extensions form part of this implementation guide:

<table class="list" width="100%">
    <tr>
        <th>Extension</th>
        <th>id</th>
        <th>Type</th>
        <th>Context</th>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-address-identifier.html">Address Identifier</a></td>
        <td>address-identifier</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Address">Address</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ahpraprofession-details.html">AHPRA Profession Details</a></td>
        <td>ahpraprofession-details</td>
        <td>(complex)</td>
        <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ahpraregistration-details.html">AHPRA Registration Details</a></td>
        <td>ahpraregistration-details</td>
        <td>(complex)</td>
        <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-indigenous-status.html">Australian Indigenous Status</a></td>
        <td>indigenous-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-timezone.html">Australian Time Zone </a></td>
        <td>au-timezone</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#CodeableConcept">CodeableConcept</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#time">time</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-birthplace.html">Birth Place</a></td>
        <td>birthPlace</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Address">Address</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-patient-birthtime.html">birthTime</a></td>
        <td>patient-birthTime</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#dateTime">dateTime</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient.birthDate</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-change-description.html">Change Description</a></td>
        <td>change-description</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/list.html">List.entry</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-closing-the-gap-registration.html">Closing the Gap Registration</a></td>
        <td>closing-the-gap-registration</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#boolean">boolean</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-contact-purpose.html">Contact Purpose</a></td>
        <td>contact-purpose</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#CodeableConcept">CodeableConcept</a></td>
        <td><a href="http://hl7.org/fhir/datatypes.html#ContactPoint">ContactPoint</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/StructureDefinition/data-absent-reason.html">Data Absent Reason</a></td>
        <td>data-absent-reason</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#code">code</a></td>
        <td>Element</td>
    </tr>    
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-date-accuracy-indicator.html">Date Accuracy Indicator</a></td>
        <td>date-accuracy-indicator</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#date">date</a>, <a href="http://hl7.org/fhir/R4/datatypes.html#dateTime">dateTime</a> </td>
    </tr>
     <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-date-of-arrival.html">Date of Arrival in Australia</a></td>
        <td>date-of-arrival</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#date">date</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a>, <a href="http://hl7.org/fhir/R4/relatedperson.html">RelatedPerson</a>, and <a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-dh-date-initial-registration-1.html">Date of Initial Registration</a></td>
        <td>dh-date-initial-registration-1</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#date">date</a></td>
        <td>Resource</td>
    </tr>
      <tr>
        <td><a href="StructureDefinition-packed-in-daa-1.html">Dose Administration Aid Medicines Indicator</a></td>
        <td>dh-packed-in-daa-1</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#CodeableConcept">CodeableConcept</a></td>
        <td><a href="http://hl7.org/fhir/R4/list.html">List</a></td>  
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-encounter-description.html">Encounter Description</a></td>
        <td>encounter-description</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/encounter.html">Encounter</a></td>
    </tr>
    <tr>
        <td><a href="StructureDefinition-dh-hl7-v2-base64-1.html">ADHA HL7 V2 as Base64</a></td>
        <td>dh-hl7-v2-base64-1</td>
        <td><a href="https://www.hl7.org/fhir/datatypes.html#base64Binary">base64Binary</a></td>
        <td><a href="http://hl7.org/fhir/R4/servicerequest.html">ServiceRequest</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ihi-record-status.html">IHI Record Status</a></td>
        <td>ihi-record-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ihi-status.html">IHI Status</a></td>
        <td>ihi-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-ihi-verified.html">IHI Verified</a></td>
        <td>ihi-verified</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#dateTime">dateTime</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-information-recipient.html">Information Recipient</a></td>
        <td>information-recipient</td>
        <td><a href="http://hl7.org/fhir/R4/references.html#Reference">Reference</a></td>
        <td><a href="http://hl7.org/fhir/R4/composition.html">Composition</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html">Interpreter Required</a></td>
        <td>patient-interpreterRequired</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#boolean">boolean</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-brand-name.html">Medication Brand Name</a></td>
        <td>medication-brand-name</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/Medication">Medication</a>, <a href="http://hl7.org/fhir/R4/MedicationRequest">MedicationRequest</a>, <a href="http://hl7.org/fhir/R4/MedicationDispense">MedicationDispense</a>, <a href="http://hl7.org/fhir/R4/MedicationStatement">MedicationStatement</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-generic-name.html">Medication Generic Name</a></td>
        <td>medication-generic-name</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/Medication">Medication</a>, <a href="http://hl7.org/fhir/R4/MedicationRequest">MedicationRequest</a>, <a href="http://hl7.org/fhir/R4/MedicationDispense">MedicationDispense</a>, <a href="http://hl7.org/fhir/R4/MedicationStatement">MedicationStatement</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html">Medication Type</a></td>
        <td>medication-type</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-patient-mothersmaidenname.html">Mother's Maiden Name</a></td>
        <td>patient-mothersMaidenName</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-no-fixed-address.html">No Fixed Address</a></td>
        <td>no-fixed-address</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#boolean">boolean</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Address">Address</a></td>
    </tr>
    <tr>
        <td><a href="https://build.fhir.org/ig/ci-collaborative/au-fhir-base-r4/StructureDefinition-vaccine-serial-number.html">Vaccine Vial Serial Number</a></td>
        <td>vaccine-serial-number</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#strig">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/immunization.html">Immunization</a></td>
    </tr>
</table>


