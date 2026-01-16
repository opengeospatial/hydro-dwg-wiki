There are various way we can report a collection of values organised spatially (eg, distributed over an aquifer). Since we use O&M to represent most of our values, we can use om:parameter to attach a location to the observation and repeat as many observations as we need :

example of one of the observation

```
<?xml version="1.0" encoding="UTF-8"?>
<om:OM_Observation gml:id="ab.ww.402557.flow.1"
  xsi:schemaLocation="http://www.opengis.net/om/2.0 http://schemas.opengis.net/om/2.0/observation.xsd"
  xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:swe="http://www.opengis.net/swe/2.0" xmlns:cv="http://www.opengis.net/cv/0.2/gml32"
  xmlns:om="http://www.opengis.net/om/2.0" xmlns:spec="http://www.opengis.net/samplingSpecimen/2.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <gml:description>Flow measurement in a single Observation with a location in om:parameter</gml:description>
  <om:phenomenonTime>
    <gml:TimeInstant gml:id="ab.ww.402557.flow.1.pt">
      <gml:timePosition>2012-05-01</gml:timePosition>
    </gml:TimeInstant>
  </om:phenomenonTime>
  <om:resultTime>
    <gml:TimeInstant gml:id="ab.ww.402557.flow.1.ti">
      <gml:timePosition>2012-05-01</gml:timePosition>
    </gml:TimeInstant>
  </om:resultTime>
  <om:procedure xlink:href="http://www.opengis.net/def/gwml/procedure/flowmeter"
    xlink:title="flow meter" />
  <!-- based on SOS 2.0 http://www.opengis.net/spec/SOS/2.0/req/spatialFilteringProfile -->
  <om:parameter>
    <om:NamedValue>
      <om:name
        xlink:href="http://www.opengis.net/def/param-name/OGCOM/
2.0/samplingGeometry" />
      <om:value>
        <gml:Point gml:id="SamplingPoint">
          <gml:pos srsName="urn:ogc:def:crs:EPSG::4326">52.9 7.52</gml:pos>
        </gml:Point>
      </om:value>
    </om:NamedValue>
  </om:parameter>
  <om:observedProperty
    xlink:href="http://www.opengis.net/def/gwml/phenomenon/flowspeed"
    xlink:title="groundwater flow speed" />
  <!--/req/gwml2-well/waterwell_observation_foi -->
  <om:featureOfInterest xlink:href="#ab.ww.402557"
    xlink:title="ab.ww.402557" />
  <om:result xsi:type="gml:MeasureType" uom="m/s">0.0021</om:result>
</om:OM_Observation>
```

The other way is to use gml:Coverage and use a single observation that reports all the values into a single result (this is essentially what <a href="WaterML" class="wikilink">WaterML</a> does, but values are distributed temporally instead of spatially). This example reports 3 values (you would need to replicate the observation example above 3 times to reproduce this example below). This example uses a subtype of Coverage called **<a href="MultiPointCoverage" class="wikilink">MultiPointCoverage</a>**.

