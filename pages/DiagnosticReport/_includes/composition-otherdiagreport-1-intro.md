#### Other Diagnostic Report
The purpose of this profile is to define a representation for the electronic exchange of reports of specialist or other diagnostic investigations (such as echo cardiogram or colonoscopy or hearing test) as a document between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

A Specialist and Other Diagnostic Report is created by an authoring diagnostic service provider in response to a diagnostic procedure order and contains a specialist or other healthcare provider’s analysis of the results of one or more diagnostic investigations. The original diagnostic report may be attached in one or more formats (e.g. PDF and MS Word format) that may contain one or more diagnostic investigation results

A registered portal or registered repository shall not be a producer of a specialist or other diagnostic report.

#### Usage scenarios
The following are the overarching usage scenarios this profile is intended to support:
* A clinical information system (CIS) sends or receives a specialist or other diagnostic report document with the My Health Record system
* A contracted service provider (CSP) sends or receives a specialist or other diagnostic report document with the My Health Record system
* A CIS sends or receives a specialist or other diagnostic report document with another CIS or CSP
* A CSP sends or receives a specialist or other diagnostic report document with a CIS or another CSP
* A registered portal or registered repository receives a specialist or other diagnostic report document

#### Implementation guidance
For the overarching usage scenarios in this implementation guide the guidance in the following table applies.

<table class="list" width="100%">
 <colgroup>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 70%;"/>
    </colgroup>
    <tbody>
  <tr>
    <th>Composition element</th>
    <th>Guidance</th>
   </tr>
     <tr>
        <td>identifier</td>
        <td>Will be sent with the same value as one DiagnosticReport.identifier</td>
    </tr>
   <tr>
        <td>status</td>
        <td>Will be sent with a code that is consistent with the status in DiagnosticReport.status</td>
   </tr>   
   <tr>
        <td>subject</td>
        <td>Will be sent with the same Patient as DiagnosticReport.subject</td>
    </tr>   
   <tr>
        <td>date</td>
        <td>Will be not be earlier than DiagnosticReport.instant (if supplied)</td>
    </tr>   
   <tr>
        <td>author</td>
        <td>Will be sent with the same PractitionerRole(s) as DiagnosticReport.performer</td>
    </tr>    
       <tr>
        <td>title</td>
        <td>Will be sent with the same value as DiagnosticReport.presentedForm.title (if supplied)</td>
    </tr>    
       <tr>
        <td>attester</td>
        <td>Will be the person who approved the release of the diagnostic report</td>
    </tr>    
       <tr>
        <td>custodian</td>
        <td>Will be the diagnostic service provider that is the long term custodian of the report and is sent as a reference to an Organization resource with Organization.name, Organization.identifier, and Organization.telecom</td>
    </tr>  
    </tbody>
  </table> 


When sending to the My Health Record system it is expected that:
* all instances of patient conform to [My Health Record Patient](StructureDefinition-patient-mhr-1.html)
* the diagnostic report conforms to [My Health Record Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-mhr-1.html)

#### Boundaries and relationships
This Composition profile is intended to support exchange using a document wrapper to enclose the diagnostic report, thus the values of diagnostic report elements that are present in both the DiagnosticReport resource and the Composition resource shall be consistent. [My Health Record Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-mhr-1.html) or [Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html) may also be used in sending a diagnostic report without a document wrapper.
