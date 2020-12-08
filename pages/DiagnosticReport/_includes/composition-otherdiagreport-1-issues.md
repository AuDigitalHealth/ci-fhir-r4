<table class="list" width="100%">
<tbody>
  <tr>
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
 <tr>
      <td>type (document subtype)</td>
      <td>This profile is intended to support all 'other' diagnostic reports which is broad.<br/><br/>
      
	  It is being considered whether Composition.type is better supported as a value set including a set of diagnostic report types, or whether it has to be fixed to be a catch-all code and with the referenced diagnostic report provides the finer grain.

      </td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/35">ci-fhir-r4/issues/35</a></td>
  </tr>
  <tr>
	  <td>category (document type)</td>
	    <td>It is likely that the category is too generic for the requirements of the Clinincal Document Categorisation (CDC) project and with stakeholder a suitable set of type and sub-type need to be defined and agreed.<br/><br/>
		As a discussion point Composition.category has been fixed to the LOINC code 4705-0 "Study Report" which is the highest level possible to catch all report types. 
	</td>
      <td>See <a href="https://github.com/AuDigitalHealth/ci-fhir-r4/issues/104">ci-fhir-r4/issues/104</a></td>
  </tr>
  <tr>
      <td>Constraint presentation</td>
      <td>The full set of constraints (i.e. invariants) defined in this profile are only presented in the Detailed Descriptions tab or the raw representation (e.g. XML) of the profile. The Differential Table only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The Snapshot Table only presents the constraints visible in the Differential Table and additionally presents those constraints set in slices in the base profile.</td>
      <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Derived.20profile.20snapshot.20missing.20upstream.20invariants">Derived profile snapshot missing upstream invariants</a> stream</td>
  </tr>
 </tbody>
</table>
