{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}
# {{ page.title }}

## Conformance requirements
Any FHIR resource that claims conformance to a profile in this implementation guide, or any derived profile, SHALL meet these requirements:

* It SHALL be a valid HL7 FHIR instance. In particular:
    * It SHALL conform to [FHIR, Release 3 (STU) [HL7FHIR3]](index.html#HL7FHIR3).
    * It SHALL conform to the profile it claims conformance to including:
        * conforming to the requirements described on the corresponding profile or extension page of this implementation guide
        * conforming to the requirements in the base resource as specified in [FHIR, Release 3 (STU) [HL7FHIR3]](index.html#HL7FHIR3)
        * conforming to the requirements in the base profile where the profile described in this implementation guide is derived from a base profile
* It SHALL conform to the requirements specified in the Must Support section below.
* Where additional content beyond that flagged with must support is provided it:
    * SHALL NOT qualify or negate content described by this profile as must support
    * SHALL be clinically safe for receivers of the document to ignore the non-narrative additions when interpreting the existing content

A profile, derived from a profile described in this implementation guide may make additional rules that override this implementation guide:

* A derived profile SHALL be derived in accordance with the rules on profiling
* A FHIR resource that is conformant to the derived profile SHALL be conformant to the profile in this implementation guide it was derived from


## Must Support
A [Must Support](http://hl7.org/fhir/STU3/conformance-rules.html#mustSupport) (see [Conformance conventions](guidance.html#conformance-conventions)) specifies that an element must be supported. This section defines the support required from systems and applications wanting to claim conformance to a profile described in this implementation guide. This definition of support is present in the profile StructureDefinition.

In the context of this implementation guide, must support SHALL be interpreted as follows:

* The system SHALL be able to include the element when authoring a resource where data is available
* The system SHALL be able to store and retrieve the element
* The system SHALL be able to process resources containing the element