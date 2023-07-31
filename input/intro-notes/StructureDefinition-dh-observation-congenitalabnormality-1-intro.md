This profile identifies the additional constraints, extensions, and value sets that build on and extend [Observation](http://hl7.org/fhir/R4/observation.html) that are supported. 

This profile is designed to set an Observation standard for:
* TBD

This profile may be referred to by APIs, which will be listed here when available.

### Profile specific guidance
TBD

#### Boundaries and relationships
This includes structural and functional anomalies. It includes anomalies that are not impairments.

The equivalent SNOMED CT-AU concept is 66091009\|Congenital disease\|. 

The Australian Institute of Health and Welfare (AIHW) property [Congenital malformation](https://meteor.aihw.gov.au/content/index.phtml/itemId/269324) is similar. However the term "malformation" often includes only structural abnormalities and should be avoided for this wider concept. 

The AIHW concept [Person—congenital malformation](https://meteor.aihw.gov.au/content/index.phtml/itemId/269570) excludes functional abnormalities and abnormalities identified after separation from care. It differs unexpectedly from its source property.

The term "congenital anomaly" is used by WHO, US CDC and Vic Health to mean this concept. Hovever the SNOMED CT-AU concept 276654001\|Congenital anomaly\| (with fully specified name "Congenital malformation (disorder)") includes only structural malformations, so the term "congenital anomaly" should be avoided.

#### Known Issues
This is an observation and the closest relevant SNOMED CT code is a disorder. A different code may be required.