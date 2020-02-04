# {{ page.title }}
{% include publish-box.html %}
{:.no_toc}
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
* Do not remove this line (it will not be displayed)
{:toc}

## Introduction

The Diagnostic Report implementation guide is intended to support multiple usage scenarios; some profiles described within this implementation guide are reused across usage scenarios and other implementation guides.

This informative section provides a mapping from the requirements of each end-product clinical specification to elements in a profiled FHIR resource. At the time of publication of this implementation guide the only end-product clinical specification supported is TBD (TBD).

The mapping from requirements table below demonstrates the logical decomposition of each requirement to the lowest possible element in an applicable profile. 

## Mapping from eHealth Pathology Report - Information Requirements v1.1 information requirements
This informative section provides mapping from the data items (i.e. requirements) in [eHealth Pathology Report - Information Requirements v1.1 [NEHT2013am]](index.html#NEHT2013am).

The table below matches the data items to the corresponding supported element in the [TBD profile](??) profile, or referenced profile (e.g. [TBD](TBD)). The hierarchy column demonstrates the path to that supported element from the root Composition. 

See the [legend](mappings.html#legend-for-mapping-from-requirements) for information on the columns used to present the mapping content.

<table class="list" width="100%">
	<col style="width:20%"/>
	<col style="width:7%"/>
	<col style="width:20%"/>
	<col style="width:25%"/>
	<col style="width:28%"/>
            <thead>
                <tr>
                    <th>Requirement</th>
                    <th>Req. No</th>
                    <th>Element name</th>
                    <th>Hierarchy</th>
                    <th>Additional notes</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
             </tbody>
</table>               

## Mapping from eHealth Diagnostic Imaging Report - Information Requirements v1.1 information requirements
This informative section provides mapping from the data items (i.e. requirements) in [eHealth Diagnostic Imaging Report - Information Requirements v1.1 [TBD]](index.html#TBD).

The table below matches the data items to the corresponding supported element in the [TBD profile](TBD) profile, or referenced profile (e.g. [TBD](TBD)). The hierarchy column demonstrates the path to that supported element from the root Composition. 

See the [legend](mappings.html#legend-for-mapping-from-requirements) for information on the columns used to present the mapping content.

<table class="list" width="100%">
	<col style="width:20%"/>
	<col style="width:7%"/>
	<col style="width:20%"/>
	<col style="width:25%"/>
	<col style="width:28%"/>
            <thead>
                <tr>
                    <th>Requirement</th>
                    <th>Req. No</th>
                    <th>Element name</th>
                    <th>Hierarchy</th>
                    <th>Additional notes</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
             </tbody>
</table>               

## Legend for mapping from requirements

A mappings from requirements table demonstrates the logical decomposition of each requirement to the lowest possible element in an applicable profile.

<table class="list" width="100%">
	<col style="width:20%"/>
	<col style="width:20%"/>
	<col style="width:20%"/>
	<col style="width:20%"/>
	<col style="width:20%"/>
            <thead>
                <tr>
                    <th>Requirement</th>
                    <th>Req. No</th>
                    <th>Element name</th>
                    <th>Hierarchy</th>
                    <th>Additional notes</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><p>The heading text of the requirement as taken from the requirements specification.</p></td>
                    <td><p>The requirement number as taken from the requirements specification.</p></td>
                    <td>
                        <p>Either the name of the lowest element in a profiled FHIR resource that addresses the requirement or 'N/A' where 
                        the requirement has been deemed not applicable to a FHIR profile.</p>
                       <p>If the lowest possible decomposition is to the resource then only the resource name (e.g. Patient) is present. 
                    If the lowest possible decomposition is to one or more child elements of a FHIR resource then a dot notation is 
                    used to indicate the hierarchical relationship.</p>
                       <p>For example Patient.communication.language indicates 
                    the requirement maps to the language element, that is a child of the communication element, 
                    in the Patient FHIR resource.</p>
                    </td>
                    <td>
                        <p>Either the full hierarchical path from the root FHIR resource (e.g. Composition) to the element 
                    the requirement is mapped to or 'N/A' where the requirement has been deemed not applicable to a FHIR profile.</p>
                        <p>A dot notation is used to demonstrate hierarchy within a FHIR resource.</p>
                        <p>An arrow '<span style="font-family:courier;">&#62;</span>' is used to denote the reference connecting one FHIR resource 
                    to another from the linking element. For example Composition.subject> Patient or Composition.author> Patient.</p>
                    <p>Where a requirement is addressed by multiple elements, the elements are presented in order of appearance in the profiled FHIR resource.</p>
                    </td>
                    <td>
                        <p>Additional notes are provided where a gap between a requirement, or parts of a requirement, and the 
                    profiles is identified. Where a requirement is fully addressed by the mapped elements then no entry in this 
                    column is expected.</p>
                    </td>
                </tr>
             </tbody>
</table>