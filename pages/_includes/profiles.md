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
                                <li><a href="StructureDefinition-dh-patient-core-1.html">Australian Digital Health Agency Core Patient</a></li>
                                <li><a href="StructureDefinition-dh-patient-mhr-1.html">Australian Digital Health Agency My Health Record Patient</a></li>
                                <li><a href="StructureDefinition-practitioner-identified-1.html">Australian Digital Health Agency Core Practitioner</a></li>
                                <li><a href="StructureDefinition-dh-practitionerrole-core-1.html">Australian Digital Health Agency Core PractitionerRole</a></li>
                                <li>Australian Digital Health Agency Authoring PractitionerRole</li>
                                <li><a href="StructureDefinition-dh-relatedperson-core-1.html">Australian Digital Health Agency Core RelatedPerson</a></li>
                                <li>Australian Digital Health Agency Authoring RelatedPerson</li>
                            </ul>
                        </td>  
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-location-core-1.html">Australian Digital Health Agency Core Location</a></li>
                                <li><a href="StructureDefinition-dh-organization-core-1.html">Australian Digital Health Agency Core Organization</a></li>
                                <li><a href="StructureDefinition-dh-healthcareservice-core-1.html">Australian Digital Health Agency Core HealthcareService</a></li>
                            </ul>
                        </td> 
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li>>Australian Digital Health Agency Core Device</li>
                                <li>Australian Digital Health Agency Authoring Device</li>
                                <li>Australian Digital Health Agency Medical Device</li>
                                <li>Australian Digital Health Agency Core Substance</li>

                            </ul>
                        </td>                          
                        <td class="frm-null"/>
                        <td class="frm-null"/>
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
                                <li><a href="StructureDefinition-dh-bodystructure-core-1.html">Australian Digital Health Agency Core BodyStructure</a></li>
                                <li><a href="StructureDefinition-dh-tbd-core-1.html">Australian Digital Health Agency Core DiagnosticReport</a></li>
                                <li>Australian Digital Health Agency Pathology DiagnosticReport</li>
                                <li>Australian Digital Health Agency Diagnostic Imaging DiagnosticReport</li>
                                <li>Australian Digital Health Agency Core Observation</li>
                                <li>Australian Digital Health Agency Core Specimen</li>
                            </ul>
                        </td>     
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-dh-medication-core-1.html">Australian Digital Health Agency Core Medication</a></li>
                                <li>Australian Digital Health Agency Core MedicationAdministration</li>
                                <li><a href="StructureDefinition-dh-medicationstatement-core-1.html">Australian Digital Health Agency Core MedicationStatement</a></li>
                                <li><a href="StructureDefinition-dh-immunization-core-1.html">Australian Digital Health Agency Core Immunization</a></li>
                            </ul>
                        </td>     
                        <td class="frm-null"/>
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
