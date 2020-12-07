<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
      <tr>
    <td>URI of location of referred to content</td>
    <td><p>Some consideration required for supporting in this profile how to support the requirement that the diagnostic report should store one URI per report or test referencing the externally images or other useful content. Where a URI is not available, additional narrative might be included stating a phone number or other contact details for further enquiry.</p>
        <p>This is a requirement in Diagnostic Imaging Report but still under consideration as to whether or not this is to be supported for Other Diagnsotic Reports.</p>
        <p>Possibly an endPoint extension may be useful, possibly a simple extension for only the use case is appropriate.</p></td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/107">ci-fhir-r4/issues/107</a></td>
   </tr>
     <tr>
       <td>ServiceRequester.requester (Organization)</td>
    <td><p>The DaignosticReport invariant "inv-dh-dir-03: The requester of the diagnostic investigation order shall be a PractitionerRole" mandates the requester is a PractitionerRole; however ServiceRequest.basedOn allows for PractitionerRole and Organization and in some scenario's it is appropriate for an organization to  be the requester of an investigation.<br/><br/>
	Further investigation is required to determine if the invariant "inv-dh-dir-03" should be removed. </p>
	
	</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/110">ci-fhir-r4/issues/110</a></td>
   </tr>
   <tr>
    <td>category (cardinality constraint)</td>
    <td><p>It is likely for other diagnsotic reports that the cardinality of DiagnosticReport.category should be [1.. *], however investigation is required to rule out the need for [2.. *] as in the case of pathology where there is a required category of "LAB".</p>
        
     </td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/108">ci-fhir-r4/issues/108</a></td>
   </tr>
	      <tr>
    <td>category (fixed value)</td>
    <td><p>Both Pathology report and Diagnostic Imaging Report have a fixed value for category, "LAB" and "imaging" respectively, to enable system processing and differentiation between the reports.  Investigation is required into whether a fixed code is required for other diagnostic reports and if so what this code should be.</p>
        
     </td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/109">ci-fhir-r4/issues/109</a></td>
   </tr>
   <tr>
    <td>category (terminology binding)</td>
    <td>We need to create a more constrained value set that at least removes imaging and pathology.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/42">ci-fhir-r4/issues/42</a></td>
   </tr> 
    <tr>
       <td>code (validate value set)</td>
    <td><p>The value set <a href="https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1">https://healthterminologies.gov.au/fhir/ValueSet/evaluation-procedure-1</a> has been bound to code with extensible binding.  This value set needs to be validated for it's usability for the other diagnostic reports. </p>
	
	</td>
    <td>See <a href="https://github.com/hl7au/au-fhir-base/issues/402">au-fhir-base/issues/402</a></td>
   </tr>
      <tr>
    <td>presentedForm (PDF packaging requirements)</td>
    <td>Not yet clear what the packaging requirements are for attachments when sending FHIR to the My Health Record system infrastructure. In lieu of a FHIR equivalent of the <a href="https://developer.digitalhealth.gov.au/specifications/clinical-documents/ep-1962-2014/nehta-1229-2011">Clinical Documents - CDA Package v1.0</a> specification, examples for this profile will include workarounds (e.g. absolute url to a placeholder repository for attachment) or inclusion as base64 binary in a bundle.</td>
    <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/74">ci-fhir-r4/issues/74</a></td>
   </tr>
   <tr>
    <td>Constraint presentation</td>
    <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants stream</a></td>
   </tr>   
</tbody>
</table>
