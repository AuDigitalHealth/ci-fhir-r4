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
            <ul>
                <li><a href="#tabs-1">Categorized</a></li>
                <li><a href="#tabs-2">Based on</a></li>
            </ul>
            <div id="tabs-1">
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
                            <ul>
                                <li><a href="StructureDefinition-composition-otherdiagreport-1.html">Composition (Other Diagnostic Report)</a></li>
                                <li><a href="StructureDefinition-composition-pathreport-1.html">Composition (Pathology Report)</a></li>
                                <li><a href="StructureDefinition-composition-imagreport-1.html">Composition (Diagnostic Imaging Report)</a></li>
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
                    <tr class="frm-contents">
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-patient-mhr-1.html">Patient (My Health Record Patient)</a></li>                                
                            </ul>
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-practitionerrole-ident-1.html">PractitionerRole (PractitionerRole with Mandatory Identifier)</a></li>                                
                            </ul>
                        </td>
                        <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-organization-dh-base-1.html">Organization (Base Organization)</a></li>
                                <li><a href="StructureDefinition-organization-ident-1.html">Organization (Organization with Mandatory Identifier)</a></li>
                            </ul>
                        </td>                         
                         <td class="frm-null"/> 
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
                                <li><a href="StructureDefinition-diagnosticreport-otherdiag-atomic-1.html">DiagnosticReport (Atomic Other Diagnostic Report)</a></li>
                                <li><a href="StructureDefinition-diagnosticreport-path-atomic-1.html">DiagnosticReport (Atomic Pathology Report)</a></li>
                                <li><a href="StructureDefinition-diagnosticreport-otherdiag-mhr-1.html">DiagnosticReport (My Health Record Other Diagnostic Report)</a></li>
                                <li><a href="StructureDefinition-diagnosticreport-path-mhr-1.html">DiagnosticReport (My Health Record Pathology Report)</a></li>
                                <li><a href="StructureDefinition-observation-path-atomic-1.html">Observation (Atomic Pathology Observation)</a></li>
								<li><a href="StructureDefinition-observation-otherdiag-simple-1.html">Observation (Simple Other Diagnostic Observation)</a></li>
                                <li><a href="StructureDefinition-observation-path-simple-1.html">Observation (Simple Pathology Observation)</a></li>
                                <li><a href="StructureDefinition-specimen-collect-1.html">Specimen (Collected Specimen)</a></li>
                            </ul> 
                         </td>
                         <td class="frm-null"/>
                         <td class="frm-set">
                            <ul class="frm-set">
                                <li><a href="StructureDefinition-servicerequest-otherdiag-report-1.html">ServiceRequest (Order Details for Other Diagnostic Report)</a></li>
                                <li><a href="StructureDefinition-servicerequest-path-report-1.html">ServiceRequest (Order Details for Pathology Report)</a></li>
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
                    <tr class="frm-group">
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
                    </tr> 
                    <tr class="frm-break"><td colspan="6"/></tr>
                </table>
            </div>
      </div>
      <div id="tabs-2">
        <table width="100%">
          <tr>
            <th>Implementation guide profile</th>
            <th>Implementation guide profile base</th>
            <th>FHIR base resource</th>
          </tr>
          <tr>
            <td class="frm-null"/>
            <td class="frm-null"/>
            <td class="frm-null"/>
          </tr>
		  <tr>
            <td><a href="StructureDefinition-composition-otherdiagreport-1.html">Composition (Other Diagnostic Report)</a></td>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-composition.html">AU Base Composition</a></td>
            <td><a href="http://hl7.org/fhir/R4/composition.html">Composition</a></td>
          </tr>
		  <tr>
            <td><a href="StructureDefinition-composition-pathreport-1.html">Composition (Pathology Report)</a></td>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-composition.html">AU Base Composition</a></td>
            <td><a href="http://hl7.org/fhir/R4/composition.html">Composition</a></td>
          </tr>
		  <tr>
            <td><a href="StructureDefinition-composition-imagreport-1.html">Composition (Diagnostic Imaging Report)</a></td>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-composition.html">AU Base Composition</a></td>
            <td><a href="http://hl7.org/fhir/R4/composition.html">Composition</a></td>
         <tr>
            <td><a href="StructureDefinition-diagnosticreport-otherdiag-atomic-1.html">DiagnosticReport (Atomic Other Diagnostic Report)</a></td>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a></td>
            <td><a href="http://hl7.org/fhir/R4/diagnosticreport.html">DiagnosticReport</a></td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-diagnosticreport-path-atomic-1.html">DiagnosticReport (Atomic Pathology Report)</a></td>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a></td>
            <td><a href="http://hl7.org/fhir/R4/diagnosticreport.html">DiagnosticReport</a></td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-diagnosticreport-otherdiag-mhr-1.html">DiagnosticReport (My Health Record Other Diagnostic Report)</a></td>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a></td>
            <td><a href="http://hl7.org/fhir/R4/diagnosticreport.html">DiagnosticReport</a></td>
          </tr>          
          <tr>
            <td><a href="StructureDefinition-diagnosticreport-path-mhr-1.html">DiagnosticReport (My Health Record Pathology Report)</a></td>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-diagnosticreport.html">AU Base Diagnostic Report</a></td>
            <td><a href="http://hl7.org/fhir/R4/diagnosticreport.html">DiagnosticReport</a></td>
          </tr>
          <tr>
            <td><a href="StructureDefinition-observation-path-atomic-1.html">Observation (Atomic Pathology Observation)</a></td>
            <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a></td>
            <td><a href="http://hl7.org/fhir/R4/observation.html">Observation</a></td>
          </tr>
		  <tr>
            <td><a href="StructureDefinition-observation-otherdiag-simple-1.html">Observation (Simple Other Diagnostic Observation)</a></td>
            <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a></td>
            <td><a href="https://hl7.org/fhir/R4/observation.html">Observation</a></td>
          </tr>
           <tr>
              <td><a href="StructureDefinition-observation-path-simple-1.html">Observation (Simple Pathology Observation)</a></td>
              <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-observation.html">AU Diagnostic Observation</a></td>
              <td><a href="https://hl7.org/fhir/R4/observation.html">Observation</a></td>
        </tr>
          <tr>
              <td><a href="StructureDefinition-organization-dh-base-1.html">Organization (Base Organization)</a></td>
              <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-organization.html">AU Base Organization</a></td>
              <td><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></td>
          </tr> 
          <tr>
            <td><a href="StructureDefinition-organization-ident-1.html">Organization (Organization with Mandatory Identifier)</a></td>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-organization.html">AU Base Organization</a></td>
            <td><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></td>
          </tr>
          <tr>
              <td><a href="StructureDefinition-patient-mhr-1.html">Patient (My Health Record Patient)</a></td>
              <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html">AU Base Patient</a></td>
              <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
          </tr>
          <tr>
              <td><a href="StructureDefinition-practitionerrole-ident-1.html">PractitionerRole (PractitionerRole with Mandatory Identifier)</a></td>
              <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-practitionerrole.html">AU Base Practitioner Role</a></td>
              <td><a href="http://hl7.org/fhir/R4/practitionerrole.html">PractitionerRole</a></td>
          </tr>
         <tr>
              <td><a href="StructureDefinition-servicerequest-otherdiag-report-1.html">ServiceRequest (Order Details for Other Diagnostic Report)</a></td>
              <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-servicerequest.html">AU Diagnostic Service Request</a></td>
              <td><a href="http://hl7.org/fhir/R4/servicerequest.html">ServiceRequest</a></td>
          </tr>
         <tr>
              <td><a href="StructureDefinition-servicerequest-path-report-1.html">ServiceRequest (Order Details for Pathology Report)</a></td>
              <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnostic-servicerequest.html">AU Diagnostic Service Request</a></td>
              <td><a href="http://hl7.org/fhir/R4/servicerequest.html">ServiceRequest</a></td>
          </tr>
          <tr>
              <td><a href="StructureDefinition-specimen-collect-1.html">Specimen (Collected Specimen)</a></td>
              <td><a href="http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-specimen.html">AU Base Specimen Profile</a></td>
              <td><a href="http://hl7.org/fhir/R4/specimen.html">Specimen</a></td>
          </tr>
        </table>
      </div>
  </div>  <!-- /inner-wrapper -->
  </div>  <!-- /row -->
  </div>  <!-- /container -->
  </div>  <!-- /segment-content -->

	<div id="segment-post-footer" class="segment hidden">  <!-- segment-post-footer -->
		<div class="container">  <!-- container -->
		</div>  <!-- /container -->
	</div>  <!-- /segment-post-footer -->
    
      <!-- JS and analytics only. -->
      <!-- Bootstrap core JavaScript
================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
<script src="./assets/js/jquery.js"> </script>     <!-- note keep space here, otherwise it will be transformed to empty tag -> fails -->
<script src="./dist/js/bootstrap.min.js"> </script>
<script src="./assets/js/respond.min.js"> </script>

<script src="./assets/js/fhir.js"> </script>

  <!-- Analytics Below
================================================== -->


<script src="external/jquery/jquery.js"> </script>
<script src="jquery-ui.min.js"> </script>
<script>
try {
  var currentTabIndex = sessionStorage.getItem('fhir-resourcelist-tab-index');
}
catch(exception){
}

if (!currentTabIndex)
  currentTabIndex = '0';

$( '#tabs' ).tabs({
         active: currentTabIndex,
         activate: function( event, ui ) {
             var active = $('.selector').tabs('option', 'active');
             currentTabIndex = ui.newTab.index();
             document.activeElement.blur();
             try {
               sessionStorage.setItem('fhir-resourcelist-tab-index', currentTabIndex);
             }
             catch(exception){
             }
         }
     });
</script>
</div>
</div>
</html>