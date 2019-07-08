# Viewing
The content can be viewed by the following means:

## Viewing the raw content in GitHub
The raw files in this repository can be viewed within the GitHub `code` viewing pane. Just navigate to the directory/file that you wish to view. 

For example, to view the raw xml of one of the profiles, click on `resources` and then one of the listed xml files that interest you.

## Viewing the content on your own device
This requires that the repository content be copied onto your device. This may be done either by downloading or cloning.

### Obtaining a local copy of the repository

#### Downloading
To download - click on the `Clone or download` button and then click on `Download ZIP`. Use the dialog box to save to the location of your choice. The zip then needs to be unzipped.

The disadvantage is that the content is a snapshot at the moment of your download action. Any later updates to the repository are therefore not seen, unless a new download is done. The better option, to allow updates to be seen is to clone the repository.

#### Cloning
This option uses the capability of git version control system to obtain any updates on your local device. It does presume a basic understanding of git, which is outside the scope of this readme. For further information on cloning a repository, refer to [this GitHub help page](https://help.github.com/en/articles/cloning-a-repository). Essentially, 
* click on the `Clone or download` button and then copy the URL of this repository (https://github.com/AuDigitalHealth/ci-fhir-stu3.git)
* use your git client of choice to clone to a location on your device

### Viewing content on your device
The raw profile content can be opened in xml-friendly editor or even opened using the Forge application.

#### Viewing the implementation guide as html pages
The FHIR IG publisher generates a set of html files in the respective output folders. These are found in the repository directory `ci-fhir-stu3/output` with a subdirectory for each implementation guide, for example `ci-fhir-stu3/output/SharedHealthSummary/`.

To view in a browser, navigate to the `index.html` file in that folder and open in a browser. To view the standard FHIR layout of a profile, click on the `profiles` tab and choose a particular profile.