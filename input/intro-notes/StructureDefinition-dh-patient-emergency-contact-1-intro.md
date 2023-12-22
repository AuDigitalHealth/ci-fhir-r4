This profile derives from AU Core and is designed to My Health App requirements for the following functions:
* Record or update a patient's emergency contact(s)

### Profile specific guidance
- `Patient.contact.relationship.coding` is constrained to three types, 'Emergency Contact', 'Next of Kin' and 'Carer'.
- `Patient.contact.relationship.text` contains additional information about the relationship between the emergency contact and the patient. It shall not be empty when the type is 'Emergency Contact' or 'Next of Kin', as shown in the [Emergency Contact](Patient-emergency-contact-john-smith.html) and [Next of Kin](Patient-next-of-kin-jo-lee.html) examples. There is no provision to record text when the type is 'Carer', as shown in the [Carer](Patient-carer-mary-brown.html) example.
- A Patient instance shall not have `Patient.contact.relationship.text` as the only relationship element.
- Two occurrences of `Patient.contact.relationship` are permitted. If an occurrence contains `coding` then it shall not contain `text`. The reverse also applies, i.e. if an occurrence contains `text` then it shall not contain `coding`.
- The [dh-mhr-emergency-contact-flag-1](StructureDefinition-dh-mhr-emergency-contact-flag-1.html) extension is used to indicate that `Patient.contact.relationship.text` is emergency contact information.

This profile may be referred to by APIs, which will be listed here when available.