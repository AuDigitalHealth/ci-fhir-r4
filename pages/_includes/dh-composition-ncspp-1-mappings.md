The mappings below provide guidance on how Australian Digital Health Agency Document Composition can map to the CDA (R2).

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
                    <td colspan="3">Composition</td>
                    <td>ClinicalDocument</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">identifier</td>
                    <td>ClinicalDocument/setId</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">status</td>
                    <td>ClinicalDocument/ext:completionCode</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">type</td>
                    <td>ClinicalDocument/code</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">category</td>
                    <td>ClinicalDocument</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">subject</td>
                    <td>ClinicalDocument/recordTarget</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">date</td>
                    <td>ClinicalDocument/author/time</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2"> author</td>
                    <td>ClinicalDocument/author</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">title</td>
                    <td>ClinicalDocument/title</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">custodian</td>
                    <td>ClinicalDocument/custodian</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">section</td>
                    <td>ClinicalDocument/component/structuredBody/component/section</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>title</td>
                    <td>ClinicalDocument/component/structuredBody/component/section/title</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>code</td>
                    <td>ClinicalDocument/component/structuredBody/component/section/code</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>text</td>
                    <td>ClinicalDocument/component/structuredBody/component/section/text</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>entry</td>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry</td>
                    <td></td>
                </tr>
            </tbody>
        </table>