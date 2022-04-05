
Composition to ClinicalDocument
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
                    <td colspan="2">extension (informationRecipient)</td>
                    <td>ClinicalDocument/informationRecipient</td>
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
                    <td colspan="2">encounter</td>
                    <td>ClinicalDocument/componentOf/encompassingEncounter</td>
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
                    <td colspan="2">attester</td>
                    <td>ClinicalDocument/legalAuthenticator</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>mode</td>
                    <td>n/a</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>time</td>
                    <td>ClinicalDocument/legalAuthenticator/time</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>party</td>
                    <td>ClinicalDocument/legalAuthenticator/assignedEntity</td>
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
                    <td colspan="2">relatesTo</td>
                    <td>ClinicalDocument/relatedDocument</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>code</td>
                    <td>ClinicalDocument/relatedDocument/typeCode</td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>target[x]</td>
                    <td>ClinicalDocument/relatedDocument/parentDocument/id</td>
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
                <tr>
                    <td rowspan="9"></td>
                    <td rowspan="9"></td>
                    <td rowspan="9">emptyReason</td>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry/observation</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry/observation/@classCode="OBS"</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry/observation/@moodCode="EVN"</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry/observation/code</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry/observation/code/@code="ASSERTION"</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry/observation/code/@codeSystem="2.16.840.1.113883.5.4"</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry/observation/code/@displayName=Assertion"</td>
                    <td></td>
                </tr>
                <tr>
                    <td>ClinicalDocument/component/structuredBody/component/section/entry/observation/value:CD</td>
                    <td></td>
                </tr>
            </tbody>
        </table>