I think the om:parameter value is unnecessary (mistakenly left after a copy and paste perhaps?) as the geometry is provided by om:result. The <a href="WaterML" class="wikilink">WaterML</a> example (<http://www.waterml2.org/>) doesn't use om:parameter.Note also that rather than structuring the result as \<domainSet\> and \<rangeSet\>, these can be delivered as location:value pairs.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 08 Dec 2014

Yes - it was a copy-paste mistake. fixed

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 08 Dec 2014

```
<?xml version="1.0" encoding="UTF-8"?>
<om:OM_Observation gml:id="ab.ww.402557.flow.1"
  xsi:schemaLocation="http://www.opengis.net/om/2.0 http://schemas.opengis.net/om/2.0/observation.xsd"
  xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xlink="http://www.w3.org/1999/xlink"
  xmlns:swe="http://www.opengis.net/swe/2.0" xmlns:cv="http://www.opengis.net/cv/0.2/gml32"
  xmlns:om="http://www.opengis.net/om/2.0" xmlns:spec="http://www.opengis.net/samplingSpecimen/2.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <gml:description>Flow measurement in a single Observation with a location in om:parameter</gml:description>
  <om:phenomenonTime>
    <gml:TimeInstant gml:id="ab.ww.402557.flow.1.pt">
      <gml:timePosition>2012-05-01</gml:timePosition>
    </gml:TimeInstant>
  </om:phenomenonTime>
  <om:resultTime>
    <gml:TimeInstant gml:id="ab.ww.402557.flow.1.ti">
      <gml:timePosition>2012-05-01</gml:timePosition>
    </gml:TimeInstant>
  </om:resultTime>
  <om:procedure xlink:href="http://www.opengis.net/def/gwml/procedure/flowmeter"
    xlink:title="flow meter" />
  <om:observedProperty
    xlink:href="http://www.opengis.net/def/gwml/phenomenon/flowspeed"
    xlink:title="groundwater flow speed" />
  <!--/req/gwml2-well/waterwell_observation_foi -->
  <om:featureOfInterest xlink:href="#ab.ww.402557"
    xlink:title="ab.ww.402557" />
  <om:result>
    <gml:MultiPointCoverage gml:id="cov1">
      <gml:description>example of multipoint coverage of a series of flow
        values. Note that is only one possible encoding, another interesting
        way is to use NetCDF</gml:description>
      <gml:descriptionReference />
      <gml:identifier codeSpace="http://www.example.com/">string</gml:identifier>
      <gml:name>string</gml:name>
      <gml:boundedBy>
        <gml:Envelope>
          <gml:lowerCorner>51 -110</gml:lowerCorner>
          <gml:upperCorner>52 -109</gml:upperCorner>
        </gml:Envelope>
      </gml:boundedBy>
      <gml:domainSet>
        <gml:MultiGeometry gml:id="gid">
          <gml:description>geometries</gml:description>
          <gml:identifier codeSpace="http://www.example.com/">string</gml:identifier>
          <gml:name>string</gml:name>
          <gml:geometryMember>
            <gml:Point gml:id="obs_p1">
              <gml:pos srsName="urn:ogc:def:crs:EPSG::4326">109.5 51.45</gml:pos>
            </gml:Point>
          </gml:geometryMember>
          <gml:geometryMember>
            <gml:Point gml:id="obs_p2">
              <gml:pos srsName="urn:ogc:def:crs:EPSG::4326">109.554 51.31</gml:pos>
            </gml:Point>
          </gml:geometryMember>
          <gml:geometryMember>
            <gml:Point gml:id="obs_p3">
              <gml:pos srsName="urn:ogc:def:crs:EPSG::4326">109.04 51.97</gml:pos>
            </gml:Point>
          </gml:geometryMember>
        </gml:MultiGeometry>
      </gml:domainSet>
      <gml:rangeSet>
        <gml:ValueArray gml:id="v1" uom="m/s">
          <gml:identifier codeSpace="http://www.example.com/">values</gml:identifier>
          <gml:name>values</gml:name>
          <gml:valueComponent>
            <!-- at this point, values can be many things, including a reference 
              to a external file or a free text datablock -->
            <gml:Quantity uom="m/s">0.0021</gml:Quantity>
            <gml:Quantity uom="m/s">0.0109</gml:Quantity>
            <gml:Quantity xsi:nil="true" nilReason="missing" />
          </gml:valueComponents>
        </gml:ValueArray>
      </gml:rangeSet>
      <!-- no coverage function, therefore assume that there is a 1:1 between 
        domain elements and range elements -->
    </gml:MultiPointCoverage>
  </om:result>
</om:OM_Observation>
```

To add more values, just add elements , just add geometryMembers and gml:Quantity.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 28 Oct 2014

Note: There are many variations and encoding for Coverage. For instance, we can also use the "interleave pattern", that encodes the coverage as a collection of geometry-values pairs instead of grouping all the geometries in a single block and then all the results into another block.

##### Standard Coverage

- \<span style="background-color: transparent;"\>Coverage\</span\>
  - \<span style="background-color: transparent;"\>All geometries\</span\>
  - \<span style="background-color: transparent;"\>All values\</span\>
  - \<span style="background-color: transparent;"\>mapping (when there is a 1:1 mapping between geometries and values, it is not required)\</span\>

##### [Interleaved Coverage](IntgerleavedCoverage)

- <a href="DiscreetCoverage" class="wikilink">DiscreetCoverage</a> \<br /\>
  - member
    - geometry
    - value

```
<cv:CV_DiscreteCoverage gml:id="dc1"
xmlns:cv="http://www.opengis.net/cv/0.0"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:gml="http://www.opengis.net/gml"
xsi:schemaLocation="http://www.opengis.net/cv/0.0 ../cv.xsd">

(...)
 <cv:rangeType xsi:type="gml:ReferenceType" xlink:href="http://www.opengis.net/def/gwml/phenomenon/flowspeed"/>
 <cv:element>
  <cv:CV_GeometryValuePair>
    <cv:geometry>
    <gml:Point gml:id="obs_p1">
      <gml:pos srsName="urn:ogc:def:crs:EPSG::4326">109.5 51.45</gml:pos>
    </gml:Point>
    </cv:geometry>
    <cv:value xsi:type="gml:MeasureType" uom="m/s">0.0021</cv:value>
  </cv:CV_GeometryValuePair>
 </cv:element>
```

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 08 Dec 2014

An alternate option is to use a <a href="SamplingFeature" class="wikilink">SamplingFeature</a> to hold the locations, each value is serialized in their own Observation.

\<img alt="many_obs.png" height="130" src="%ATTACHURLPATH%/many_obs.png" width="371" /\>

The following example is a stripped down version, just showing how Observation, <a href="SF_SpatialSamplingFeature" class="wikilink">SF_SpatialSamplingFeature</a> and a <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> are articulated.

```
<?xml version="1.0" encoding="UTF-8"?>
<gml:Bag xmlns:gwml2="http://www.opengis.net/gwml-core/2.0" xmlns:om="http://www.opengis.net/om/2.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sf="http://www.opengis.net/samplingSpatial/2.0" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/om/2.0 http://schemas.opengis.net/om/2.0/observation.xsd http://www.opengis.net/samplingSpatial/2.0 http://schemas.opengis.net/samplingSpatial/2.0/spatialSamplingFeature.xsd http://www.opengis.net/gwml-core/2.0 http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/gwml2-core.xsd" gml:id="b1">
  <gml:member>
    <om:OM_Observation gml:id="o1">
      <om:phenomenonTime/>
      <om:resultTime/>
      <om:procedure/>
      <om:observedProperty/>
      <om:featureOfInterest>
        <sf:SF_SpatialSamplingFeature>
          <sam:sampledFeature>
            <gwml2:GW_AquiferSystem gml:id="aquifer">
            <!-- properties of aquifer system remove for sake of brievity -->
            </gwml2:GW_AquiferSystem>
          </sam:sampledFeature>
          <sf:shape>
            <gml:Point srsName="EPSG:4326" gml:id="p1">
              <gml:pos>64 -112</gml:pos>
            </gml:Point>
          </sf:shape>
        </sf:SF_SpatialSamplingFeature>
      </om:featureOfInterest>
      <om:result/>
    </om:OM_Observation>
  </gml:member>
  <gml:member>
    <om:OM_Observation gml:id="o2">
      <om:phenomenonTime/>
      <om:resultTime/>
      <om:procedure/>
      <om:observedProperty/>
      <om:featureOfInterest>
      <sf:SF_SpatialSamplingFeature>
      <!-- refers to an already serialised aquifer (above) -->
          <sam:sampledFeature xlink:href="#aquifer" xlink:title="Aquifer x"/>
          <sf:shape>
            <gml:Point srsName="EPSG:4326" gml:id="p3">
              <gml:pos>65 -113</gml:pos>
            </gml:Point>
          </sf:shape>
        </sf:SF_SpatialSamplingFeature>
      </om:featureOfInterest>
      <om:result/>
    </om:OM_Observation>
  </gml:member>
  <gml:member>
    <om:OM_Observation gml:id="o3">
      <om:phenomenonTime/>
      <om:resultTime/>
      <om:procedure/>
      <om:observedProperty/>
      <om:featureOfInterest>
      <sf:SF_SpatialSamplingFeature>
          <sam:sampledFeature xlink:href="#aquifer" xlink:title="Aquifer x"/>
          <sf:shape>
            <gml:Point srsName="EPSG:4326" gml:id="p3">
              <gml:pos>65 -112</gml:pos>
            </gml:Point>
          </sf:shape>
        </sf:SF_SpatialSamplingFeature>
        </om:featureOfInterest>
      <om:result/>
    </om:OM_Observation>
  </gml:member>
</gml:Bag>
```

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="reprev" date="1418060064" format="1.1" reprev="5" version="5"}

<!-- -->

- TOPICPARENT{name="29Oct2014--<a href="GW2IEMeeting26" class="wikilink">GW2IEMeeting26</a>"}

<!-- -->

- FILEATTACHMENT{name="many_obs.png" attachment="many_obs.png" attr="" comment="linking many spatially distributed observations" date="1415817798" path="many_obs.png" size="15257" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="2"}
