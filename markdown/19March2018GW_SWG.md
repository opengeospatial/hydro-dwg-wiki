# **GW SWG Meeting \#6**

# **Orléans OGC TC Meeting**

## Mon 19 March 2018, 1:30 - 4:45 (Paris time)

## **Agenda**

- **1:30-3:00** - Change requests (see below)
- **3:15 - 4:45**- Presentations / Demonstrations
  - Mikael Beaufils (BRGM): <a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> and borehole databases at BRGM
  - Eric Boisvert (GSC): Linked Hydro Data and GWML2 (ppt and live demo)

## **Results**

1.  No change. Issue refers to an old version of GWML2 and is not applicable to the published spec.
2.  Specification change only: add explanatory text to indicate water wells can be traversed from boreholes using O&M.
    - Reconsideration of issue deferred pending developments in borehole standards harmonization.
3.  Changes to specification, schema, schematron rules, instance docs.
    - Remove gwml:result property between <a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> and <a href="GW_GeologyLogCoverage" class="wikilink">GW_GeologyLogCoverage</a> and use om:result singularly for this relation.
      - No instance doc change or implementation changes required, as all known examples and implementations currently use om:result.
    - Add two compact encoding options for <a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> result: SWE xml and block encodings
      - retain <a href="GW_GeologyLogCoverage" class="wikilink">GW_GeologyLogCoverage</a> as a valid option.
      - specification to indicate that it is a requirement (not recommendation) to use one of the three options
        - to provide expected options for software developers
        - communities can develop local profiles for other non-standard encoding options

## **Action Items**

1.  None.
2.  Eric B. to add explanatory text to spec and circulate.for review (31 March 2018)
3.  Eric B. to modify specification, logical and physical schemas, and schematron, and circulate (31 March 2018) Sylvain/Mikael to develop instance examples for added encodings and circulate (13 April 2018)

## **Next steps**

