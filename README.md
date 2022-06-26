# CI FHIR R4 

## Overview
This repository is ‘current state’ of HL7™ FHIR® Release 4 (R4) artefacts authored and maintained by the Clinical Informatics team at the Australian Digital Health Agency. The contents are early working drafts that may have known issues and still be in development. These drafts are available for comment, review, and collaboration. Approved releases for use in implementation and in production systems are published on the Agency’s [developer centre]( https://developer.digitalhealth.gov.au/).

The contents of this repository include:
- FHIR implementation guides, and where available the associated CDA implementation guide
- profiles
- extensions
- example resources conforming to the profiles or extensions
- files necessary to build the FHIR implementation guides e.g. template files
 
### See the latest live content via the continuous integration build of the [Australian Digital Health Agency FHIR Implementation Guide](https://build.fhir.org/ig/AuDigitalHealth/ci-fhir-r4/).

## Structure
This repository has the following structure: 
- a resources folder that holds all StructureDefinition resources (e.g. profiles, extensions)
- an examples folder that holds all example resources
- a pages folder that contains the FHIR implementation guide containing the implementation guide specific markdown files e.g. header and footer
- a JSON control file in the root level folder
- repository files, e.g. .gitignore, README.md and etc.
- implementation guide build files, e.g. base.html, format.html and etc.

 
## How to view the content
To view the latest continuous build version of the implementation guide.
1. Open the following link in a browser: https://build.fhir.org/ig/AuDigitalHealth/ci-fhir-r4/

To view the input files in this repository can be viewed within the GitHub `code` viewing pane.
1. Click on the folder `examples` to see a list of example xml files, or the `resources` folder to see the list of profiles
2. Click on the hyperlink of the file that interests you
3. The xml file will then open within the GitHub code viewing pane

## How to raise an issue, request an enhancement or ask a question
As a first step you should search the [open issues](https://github.com/AuDigitalHealth/ci-fhir-r4/issues?q=is%3Aopen) and [closed issues](https://github.com/AuDigitalHealth/ci-fhir-r4/issues?q=is%3Aclosed) to see if the issue has already been reported (it may also be fixed).

If you can't find an issue that matches what you're seeing, open a new issue and select from the following two options:

1. Bug report - automatically populated with a [template](.github/ISSUE_TEMPLATE/bug_report.md) for the information to be submitted with a bug report.
2. Issue or new feature - automatically populated with a [template](.github/ISSUE_TEMPLATE/issue_or_new_feature.md) for the information to be submitted with an issue / new feature.

If the issue is not related to either of the above, please just delete the template and replace it with a detailed description of the problem you are trying to solve, or the question being asked.

Please provide us with enough information to investigate further.

## How to contribute a change to this content
Thanks for your interest in contributing to this project.

### Workflow
* [Fork this project](https://help.github.com/articles/fork-a-repo/) to your
 GitHub account
* [Create a branch](https://help.github.com/articles/creating-and-deleting-branches-within-your-repository) 
for the change you intend to make
* Make your changes to your fork
* [Send a pull request](https://help.github.com/articles/using-pull-requests/) from your fork’s 
branch to our `master` branch. 

New pull requests within this project's repository are pre-populated with a [checklist](PULL_REQUEST_TEMPLATE.md) that describes the Definition of Done that we assess all new changes against. It is ok to submit a pull request that has not yet addressed all of these items, but be aware that the change will not be merged until it meets the Definition of Done.

Please communicate with us (preferably through creation of an issue) before embarking on any significant work within a pull request. This will prevent situations where people are working at cross-purposes.

### Code of conduct

Before making a contribution, please read the
[code of conduct](CODE_OF_CONDUCT.md).