# Instance document

## NRCan

Instance document attached to this page.

- [inst_WaterMonitorinObservation_NRCan.xml](%ATTACHURL%/inst_WaterMonitorinObservation_NRCan.xml): NRCan / Ontario instance document
- Document validates using schemas available from SVN (see in trunk\\<a href="GeneratedSchema_June_2010" class="wikilink">GeneratedSchema_June_2010</a>, never mind the import path I use in the instance document, you must get them from SVN)
- Had to copy in new OM2 schemas
- Not much changes beside namespace.
- Must now use URL instead of URN to identify resources
- Optional medata sections to fill
- some minor change in the schema, including adding some mandatory gml:id (were optional in gml 3.1)
- One issue is that this schema uses GML 3.2.1 and GWML is still at gml 3.1.1. This means that if a GWML is serialised inline, you will have a mixture of GML 3.2.1 and GML 3.1.1. In principle, there are no problem from the GML part itself, but I'm not sure about the dependencies (other schemas imported by GWML) that might import different versions of the **same** elements (hence, from different files) prompting the validator to complain that the same tag is declared twice. Anyway, this instance document refers to the <a href="WaterWell" class="wikilink">WaterWell</a> by ref (xlink:href).
- <a href="WaterML" class="wikilink">WaterML</a> 2.0 profile (OGC 10-126 - Req 2, p. 16) requires that featureOfInterest shall be a specialisation of <a href="SP_SamplingFeature" class="wikilink">SP_SamplingFeature</a> (O&M 2). GWML is a O&M 1 SamplingFeature, therefore it is not compliant. It's not a XSD constrain (featureOfInterest is xsd:anyType), but one defined in schematron.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 17 Jun 2010

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" date="1276870131" format="1.1" reprev="1.2" version="1.2"}

<!-- -->

- TOPICPARENT{name="Call2010-05-25"}

<!-- -->

- FILEATTACHMENT{name="inst_WaterMonitorinObservation_NRCan.xml" attachment="inst_WaterMonitorinObservation_NRCan.xml" attr="" comment="NRCan / Ontario instance document" date="1276800751" path="inst_WaterMonitorinObservation_NRCan.xml" size="3038" stream="inst_WaterMonitorinObservation_NRCan.xml" tmpFilename="/tmp/<a href="Blc1AUm9W1" class="wikilink">Blc1AUm9W1</a>" user="Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}
