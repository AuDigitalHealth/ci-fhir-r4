#### Order Details for Diagnostic Report
The purpose of this profile is to represent key elements of clinical relevance of a request for diagnostic investigation (such as echo cardiogram or colonoscopy or hearing test) in a diagnostic report context. This profile is intended to support the electronic exchange of other diagnostic reports between healthcare providers, and between healthcare providers and the My Health Record system infrastructure in Australia.

The context of this profile is reporting.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* if sent, one identifier is the local identifier assigned to the order by the order requester (i.e. placer identifier)
* a local identifier is sent with a [HPI-O scoped](http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/index.html) identifier namespace if there isn't a local namespace available (see the [FAQ](https://github.com/AuDigitalHealth/ci-fhir-r4/wiki/Frequently-Asked-Questions) for more information) 
* status is ‘completed’
 
When sending to the My Health Record system it is expected that: 
<ul>
  <li>patient conforms to <a href="StructureDefinition-patient-mhr-1.html">My Health Record Patient</a></li>
</ul>

#### Boundaries and relationships
Requesting of diagnostic services is not supported by this implementation guide and may in future be handled in a referral or service requesting implementation guide.

This profile is referenced by [Atomic Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-atomic-1.html) and [My Health Record Other Diagnostic Report](StructureDefinition-diagnosticreport-otherdiag-mhr-1.html).