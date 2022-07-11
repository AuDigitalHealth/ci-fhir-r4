# {{ page.title }}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

<!-- <p style="color:#DAA520;">This material is part of the June 2022 QA Preview snapshot and is not approved for external use.</p> -->


## Profiles

### ADHA Core FHIR Profiles 

The following core FHIR profiles are defined in this implementation guide. These profiles set a core standard for a FHIR R4 resource identifying additional constraints, extensions, and value sets that build on and extend HL7 AU [Base Implementation Guide](http://hl7.org.au/fhir/4.0.0/index.html) and core HL7 [FHIR R4](http://hl7.org/fhir/R4/index.html).  

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
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-documentreference-core-1.html">ADHA Core DocumentReference</a></li>
                            </ul>
                        </td>  
                        <td class="frm-null"/>
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
                                <li>ADHA Core Endpoint</li>
                            </ul>
                        </td> 
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Device Participant</li>
                                <li><a href="StructureDefinition-dh-device-system-1.html">ADHA System Device</a></li>
                                <li><a href="StructureDefinition-dh-substance-core-1.html">ADHA Core Substance</a></li>
                            </ul>
                        </td>                          
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-encounter-core-1.html">ADHA Core Encounter</a></li>
                                <li><a href="StructureDefinition-dh-flag-core-1.html">ADHA Core Flag</a></li>
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
                                <li><a href="StructureDefinition-dh-condition-core-1.html">ADHA Core Condition</a></li>
                                <li><a href="StructureDefinition-dh-procedure-core-1.html">ADHA Core Procedure</a></li>
                            </ul>
                        </td>    
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-observation-core-1.html">ADHA Core Observation</a></li>
                                <li><a href="StructureDefinition-dh-diagnosticreport-core-1.html">ADHA Core DiagnosticReport</a></li>
                                <li><a href="StructureDefinition-dh-specimen-core-1.html">ADHA Core Specimen</a></li>
                                <li><a href="StructureDefinition-dh-bodystructure-core-1.html">ADHA Core BodyStructure</a></li>
                                <li><a href="StructureDefinition-dh-media-core-1.html">ADHA Core Media</a></li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-medicationrequest-core-1.html">ADHA Core MedicationRequest</a></li>
                                <li><a href="StructureDefinition-dh-medication-core-1.html">ADHA Core Medication</a></li>
                                <li><a href="StructureDefinition-dh-immunization-core-1.html">ADHA Core Immunization</a></li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-servicerequest-core-1.html">ADHA Core ServiceRequest</a></li>
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
                                <li><a href="StructureDefinition-dh-consent-aodr-1.html">ADHA Record of Consent from Australian Organ Donor Register</a></li>
                            </ul>
                        </td> 
                        <td class="frm-null"/>
                        <td class="frm-null"/>
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
                                <li><a href="StructureDefinition-dh-practitionerrole-author-1.html">ADHA Authoring PractitionerRole</a></li>
                                <li><a href="StructureDefinition-dh-relatedperson-author-1.html">ADHA Authoring RelatedPerson</a></li>
                            </ul>
                        </td>  
                        <td class="frm-null"/>
                        <td class="frm-null"/>                        
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-flag-air-1.html">ADHA Australian Immunisation Register Notice</a></li>
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
                                <li><a href="StructureDefinition-dh-observation-diagnosticresult-1.html">ADHA Diagnostic Result Observation</a></li>
                                <li><a href="StructureDefinition-dh-observation-diagnosticresult-imag-1.html">ADHA Imaging Result Observation</a></li>
                                <li><a href="StructureDefinition-dh-observation-diagnosticresult-path-1.html">ADHA Pathology Result Observation</a></li>
                                <li><a href="StructureDefinition-dh-bodystructure-odr-1.html">ADHA Organ or Tissue for Donation BodyStructure</a></li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-medicationrequest-pbs-claim-1.html">ADHA PBS Prescription Claim Item</a></li>
                                <li><a href="StructureDefinition-dh-immunization-air-1.html">ADHA Record of Immunisation from Australian Immunisation Register</a></li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-servicerequest-mbs-claim-1.html">ADHA MBS Service Claim Item</a></li>
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
                                <li><a href="StructureDefinition-dh-explanationofbenefit-medicare-mbs-1.html">ADHA Record of Claim against MBS or DVA</a></li>
                            </ul>
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-explanationofbenefit-medicare-pbs-1.html">ADHA Record of Claim against PBS or RPBS</a></li>
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

FHIR profiles defined in HL7 AU [Australian Base Implementation Guide (AU Base 2)](http://hl7.org.au/fhir/4.0.0/index.html) that form part of an Australian Digital Health Agency Core Asset FHIR profile.

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
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-australianbusinessnumber.html">AU Australian Business Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-australiancompanynumber.html">AU Australian Company Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-australianregistredbodynumber.html">AU Australian Registered Body Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-ahpraregistrationnumber.html">AU AHPRA Registration Number </a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-careagencyemployeeidentifier.html">AU Care Agency Employee Identifier</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-cwlthseniorshealthcardnumber.html">AU Commonwealth Seniors Health Card Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-dvanumber.html">AU DVA Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-employeenumber.html">AU Employee Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-healthcarecardnumber.html">AU Health Care Card Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-hpii.html">AU HPI-I</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-hpio.html">AU HPI-O</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-ihi.html">AU IHI</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-medicalrecordnumber.html">AU Medical Record Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-medicarecardnumber.html">AU Medicare Card Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-medicareprovidernumber.html">AU Medicare Provider Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-pensionerconcessioncardnumber.html">AU Pensioner Concession Card Number</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-residentialagedcareserviceidentifier.html">AU Residential Aged Care Service Identifier</a></li>
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-insurernumber.html">AU Private Health Insurance Member Number</a></li>
                            </ul>
                        </td>  
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-address.html">AU Base Address</a></li>
                            </ul>
                        </td>  
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href ="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-dosage.html">AU Base Dosage</a></li>
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
                        <td class="frm-null"/>
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
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-address-identifier.html">Address Identifier</a></td>
        <td>address-identifier</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Address">Address</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-ahpraprofession-details.html">AHPRA Profession Details</a></td>
        <td>ahpraprofession-details</td>
        <td>(complex)</td>
        <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-ahpraregistration-details.html">AHPRA Registration Details</a></td>
        <td>ahpraregistration-details</td>
        <td>(complex)</td>
        <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-indigenous-status.html">Australian Indigenous Status</a></td>
        <td>indigenous-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-au-timezone.html">Australian Time Zone </a></td>
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
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-closing-the-gap-registration.html">Closing the Gap Registration</a></td>
        <td>closing-the-gap-registration</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#boolean">boolean</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-contact-purpose.html">Contact Purpose</a></td>
        <td>contact-purpose</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#CodeableConcept">CodeableConcept</a></td>
        <td><a href="http://hl7.org/fhir/datatypes.html#ContactPoint">ContactPoint</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-data-absent-reason.html">Data Absent Reason</a></td>
        <td>data-absent-reason</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#code">code</a></td>
        <td>Element</td>
    </tr>    
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-date-accuracy-indicator.html">Date Accuracy Indicator</a></td>
        <td>date-accuracy-indicator</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#date">date</a>, <a href="http://hl7.org/fhir/R4/datatypes.html#dateTime">dateTime</a> </td>
    </tr>
     <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-date-of-arrival.html">Date of Arrival in Australia</a></td>
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
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-encounter-description.html">Encounter Description</a></td>
        <td>encounter-description</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/encounter.html">Encounter</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-ihi-record-status.html">IHI Record Status</a></td>
        <td>ihi-record-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-ihi-status.html">IHI Status</a></td>
        <td>ihi-status</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Coding">Coding</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-ihi-verified.html">IHI Verified</a></td>
        <td>ihi-verified</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#dateTime">dateTime</a></td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#Identifier">Identifier</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org/fhir/R4/extension-patient-interpreterrequired.html">Interpreter Required</a></td>
        <td>patient-interpreterRequired</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#boolean">boolean</a></td>
        <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-medication-brand-name.html">Medication Brand Name</a></td>
        <td>medication-brand-name</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/Medication">Medication</a>, <a href="http://hl7.org/fhir/R4/MedicationRequest">MedicationRequest</a>, <a href="http://hl7.org/fhir/R4/MedicationDispense">MedicationDispense</a>, <a href="http://hl7.org/fhir/R4/MedicationStatement">MedicationStatement</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-medication-generic-name.html">Medication Generic Name</a></td>
        <td>medication-generic-name</td>
        <td><a href="http://hl7.org/fhir/R4/datatypes.html#string">string</a></td>
        <td><a href="http://hl7.org/fhir/R4/Medication">Medication</a>, <a href="http://hl7.org/fhir/R4/MedicationRequest">MedicationRequest</a>, <a href="http://hl7.org/fhir/R4/MedicationDispense">MedicationDispense</a>, <a href="http://hl7.org/fhir/R4/MedicationStatement">MedicationStatement</a></td>
    </tr>
    <tr>
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-medication-type.html">Medication Type</a></td>
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
        <td><a href="http://hl7.org.au/fhir/4.0.0/StructureDefinition-no-fixed-address.html">No Fixed Address</a></td>
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


