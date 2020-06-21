### PractitionerRole with Mandatory Identifier
The purpose of this profile is to define a representation of a practitioner role for exchange usage scenarios in an Australian context, where unambiguous identification of a practitioner in a role is mandatory. This profile is intended to support the electronic exchange of health information between healthcare providers in Australia.

The context for this profile is largely authoring of diagnostic content including observations, reports, and orders.

#### Implementation guidance
For the overarching usage scenarios in this implementation guide it is expected that:
* identifier - if there isn’t a local identifier namespace available then an identifier can be sent with a HPI-O scoped or ABN-scoped identifier namespace (see the FAQ for more information)
* code will be a value equivalent to the author’s professional role, e.g. 309352002 |Neuroendocrinologist|, 40204001 |Haematologist|, or 78729002 |Diagnostic radiologist|
* practitioner will be the performing diagnostic service provider (e.g. specialist, radiologist, pathologist) and will be sent as a reference to a Practitioner resource
* organization will be the employing organisation and will be sent as a reference to an Organization resource

When sending to the My Health Record system it is expected that one identifier is an HPI-I.