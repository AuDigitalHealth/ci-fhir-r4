The mappings below provide guidance on how StructureDefinition-dh-patient-core-1 can map to the CDA (R2).

 <table class="grid" width="100%">
            <thead>
                <tr>
                    <th colspan="3">FHIR element name</th>
                    <th>CDA schema element</th>
                    <th>CDA mapping comment</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td rowspan="4" colspan="3">Patient</td>
                    <td>ClinicalDocument/recordTarget</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/recordTarget/patientRole</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/recordTarget/patientRole/id</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/recordTarget/patientRole/patient</td>
                    <td></td>
                </tr>
                <tr>
                    <td rowspan="3"></td>
                    <td rowspan="3" colspan="2">extension (birthPlace)</td>
                    <td>ClinicalDocument/recordTarget/patient/birthplace</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/recordTarget/patient/birthplace/place</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/recordTarget/patient/birthplace/address</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">extension (indigenousStatus)</td>
                    <td>ClinicalDocument/recordTarget/patientRole/patient/ethnicGroupCode</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">extension (interpreterRequired)</td>
                    <td>TBD</td>
                    <td>TBD</td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">extension (dateOfArrival)</td>
                    <td>TBD</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2"> identifier</td>
                    <td>ClinicalDocument/recordTarget/patientRole/patient/ext:asEntityIdentifier</td>
                    <td>TBD - link to data type mappings</td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2"> name</td>
                    <td>ClinicalDocument/recordTarget/patientRole/patient/name</td>
                    <td>TBD - link to data type mappings</td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">telecom</td>
                    <td>ClinicalDocument/recordTarget/patientRole/telecom</td>
                    <td>TBD - link to data type mappings</td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">gender</td>
                    <td>ClinicalDocument/recordTarget/patientRole/patient/administrativeGenderCode</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">birthDate</td>
                    <td>ClinicalDocument/recordTarget/patientRole/patient/birthTime</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>date-accuracy-indicator</td>
                    <td>TBD</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>patient-birthTime</td>
                    <td>TBD</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">address</td>
                    <td>recordTarget/patientRole/addr</td>
                    <td>TBD - link to data type mappings</td>
                </tr>
                <tr>
                    <td></td>
                    <td>communication</td>
                    <td></td>
                    <td>recordTarget/patientRole/patient/languageCommunication</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>language</td>
                    <td>recordTarget/patientRole/patient/languageCommunication/languageCode</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>preferred</td>
                    <td>recordTarget/patientRole/patient/languageCommunication/preferenceInd</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">generalPractitioner</td>
                    <td>ClinicalDocument/participant/@typeCode="PART"</td>
                    <td>Link to participant(generalPractitioner Organization) and
                        participant(generalPractitioner Organization)</td>
                </tr>
            </tbody>
        </table>
