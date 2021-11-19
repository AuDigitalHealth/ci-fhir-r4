# {{ page.title }}
{% include publish-box.html %}

<p>The following profiles form part of this implementation guide: </p>

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
                                <li>ADHA Core Composition</li>
                                <li>ADHA My Health Record Composition</li>
                                <li>ADHA Core DocumentReference</li>
                                <li>ADHA My Health Record DocumentReference</li>                                
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
                                <li><a href="StructureDefinition-dh-patient-mhr-1.html">ADHA My Health Record Patient</a></li>
                                <li><a href="StructureDefinition-practitioner-identified-1.html">ADHA Core Practitioner</a></li>
                                <li><a href="StructureDefinition-dh-practitionerrole-core-1.html">ADHA Core PractitionerRole</a></li>
                                <li>ADHA Authoring PractitionerRole</li>
                                <li><a href="StructureDefinition-dh-relatedperson-core-1.html">ADHA Core RelatedPerson</a></li>
                                <li>ADHA Authoring RelatedPerson</li>
                            </ul>
                        </td>  
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-location-core-1.html">ADHA Core Location</a></li>
                                <li><a href="StructureDefinition-dh-organization-core-1.html">ADHA Core Organization</a></li>
                                <li><a href="StructureDefinition-dh-healthcareservice-core-1.html">ADHA Core HealthcareService</a></li>
                            </ul>
                        </td> 
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Core Device</li>
                                <li>ADHA Authoring Device</li>
                                <li>ADHA Medical Device</li>
                                <li><a href="StructureDefinition-dh-substance-core-1.html">ADHA Core Substance</a></li>

                            </ul>
                        </td>                          
                        <td class="frm-null"/>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Core Encounter</li>
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
                                <li><a href="StructureDefinition-dh-allergyintolerance-core-1.html">ADHA Core AllergyIntolerance</a></li>
                                <li>ADHA Core Condition</li>
                                <li>ADHA Core Procedure</li>
                                <li>ADHA Core FamilyMemberHistory</li>
                            </ul>
                        </td>    
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-bodystructure-core-1.html">ADHA Core BodyStructure</a></li>
                                <li>ADHA Core DiagnosticReport</li>
                                <li>ADHA Pathology DiagnosticReport</li>
                                <li>ADHA Diagnostic Imaging DiagnosticReport</li>
                                <li>ADHA Core Observation</li>
                                <li><a href="StructureDefinition-dh-specimen-core-1.html">ADHA Core Specimen</a></li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-medication-core-1.html">ADHA Core Medication</a></li>
                                <li>ADHA Core MedicationAdministration</li>
                                <li>ADHA Core MedicationStatement</li>
                                <li><a href="StructureDefinition-dh-immunization-core-1.html">ADHA Core Immunization</a></li>
                                <li>ADHA Record of Immunization</li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>ADHA Core CarePlan</li>
                                <li>ADHA Core ServiceRequest</li>
                                <li>ADHA Referral</li>
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
                        <td class="frm-null"/>
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
