#### Health Program Participation Observation
DESIGN NOTE: This profile and the linked examples demonstrate outcomes of design meetings 02 and 08 FEB 2022. These are intended to be used only for design elaboration activities and is reflective of the proposed HL7 AU structure. ADHA profile will derive and constrain to support project-specific NCSR to MHR integration requirements.

The purpose of this profile is to provide a representation of an individual's participation in a health program, e.g. disease screening or substance use therapy. Participation information may include information on an individual's eligibility for a program, suspension of participation in a program, or status of participation in a program.. 

This profile standardises the core, or common set of health program participation information as component observations. The currently available set of component observations includes some alignment with the data set for monitoring public health program participation, e.g. [National Bowel Cancer Screening Program NBEDS 2022–23](https://meteor.aihw.gov.au/content/index.phtml/itemId/742048).

DESIGN NOTE: Query for Observation.category - current discusasion indicates that 'therapy' or 'social history' are closest fit from existing [Observation Category Codes](http://build.fhir.org/valueset-observation-category.html) but these are not ideal. Proposal is to extend the HL7 Int set of concepts with a localised concept for health programs including treatment programs and prevention programs. Proposed concept is 'program' with definition 'Observations that describe an individual's participation in one or more health programs such as treatment or prevention or public health (e.g. disease screening or substance use therapy)'.

