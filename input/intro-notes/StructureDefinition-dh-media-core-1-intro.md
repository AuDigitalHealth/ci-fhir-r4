The purpose of this profile is to provide a core representation of a media observation for the electronic exchange of health information between individuals, healthcare providers, and the My Health Record system infrastructure in Australia.

This profile identifies the additional constraints, extensions, and value sets that build on and extend [Media](http://hl7.org/fhir/R4/media.html) that are supported. 

This profile is designed to set a core Media standard for:
* Query for a generic media observation for a patient
* Record or update a generic media observation belonging to a patient

This profile may be referred to by APIs, which will be listed here when available.


### Profile specific guidance
- When generated during a diagnostic examination a Media resource may contain the same identifier in `Media.identifier` as in the order or report connecting the resources that are related to a single request fulfilment workflow.