- 13-24 April 2018: review revisions from above
- 24-25 April 2018: telecon to discuss revisions
  - To complete Doodle Poll for availability... [click here](https://doodle.com/poll/7tpcx2n438whb5p3)
  - \| Ottawa 8:00 \| Tuscaloosa 7:00 \| Paris 14:00 \| Melbourne 22:00 \|
- 14 May 2018: submit revision to OGC
- 4-8 June 2018: GW SWG meeting, OGC TC approval (Fort Collins)

## **Connection Instructions**

- Please join the meeting, Mon Mar 19th 8:30 AM EDT: <https://www4.gotomeeting.com/join/668884965>

<!-- -->

- Use your microphone and speakers (VoIP) - a headset is recommended. Or, call in using your telephone:
  - Access Code: 668-884-965
  - Audio PIN will be displayed upon joining the web session.remove
    - AU: +61 2 9087 3604, US: +1 (646) 749-3129, CA: +1 (647) 497-9391, GB: +44 330 221 0088, FR: +33 170 950 594
    - Other: IE: +353 15 360 728, DE: +49 692 5736 7317, NL: +31 207 941 377, FI: +358 923 17 0568, BE: +32 28 93 7018, ES: +34 932 75 2004, NZ: +64 9 280 6302, AT: +43 7 2081 5427, NO: +47 21 93 37 51, SE: +46 853 527 827, IT: +39 0 247 92 13 01, CH: +41 225 4599 78, DK: +45 32 72 03 82

## **Change Requests**

1.  \<span style="background-color: transparent;"\>Typo noticed in an element called "nomi\</span\>**\<u\>c\</u\>**\<span style="background-color: \#f5f5f5; font-size: 12.22px;"\>alScreenDiameter" (with a "c") in a GWML Schema file \</span\> [here](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/wellConstruction.xsd)\<span style="background-color: \#f5f5f5; font-size: 12.22px;"\>. The description in the schema indicates that it is "the nominal screen diameter". The same element name and description appear in \</span\> [the pdf](http://gin.gw-info.net/service/api_ngwds:gin2/en/downloadmanager/dataset.zip?package=gwml&filter=gwml11\.pdf&t=1)\<span style="background-color: \#f5f5f5; font-size: 12.22px;"\> describing the standard. Should the schema and/or documentation be updated so that the element is named "nominalScreenDiameter" (with an "n")?\</span\>
2.  \<span style="background-color: transparent;"\> Provide an association from Borehole to WaterWell \</span\> <http://ogc.standardstracker.org/show_request.cgi?id=508>
    - While <a href="GW_WaterWell" class="wikilink">GW_WaterWell</a> has an association (gwWellConstruction) to link to associated Borehole, there are no link back. Because they both are <a href="SF_SamplingFeatures" class="wikilink">SF_SamplingFeatures</a>, a link can be done using om:relatedSamplingFeature, but this is a different pattern and provide a different route (not consistant) . It must be pointed out that om:relatedSamplingFeature can also be used for <a href="WaterWell" class="wikilink">WaterWell</a> -\>Borehole.We either need a note in spec to advise how to user relatedSamplingFeature for Borehore-\><a href="WaterWell" class="wikilink">WaterWell</a> (prescribed role name) or a new property for consistency.
3.  Change borehole log encoding : <http://ogc.standardstracker.org/show_request.cgi?id=532>
    - The proposed encoding is verbose and forces repetition of large blocks of XML. Need more compact encoding, easier to parse and also imposed indirectly so that records remain consistent along the log (in the other encoding, the <a href="DataRecord" class="wikilink">DataRecord</a> could technically change)
    - There was discussion about how critical the “serialisation” size really is; but encoding geophysics data can be extremely large.
    - Proposal:
      - Relax the requirement that “geology log” uses the <a href="GW_GeologyLogCoverage" class="wikilink">GW_GeologyLogCoverage</a> (but keep it as an option). This will allow to externalise the conformance to community on how they want to encode their data and provide core compact encoding, including swe:<a href="DataArray" class="wikilink">DataArray</a>

\<om:result\>\<br /\> \<swe:<a href="DataArray" class="wikilink">DataArray</a> definition="<http://www.opengis.net/def/gwml/2.0/coverage/geologyLog%22%3E>;\<br /\> \<swe:elementCount\>\<br /\> \<swe:Count\>\<br /\> \<swe:value\>4\</swe:value\>\<br /\> \</swe:Count\>\<br /\> \</swe:elementCount\>\<br /\> \<swe:elementType name="row"\>\<br /\> \<-- row is the name of each row --\>\<br /\> \<swe:<a href="DataRecord" class="wikilink">DataRecord</a> definition="<http://www.opengis.net/def/gwml/2.0/datarecord/earthMaterial>" id="le.1"\>\<br /\> \<swe:field name="from"\>\<br /\> \<-- name of the column --\>\<br /\> \<swe:Quantity definition="<http://www.opengis.net/def/gwml/2.0/observedProperty/depth%22%3E>;\<br /\> \<swe:uom xlink:href="&meter;" xlink:title="m"/\>\<br /\> \</swe:Quantity\>\<br /\> \</swe:field\>\<br /\> \<swe:field name="to"\>\<br /\> \<swe:Quantity definition="<http://www.opengis.net/def/gwml/2.0/observedProperty/depth%22%3E>;\<br /\> \<swe:uom xlink:href="&meter;" xlink:title="m"/\>\<br /\> \</swe:Quantity\>\<br /\> \</swe:field\>\<br /\> \<swe:field name="lithology"\>\<br /\> \<swe:Category definition="<http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial%22%3E>;\<br /\> \<swe:codeSpace xlink:href="<http://resource.geosciml.org/classifierscheme/cgi/201211/simplelithology>" xlink:title="Simple lithology"/\>\<br /\> \</swe:Category\>\<br /\> \</swe:field\>\<br /\> \</swe:<a href="DataRecord" class="wikilink">DataRecord</a>\>\<br /\> \</swe:elementType\>\<br /\> \<swe:encoding\>\<br /\> \<swe:XMLEncoding/\>\<br /\> \</swe:encoding\>\<br /\> \<swe:values xmlns:d="<http://www.opengis.net/def/gwml/2.0/coverage/geologyLog%22%3E>;\<br /\> \<d:row\> \<— note that tag names matched “name” in <a href="DataRecord" class="wikilink">DataRecord</a> see OGC 08-094, clause 9.3.4 for encoding rule--\>\<br /\> \<d:from\>0.0\</d:from\> \<br /\> \<d:to\>0.30\</d:to\>\<br /\> \<d:lithology\>Soil\</d:lithology\>\<br /\> \</d:row\>\<br /\> \<d:row\>\<br /\> \<d:from\>0.30\</d:from\>\<br /\> \<d:to\>4.27\</d:to\>\<br /\> \<d:lithology\>Clay\</d:lithology\>\<br /\> \</d:row\>\<br /\> \<d:row\>\<br /\> \<d:from\>4.27\</d:from\>\<br /\> \<d:to\>9.14\</d:to\>\<br /\> \<d:lithology\>Till\</d:lithology\>\<br /\> \</d:row\>\<br /\> \<d:row\>\<br /\> \<d:from\>9.14\</d:from\>\<br /\> \<d:to\>11.58\</d:to\>\<br /\> \<d:lithology\>Gravel\</d:lithology\>\<br /\> \</d:row\>\<br /\> \</swe:values\>\<br /\> \</swe:<a href="DataArray" class="wikilink">DataArray</a>\>\<br /\>\</om:result\>

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 05 Mar 2018

- TOPICINFO{author="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" comment="reprev" date="1521534384" format="1.1" reprev="8" version="8"}
