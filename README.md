# CI FHIR R4 

## Overview
This repository is ‘current state’ of HL7™ FHIR® Release 4 (R4) artefacts authored and maintained by the Clinical Informatics team at the Australian Digital Health Agency. The contents are early working drafts that may have known issues and still be in development. These drafts are available for comment, review, and collaboration. Approved releases for use in implementation and in production systems are published on the Agency’s [developer centre]( https://developer.digitalhealth.gov.au/).

The contents of this repository include:
- FHIR implementation guides, and where available the associated CDA implementation guide
- profiles
- extensions
- example resources conforming to the profiles or extensions
- files necessary to build the FHIR implementation guides e.g. template files


## Structure
This repository has the following structure: 
- a resources folder that holds all StructureDefinition resources (e.g. profiles, extensions)
- an examples folder that holds all example resources
- an output folder that contains subfolders for each FHIR implementation guide containing the actual implementation guide as a downloadable zip and the extracted files
- a pages folder that contains the subfolders for each FHIR implementation guide containing the implementation guide specific markdown files e.g. header and footer
- multiple JSON control files in the root level folder (e.g. ig-sharedhealthsummary-1.json)
- repository files, e.g. .gitignore, README.md and etc.
- implementation guide build files, e.g. base.html, format.html and etc.

 
## How to get started
There are different ways you could interact with this repository; they include:
* [viewing the content](VIEWING.md)
* [raising an issue or query on the content](ISSUES.md)
* [contributing changes to this content](CONTRIBUTING.md)
* [building one of the implementation guides in this repository, using the FHIR IG publisher](BUILDING.md)