The purpose of this profile is to define a representation of the outcome of the operation to retrieve GP practice registration information for a patient from MyGP for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [OperationOutcome ](http://hl7.org/fhir/R4/operationoutcome.html) that are supported. 

This profile is designed to set an OperationOutcome standard for:
* Query for a patient's registered GP practice information from MyGP

This profile is used by the following APIs:
* [insert API endpoint](StructureDefinition-TBD-1.html)

#### Profile specific guidance
* Informational and error message description is represented in `OperationOutcome.issue.details.text` 


#### Boundaries and relationships
This profile is not referenced by another profile in this implementation guide.  


#### Examples
<a href="OperationOutcome-vpr-04.html">Successful operation (i.e. no functional or technical errors), with no MyGP registration data</a>

<a href="OperationOutcome-vpr-05.html">Functional error</a>

<a href="OperationOutcome-vpr-06.html">Technical error</a>