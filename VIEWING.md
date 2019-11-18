# Viewing an implementation guide
Implementation guides are viewed in a browser but first you must get a copy onto your own computer so the browser can open and navigate properly. 

## Option 1 - getting a zip of an implementation guide
 1. Go back to the [home page](https://github.com/AuDigitalHealth/ci-fhir-r4) of this repository 
 2. Open the folder `output` and notice the included subfolders, one for each implementation guide
 3. Open the folder you are interested in to view, e.g. `EventSummary`
 4. Scroll down to the file `full-ig.zip` and click on it
 5. Click on the `Download` button
 6. Once the zip is downloaded you will need to extract all the files to open and navigate properly
 7. The implementation guide is then ready to be viewed by opening the file `index.html` and double-clicking on it to open it with your (default) browser
 8. The home page will then display
 9. CDA implementation guides associated with each publication in this repository are not automatically included in the `full-ig.zip` file but can be found in the `output` folder of the desired publication. For example the CDA implementation guide for Event Summary can be found here: `ci-fhir-r4/output/EventSummary/DH_xxxx_EventSummary_CDA_IG_v2.0.pdf`.

The disadvantage with downloading a zip is that the content is only up-to-date at the moment of your download action. Any later updates to the repository are therefore not seen, unless a new subsequent download is done. A more advanced option to allow updates to be seen is to "clone" the repository.

## Option 2 - getting a copy of the repository by downloading a 'snapshot'
 1. Go back to the [home page](https://github.com/AuDigitalHealth/ci-fhir-r4) of this repository 
 2. Click on the green `Clone or download` button
 3. Click on `Download ZIP`
 4. Use the standard dialog box to save the zip file to the location of your choice
 5. Once the zip is downloaded you will need to extract all the files to open and navigate properly
 6. Navigate to the folder `output` and notice the included subfolders, one for each implementation guide
 7. Open the folder you are interested in to view, eg `EventSummary`
 8. Scroll down to the file `index.html` and double-click on it to open it with your (default) browser
 9. The home page will then display

The disadvantage with this snapshot is that the content is only up-to-date at the moment of your download action. Any later updates to the repository are therefore not seen, unless a new subsequent download is done. A more advanced option to allow updates to be seen is to "clone" the repository.

## Option 3 - getting a copy of the repository by cloning (advanced)
This option uses the capability of the [git version control system](https://git-scm.com/) to readily obtain any updates to this repository on your computer. It does presume a basic understanding of git, which is outside the scope of this readme.
 1. Go back to the [home page](https://github.com/AuDigitalHealth/ci-fhir-r4) of this repository 
 2. Click on the green `Clone or download` button
 3. Click in the popup box containing the URL of the repository and copy it (which is https://github.com/AuDigitalHealth/ci-fhir-r4.git)
 4. Use your preferred git software (such as [SourceTree](https://www.sourcetreeapp.com/), [GitKraken](https://www.gitkraken.com/git-client) or the git command line tool) to clone this repository to a location on your computer
 5. Navigate to where the repository was cloned
 6. Open the folder `output` and notice the included subfolders, one for each implementation guide
 7. Open the folder you are interested in to view, eg `EventSummary`
 8. Scroll down to the file `index.html` and double-click on it to open it with your (default) browser
 9. The home page will then display

For further information on cloning a repository, refer to [this GitHub help page](https://help.github.com/en/articles/cloning-a-repository).

## Advanced content viewing
Readers wishing to view the native implementation guide content (i.e. the `xml` files), have a number of options. They are:

### Viewing the raw content in GitHub
The input files in this repository can be viewed within the GitHub `code` viewing pane. Note that this does not require that any content be downloaded onto your computer.
 1. Go back to the [home page](https://github.com/AuDigitalHealth/ci-fhir-r4) of this repository
 2. Click on the folder `examples` to see a list of included example xml files, or the `resources` folder to see the list of included profiles
 3. Click on the hyperlink of the file that interests you, noting that the purpose of any particular xml may not be clear from its name
 4. The xml file will then open within the GitHub code viewing pane
 5. Note that all included files may be viewed by this means

### Viewing the raw content within text editor software
All downloaded content, that is text-based (e.g. xml, markdown) may also be viewed with text editor software. For optimal viewing with this approach, xml-aware software such as [Notepad++](https://notepad-plus-plus.org/) or [Oxygen](https://www.oxygenxml.com/) is recommeded. Just navigate to the directory/file that you wish to view. For example, to view the raw xml of one of the profiles, click on `resources` and then one of the listed xml files that interest you.

### Opening profiles with Forge (advanced)
Profiles can be opened with the [Forge application](https://simplifier.net/forge) in order to view the technical constraints applied in the profile. This advanced option requires additional setup, which is:
 1. Clone the [HL7 AU au-fhir-base repository](https://github.com/hl7au/au-fhir-base) onto your computer. This is required as our repositories are technically derived from HL7 AU `au-fhir-base` which must be present on your computer in order for Forge to collect all of the upstream constraints.
 2. A symbolic link must be created between the 2 repositories, specifically from within the `ci-fhir-r4` resources folder to the HL7 AU `au-fhir-base` resources folder. This can be achieved with the following command (executed in an adminstrator-enabled command terminal window and update command with file paths specific to your computer):
```
mklink /D C:\path\to\folder\ci-fhir-r4\resources\link_to_au-fhir-base-r4_resources C:\path\to\folder\au-fhir-base-r4\resources
```
 3. Download the R4 version of [Forge](https://simplifier.net/forge) (for which you will need to first create a logon)
 4. Open Forge and then open profile folder of `ci-fhir-r4\resources`, ensuring that the tickbox 'include subfolders' is ticked
 5. Double click on one of the listed profiles

For further information please refer to the comprehensive [Forge documentation](http://docs.simplifier.net/forge/).
SharedMedicinesList/DH_2936_2020_Shared_Medicines_List_CDA_IG_v1.0.0.pdf