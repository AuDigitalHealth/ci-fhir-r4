This profile derives from AU Core and is designed to My Health App requirements for the following functions:
* Record or update a patient's emergency contact(s)

### Profile specific guidance
- A contact is identified as a My Health Record emergency contact through the presence of the [dh-mhr-special-processing-1](StructureDefinition-dh-mhr-special-processing-1.html) extension on `Patient.contact`, with a value of 'emergency-contact'.
- For My Health Record emergency contacts: 
  - `Patient.contact.relationship.coding` is constrained to three types, 'Emergency Contact', 'Next of Kin' and 'Carer'.
  - `Patient.contact.relationship.text` contains additional information about the relationship between the emergency contact and the patient. If the emergency contact type is 'Emergency Contact' or 'Next of Kin', then there shall be an additional description, as shown in the [Emergency Contact](Patient-emergency-contact-john-smith.html) and [Next of Kin](Patient-next-of-kin-jo-lee.html) examples. If the type is 'Carer', there will be no additional description, as shown in the [Carer](Patient-carer-mary-brown.html) example.
  - Two occurrences of `Patient.contact.relationship` are permitted. If an occurrence contains `coding` then it shall not contain `text`. The reverse also applies, i.e. if an occurrence contains `text` then it shall not contain `coding`.
- There are no new constraints on other contacts.

This profile may be referred to by APIs, which will be listed here when available.