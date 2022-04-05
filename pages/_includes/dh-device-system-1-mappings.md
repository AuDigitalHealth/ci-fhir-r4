Australian Digital Health Agency System Device to Agency CDA Schema author

<table class="grid" width="100%">
            <thead>
                <tr>
                    <th colspan="2">FHIR element name</th>
                    <th>CDA schema element</th>
                    <th>CDA mapping comment</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="2">Device</td>
                    <td>ClinicalDocument/author</td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                    <td>ClinicalDocument/author/assignedAuthor</td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                    <td>ClinicalDocument/author/assignedAuthor/id</td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                    <td>ClinicalDocument/author/assignedAuthor/assignedAuthoringDevice</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>identifier</td>
                    <td>ClinicalDocument/author/assignedAuthor/assignedAuthoringDevice/ext:asEntityIdentifier</td>
                    <td>TBD - link to data type</td>
                </tr>
                <tr>
                    <td></td>
                    <td>identifier:paid</td>
                    <td>ClinicalDocument/author/assignedAuthor/assignedAuthoringDevice/ext:asEntityIdentifier</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>type</td>
                    <td>ClinicalDocument/author/assignedAuthor/code</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td>owner</td>
                    <td>author/assignedAuthor/assignedAuthoringDevice/asMaintainedEntity</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>author/assignedAuthor/assignedAuthoringDevice/asMaintainedEntity/maintainingPerson</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>author/assignedAuthor/assignedAuthoringDevice/asMaintainedEntity/maintainingPerson/ext:asEmployment</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>author/assignedAuthor/assignedAuthoringDevice/asMaintainedEntity/maintainingPerson/ext:asEmployment/@classCode="EMP"</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>author/assignedAuthor/assignedAuthoringDevice/asMaintainedEntity/maintainingPerson/ext:asEmployment/ext:employerOrganization</td>
                    <td></td>
                </tr>
            </tbody>
        </table>