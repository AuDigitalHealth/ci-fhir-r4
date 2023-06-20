> <p style="color:#ff0000;">This material is under active development and content may be added or updated on a regular basis.</p>

### Identifier systems

The following identifier systems are defined using a [NamingSystem](http://hl7.org/fhir/R4/namingsystem.html) resource and form part of this implementation guide.

Identifier systems are for use in the system element of the [Identifier](http://hl7.org/fhir/R4/datatypes.html#Identifier) data type. If a URI is defined here, it **SHALL** be used in preference to any other identifying mechanism. If an identifier system is not listed here, the correct URI may be determined by working through the following list, in order:
* HL7 AU Base Implementation Guide for the associated Identifier profile
* the HL7 OID Registry or International OID Registry
* the documentation associated with the identifier
* consulting the owner of the identifier
* requesting advice from the Australian Digital Health Agency

<table class="list" width="100%">
    <tr>
        <th>NamingSystem</th>
    </tr>
    <tr>
        <td><a href="NamingSystem-ihi.html">Australian Individual Healthcare Identifier (IHI)</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-hpi-i.html">Australian Healthcare Provider Identifier - Individual (HPI-I)</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-hpi-o.html">Australian Healthcare Provider Identifier - Organisation (HPI-O)</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-dva.html">Australian Department of Veterans’ Affairs (DVA) file number</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-crn.html">Centrelink Customer Reference Number (also referred to as unique identifier number (UIN))</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-lspn.html">Location Specific Practice Number</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-medicarenum.html">Medicare Card Number</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-medicareprovidernum.html">Medicare Provider Number</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-pai-d.html">My Health Record Assigned Identity - Device (PAI-D)</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-pai-o.html">My Health Record Assigned Identity - Organisation (PAI-O)</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-pai-r.html">My Health Record Assigned Identity - Repository (PAI-R)</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-pbsprescribernum.html">Pharmaceutical Benefits Scheme (PBS) Prescriber Number</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-phan.html">Pharmacy Approval Number</a></td>
    </tr>
    <tr>
        <td><a href="NamingSystem-racs.html">Residential Aged Care Service identifier</a></td>
    </tr>
 </table>