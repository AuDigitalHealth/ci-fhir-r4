# {{ page.title }}
{% include publish-box.html %}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}
## FHIR (Fast Healthcare Interoperability Resources)

FHIR is a standard developed by HL7. The standard describes data formats and elements, known as [Resources](http://hl7.org/fhir/r4/resourcelist.html), by which content is exchanged.

A FHIR resource may be supplied in one of the following formats: [XML](http://hl7.org/fhir/r4/xml.html), [JSON](http://hl7.org/fhir/r4/json.html) and [Turtle](http://hl7.org/fhir/r4/rdf.html). FHIR supports four paradigms for exchange: the RESTful API (Application Programming Interface), messaging, documents, and services.

This implementation guide describes FHIR resources built following the rules described in [FHIR, Release 4 (v4.0.1) [HL7FHIR4]](index.html#HL7FHIR4).

The FHIR specification is evolving; the current FHIR specification is available at [http://hl7.org/fhir](http://hl7.org/fhir). A [Publication (Version) History](http://www.hl7.org/fhir/directory.cfml) of past and current working versions, including [FHIR Release 4 (First Normative content) [HL7FHIR4]](index.html#HL7FHIR4) is available.

The following references are recommended to gain a better understanding of FHIR:
* [FHIR, Release 4 (v4.0.1) [HL7FHIR4]](index.html#HL7FHIR4)
* [FHIR Overview](https://www.hl7.org/fhir/r4/overview.html)
* [HL7 International FHIR Wiki [HL7FHIR]](index.html#HL7FHIR)
 

## Profile / extension representation and structure

Each profile or extension (StructureDefinition) described by this implementation guide has a separate page that presents the normative definition of that profile or extension and informative content to support implementation.

The content of each page is structured as follows:
* Profile title followed by the profile status hyperlinked to FHIR [PublicationStatus](http://hl7.org/fhir/r4/valueset-publication-status.html).
* Usage scenarios, if present, includes a short description of the example or expected usage scenarios for that profile that are supported by this implementation guide. Usage scenarios are only present if a profile is of the primary grouping resource for exchange purposes.
* Implementation guidance includes guidance specific to the usage scenarios supported by this implementation guide. This content is informative; there may be valid reasons not to follow this guidance, but the full implications must be understood and carefully weighed before choosing a different course.
* Examples includes links to example resources that conform to the profile or extension and that support implementation by demonstrating one or more usage scenarios supported by this implementation guide.
* Formal Views of Profile Content includes the human readable view of the normative definition of the profile or extension.
* Known Issues includes the list of unintended or unexpected behaviours associated with that profile we are aware of that have an impact that implementers should take note of.

The Formal Views of Profile Content contains:
* The canonical url e.g. http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/composition-es-1 
* A free text natural language description of the structure and its use that also includes the information on meaning of must support
* Identification of the base resource from which this profile is derived from; included in this implementation guide as “This profile builds on [base resource]”
* A set of metadata that describes the version of the profile, publisher and the date of publishing; included as “This profile was published on [date] as a [status] by [publisher “Australian Digital Health Agency”].”
* A human readable view of the structure:
    * **Differential Table**: Shows details of what is being changed in the profile in regards to its base resource
    * **Snapshot Table**: Shows computed outcome of applying the statements in the differential to the base resource. An instance claiming conformance to a profile needs to conform to the snapshot representation of the profile

The fields used to present the Differential Table and the Snapshot Table in this implementation guide are described in [Logical table](http://hl7.org/fhir/r4/formats.html#table).

## Validating resources using profiles from this implementation guide

There are several means of [validating resources](http://hl7.org/fhir/validation.html) against a set of rules, each with differing coverage and capabilities.

Some rules may be defined in a machine-processable manner and thus can be checked by automated means, however some rules are defined solely in human-readable descriptions. The profiles and extensions described by this implementation guide can contain both.

Existing validation tools differ in their support for machine-processable rules. These tools continue to evolve and progressively implement the FHIR standard; it should be noted that different servers and tools may not provide equivalent responses when executing the same operation.

The validation tools used during development of the profiles and extensions described in this implementation guide include [Forge](https://fire.ly/products/forge/) and the [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) (with its in-built validation process).

## Known issues relating to the support and implementation of FHIR

The table below describes some issues that may affect implementing the content of this guide or supporting the described usage scenarios. [Implementation Support Module](http://hl7.org/fhir/r4/implsupport-module.html) provides a helpful reference for information about available tools, libraries and other similar resources.

Readers of this implementation guide are encouraged to actively participate in the FHIR community and get involved in the development of the standard and related tooling. 

<table border="1" cellpadding="1" valign="middle">
<tbody>
  <tr bgcolor="#DCDCDC">
    <th>Reference</th>
    <th>Description</th>
    <th>Issue No.</th>
  </tr>
  <tr>
    <td>Invariants may not constrain as intended</td>
    <td>
        <p>Currently the FHIR Validator (which is used by IG Publisher) does not fully support all constraints defined in the FHIR specification. For example invariants using conformsTo() have not been able to be confirmed and do not reject resources that are expected to fail.</p>
    </td>
    <td>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179177-conformance">conformance</a> stream</td>
  </tr>
  <tr>
    <td>Rendering of Composition narrative in examples</td>
    <td>
        <p>The tooling used to generate this implementation guide (IG Publisher) does not render narrative in Composition examples in line with the expectations for presenting a FHIR document for human consumption.</p>
        <p>The human friendly rendered format of Composition examples in this implementation guide may be missing content, e.g. section narrative, forcing the reader to refer to XML or JSON format to view the full example narrative. Alternatively in order to demonstrate example narrative rendering the construction of the narrative is against good practice in order to provide complete readable content.</p>
    </td>
    <td>
        <p>gForge Change Request <a href="https://gforge.hl7.org/gf/project/fhir/tracker/?action=TrackerItemEdit&tracker_item_id=17401">#17401</a></p>
    </td>
  </tr>
  <tr>
    <td>Slicing types may not constrain as intended</td>
    <td>
        <p>Currently the FHIR Validator and IG Publisher do not fully support the use of all discriminator types defined by the FHIR standard.</p>
        <p>At this stage we are not using designs that control the members of sets such as Composition.section.entry that use slicing. Slicing by type:resolve() and profile:resolve() do not function as expected.</p>
        <p>Designs that use slicing on value set binding are not supported by the FHIR Validator or IG Publisher.</p>
    </td>
    <td>
        <p>gForge Change Request <a href="https://gforge.hl7.org/gf/project/fhir/tracker/?action=TrackerItemEdit&tracker_item_id=20572">#20572</a></p>
    </td>
  </tr>
  <tr>
    <td>Constraining via a derived profile an extension added to source profile</td>
    <td>
        <p>The tooling (Forge) used to author profiles does not allow for the constraining of an extension via reference.</p>
        <p>At this stage only designs that use an invariant to constrain the reference may be authored (though they may not constrain as intended).</p>
    </td>
    <td>
        <p>See Zulip <a href="https://chat.fhir.org/#narrow/stream/179177-conformance">Constraining Extension Values in Profiles</a> stream</p>
    </td>
  </tr>
 </tbody>
</table> 

The following resources are available to raise questions or issues relating to FHIR and FHIR tooling:
* [FHIR Chat Channel Zulip](https://chat.fhir.org/)
* [FHIR Community Forum](http://community.fhir.org/)
* [StackOverflow](https://stackoverflow.com/questions/tagged/hl7_fhir)
* [gForge](https://gforge.hl7.org/gf/project/fhir/)


## Conformance conventions

### StructureDefinition
The content of this implementation guide is a set of FHIR [StructureDefinition](http://hl7.org/fhir/r4/structuredefinition.html) resources for implementing the document model that is the subject of this implementation guide.

This implementation guide includes FHIR profiles that are a set of constraints and/or extensions to FHIR base resources or a data types in the format of a StructureDefinition resource. A StructureDefinition describes a structure - a set of data element definitions, and their associated rules of usage – and is hereafter referred to as a ‘profile’ or an ‘extension’.

A profile or extension is identified by its canonical URL (e.g. http://ns.electronichealth.net.au/ci/fhir/4.0/StructureDefinition/composition-es-1). These canonical URLs are unique to each profile or extension. When valued in an instance, the URL signals the imposition of a set of defined constraints. The URL value provides a globally unique identifier for the profile or extension in question and in the case of a profile or extension described in this implementation guide the major version number is identified by the final digit of the URL.

### Must Support
The Must Support rules for this implementation guide are defined in [Conformance](conformance.html). A must support flag, when present in this implementation guide, is displayed as letter “S” with red background in the Flag column of the Differential Table and Snapshot Table of a profile or extension, as such <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>.

### Conformance verbs
The conformance verbs used in this implementation guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/r4/conformance-rules.html#conflang). Conformance verbs are present in this implementation guide in [Conformance requirements](conformance.html), and in invariants which are visible in the “Description & Constraints” column of the Differential Table and Snapshot Table of a profile or extension.

### Terminology binding
The terminology binding rules are defined in [Controlling the use of Coded Values](http://hl7.org/fhir/r4/terminologies.html#binding). Terminology is specified in this implementation guide, 
in some cases binding an element to a value set or binding to a single fixed code. For guidance on coding see [Using Codes in Resources](http://hl7.org/fhir/r4/terminologies.html).

A value set binding, if present in this specification, will be specified in the "Description & Constraints" column of a profile as the title of the value set (hyperlinked to its definition) followed by identification of the binding strength (hyperlinked to its definition), e.g. [Health Summary Non-Clinical Empty Reason](https://healthterminologies.gov.au/fhir/ValueSet/health-summary-non-clinical-empty-reason-1) ([required](http://hl7.org/fhir/r4/terminologies.html#code)).


### Cardinality
Cardinality rules in FHIR are defined in [FHIR Conformance Rules](http://hl7.org/fhir/r4/conformance-rules.html#conflang). This section provides a description of those rules as present in this implementation guide and how they are to be interpreted.

The cardinality range specifies the allowable occurrences within a document instance. Cardinality range is specified in the format “m..n” where m is the minimum allowed members of the set (lower bound) and n is the maximum allowed members of the set (upper bound). The allowed values for m and n are 0, any positive integer, and *.

The table below demonstrates a representative set of examples of cardinality range and how to interpret that cardinality range; p is positive integer greater than the minimum allowed members of the set.

<table border="1" cellpadding="1" valign="middle">
<tbody>
  <tr bgcolor="#DCDCDC">
    <th>Cardinality range</th>
    <th>Interpretation</th>
  </tr>
  <tr>
    <td>0..0</td>
    <td>zero (explicitly prohibited)</td>
  </tr>
 <tr>
    <td>0..1</td>
    <td>zero or one</td>
  </tr>
  <tr>
    <td>1..1</td>
    <td>exactly one</td>
  </tr>
  <tr>
    <td>0..*</td>
    <td>zero or more</td>
  </tr>
    <tr>
    <td>1..*</td>
    <td>at least one</td>
  </tr>
<tr>
    <td>2..*</td>
    <td>at least two</td>
  </tr>
<tr>
    <td>1..p</td>
    <td>at least one and not more than p</td>
  </tr>
  <tr>
    <td>2..p</td>
    <td>at least two and not more than p</td>
  </tr>
 </tbody>
</table>

### Slicing 
Slicing rules in FHIR are defined in [Profiling FHIR](http://hl7.org/fhir/r4/profiling.html). This section provides a description of slicing as present in this implementation guide.

Slicing is a mechanism to describe patterns of restrictions (i.e. conformance requirements). Slicing, usually on resource elements that can appear more than once in a profile, or on elements that do not repeat but have a choice of data types, where each slice has a different definition of the element. For example, the section element in a composition profile may be sliced into a list of slices in order to give each section slice a different set of restrictions.

A sliced element can be identified by the following icon <span style="padding-left: 3px; padding-right: 3px"><img src="icon_slice.png" alt="." style="background-color: white; background-color: inherit"/></span> in the Name column of the Differential and Snapshot views of the Differential Table and Snapshot Table of a profile or extension.

Slicing rules are:
* **Ordered**: describes whether the slices must come in the order they are defined (Ordered), or whether they can come in any order (Unordered)
* **Rules**: describes whether the profiles that are derived from this one are allowed to add additional slices (Open), or not allowed to add additional slices (Closed)
* **Discriminator**: an element or a list of elements used to discriminate the slices. When a discriminator is provided, the composite of the values of the elements designated in the discriminator is unique and distinct for each possible slice

