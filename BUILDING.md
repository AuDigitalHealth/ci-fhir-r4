# Building this repository

One of the implementation guides in this repository (eg Shared Health Summary) can be built on your local device using the FHIR Implementation Guide publishing tool.

The steps to do this are:

## Clone the repository onto your local device
This option uses the capability of git version control system to obtain any updates on your local device. It does presume a basic understanding of git, which is outside the scope of this readme. For further information on cloning a repository, refer to [this GitHub help page](https://help.github.com/en/articles/cloning-a-repository). Essentially, 
* click on the `Clone or download` button and then copy the URL of this repository (https://github.com/AuDigitalHealth/ci-fhir-r4.git)
* use your git client of choice to clone to a location on your device

## Set up the FHIR IG Publisher tooling
The IG publisher can be downloaded from the FHIR website [here](http://build.fhir.org/downloads.html), as java executable file entitled `org.hl7.fhir.igpublisher.jar`.

Additionally, the IG publisher requires the following supporting tools to be installed:
- ruby with rubygems
- ruby gem `jekyll`
- python 2.x
- python module `pygments`

Refer to the [installation guidance here](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation#Installing)

## Running the IG publisher
The publisher can be run as a GUI application, or run from the command line. 

### Running in GUI mode
1. Simply double click the `jar` application file
1. Click the button 'choose' and locate the repository on your device and open one of the ig controller json files in the root directory eg `ig-sharedhealthsummary-1.json`
1. Then click on the 'execute' button to start the publisher
1. Once complete, the IG can then be viewed

### Running on the command line
1. Open a bash terminal at the root directory of the repository
1. Issue the command, noting that your jar file is likely found at a different location
    ```
    java -jar "/c/work/git/fhir-ig-publisher/org.hl7.fhir.igpublisher.jar" -ig ig-sharedhealthsummary-1.json
    ```
1. A large number of messages/logging is printed to the terminal, which can largely be ignored (unless it fails to run in which case the error messages become useful in troubleshooting).
1. Once complete, the IG can then be viewed

### Viewing the generated output
The IG publisher is configured to generate its content in the `output` folder. Open one of the sub-directories for the particular IG that was run.
Open the file `index.html` in a browser.

## Further information
The official documentation for the IG publisher: http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation
