# SOS Implementation profile for GWIE

This document lists the requirement for data providers that wish to participate in OGC GWIE. Most of the requirements are restricted to SOS service but some clauses refer to the implementation of WMS and WFS to support the client application.

- [SoS Requirements](#SosReq)
- [WFS Requirements](#WfsReq)
- [GWIE Requirements](#GwieReq)
- [GWIE Optional and Experiments](#OptExp)

\#<a href="SosReq" class="wikilink">SosReq</a> ------------------------++SOS Requirements \#<a href="UseSos" class="wikilink">UseSos</a>

#### SOS1. GWIE-compliant SOS services SHALL use SOS 1.0 specification, even if the resulting Observation collection is GML 3.2.

By default, the GWIE SOS services will respond with GML 3.2.1. GWIE SOS services may optionally respond in GML 3.1.1 via the responseFormat parameter (in addition to GML 3.2). As examples,

```
     <sos:responseFormat>text/xml;subtype="om/1.0.0"</sos:responseFormat>
```

must be used to request GML 3.1.1 (GML used for OM 1.0.0) while

```
     <sos:responseFormat>text/xml;subtype="om/2.0.0"</sos:responseFormat>
```

can be used to explicitly request GML 3.2 (OM 2.0 is based on GML 3.2), but this is unnecessary since GML 3.2 is the default.

This will also apply to the use of filter encoding in the SOS service \_request\_. The filter encoding specification uses GML 3.1.1 and domain feature must be expressed in 3.1.1 even if the generated response is in 3.2.x The service CAN provide GML 3.1.1 response, but GML 3.2.1 is mandatory for this profile.

The SOS request can use responseFormat to identify the output format

```
     <sos:responseFormat>text/xml;subtype="om/1.0.0"</sos:responseFormat>
```

must be used to request GML 3.1.1 (GML used for OM 1.0.0) while

```
     <sos:responseFormat>text/xml;subtype="om/2.0.0"</sos:responseFormat>
```

can be used to explicitly request GML 3.2 (OM 2.0 is based on GML 3.2), but this is also the default.

\#<a href="UseWaterML2" class="wikilink">UseWaterML2</a>

#### SOS2. GWIE-compliant SOS service SHALL generate SOS response using valid WaterML2.0

The response must be

1.  Req 4.1 XSD Schema valid with WaterML2.0 (which is GML 3.2 and O&M 2.0) [schema](https://svn.sdsc.edu/repo/WaterML/WaterML2.0/trunk) \_permissions needed\_
2.  Req 4.2 Must comply with specific WaterML2.0 profile (OGC 10-126, Taylor 2010) \_TODO: can't find link to this\_
    1.  8.1.8.3 Sampled medium
    2.  others ?

<a href="SamplingFeature" class="wikilink">SamplingFeature</a> requirement is relaxed as GWIE uses a different sampling feature.

\#<a href="UseBothCoverageAndSweCommon" class="wikilink">UseBothCoverageAndSweCommon</a>

#### SOS3. GWIE-compliant SOS service SHALL provide both gml:Coverage and sweCommon encoding.

gml:Coverage shall be returned by default.

The responseFormat parameter shall be used to explicitly request encoding

- \<verbatim\>\<sos:responseFormat\>text/xml;subtype="om/1.0.0"\</sos:responseFormat\>\</verbatim\> returns GML 3.1 using coverage
- \<verbatim\>\<sos:responseFormat\>text/xml;subtype="om/1.0.0";enc=block\</sos:responseFormat\>\</verbatim\> returns GML 3.1 using swe encoding block
- \<verbatim\>\<sos:responseFormat\>text/xml;subtype="om/2.0.0"\</sos:responseFormat\>\</verbatim\> returns GML 3.2 using coverage
- \<verbatim\>\<sos:responseFormat\>text/xml;subtype="om/2.0.0";enc=block\</sos:responseFormat\>\</verbatim\> returns GML 3.2 using swe encoding

\_TODO: Look up official swe common terminology and cite references.\_ sweCommon has three(I think) "sub-encodings" -- xml, csv, and binary. For GWIE, it is required to support the csv style. \_TODO: Look up how one requests the different sub-encodings and make sure what we've specified do is compatible.\_

#### SOS4. GWIE-compliant SOS SHALL support resultType=inline by default

\#<a href="UseFOIReference" class="wikilink">UseFOIReference</a>

#### SOS5. In a SOS response, feature of interest SHALL be by reference as specified in [GWIE1](#UseHttpURI)

\#<a href="UseReturnFOINotCollection" class="wikilink">UseReturnFOINotCollection</a>

#### SOS6. A SOS GetFeatureOfInterest SHALL return the feature of interest and not the collection feature.

While a network (a large collection) might be advertised in the GetCapabilities, GetFeatureOfInterest always return the real feature of interest and never the whole network. Note that the GetFeatureOfInterest API supports a way to get the feature by ID. The only ID the client knows is the ID of the whole network leading to downloading a large collection of feature of interest. If the ID requested is the id of the network, the SOS service SHALL return a empty response / warning message as an exception. Otherwise, if the ID is indeed an ID of a relevant feature of interest, the service should comply.

Note that because of SOS5, the reference to the feature of interest is already explicit, therefore a GWIE compliant client should instead use the explicit reference (SOS5) instead of using GetFeatureOfInterest. This remark also applies to GWIE2 for a FeatureCollection.

\#<a href="UseEPSGPattern" class="wikilink">UseEPSGPattern</a>

#### SOS7. EPSG code shall follow the URN pattern `urn:ogc:def:crs:EPSG:` code

\#<a href="UseEPSGAxisOrder" class="wikilink">UseEPSGAxisOrder</a>

#### SOS8. Axis order for EPSG 4326 SHALL be in x,y order when the response is serialized in GML 3.1 but in y,x order when serialized in a GML version above 3.1.x

As specified in <http://www.ogcnetwork.net/node/491> (08-038r5).

The requirement has been suggested to

1.  progressively pass from x,y to y,x without breaking old application that relies in this axis order and
2.  provide some way for the client application that is aware of both possibility to figure out which one is used (as this cannot be detected from the EPSG code).
3.  This is consistent with existing GML documentation where GML 3.1.1 shows the wrong order and GML 3.2.x shows the right order.

#### SOS8a. Vertical coordinates (depth,...) reporting in EPSG 4326 shall be in meters.

EPSG:4326 is a two dimensional coordinate system, so does not specify how vertical coordinates should be measured. We set this for this profile by agreement, noting that EPSG:4326 is essentially WGS84. WGS84 is a Spherical Mercator projection in use by Google Maps, Microsoft Virtual Earth, and Yahoo Maps (see <http://docs.openlayers.org/library/spherical_mercator.html>). Since Google Maps uses meters when expressing altitude in its maps, we decided to go along with that.

\#<a href="UseSpatialAndTemporalFilter" class="wikilink">UseSpatialAndTemporalFilter</a>

#### SOS9. GWIE-compliant SOS service SHALL support specified spatial filters and temporal filters.

Supported temporal filters

- <a href="TM_During" class="wikilink">TM_During</a>
- <a href="TM_Before" class="wikilink">TM_Before</a>
- <a href="TM_After" class="wikilink">TM_After</a>

Supported spatial filters

- BBOX

\_TODO: Are any more needed? I-Lin doesn't think so\_

#### SOS10. A GWIE-compliant SOS service SHALL interpret eventTime in a temporal request as wml2:<a href="TimeValuePair" class="wikilink">TimeValuePair</a>/wml2:time.

The temporal filter is expressed within an eventTime element. However, which time this actually refers to in the data model is ambiguous -- resultTime, intendedSamplingInterval, phenomenonTime, wml2:domainExtent, or wml2:<a href="TimeValuePair" class="wikilink">TimeValuePair</a>/wml2:time

\#<a href="UseIntelligentLocation" class="wikilink">UseIntelligentLocation</a>

#### SOS11. A GWIE-compliant SOS service SHALL ignore the property name in a spatial request and use whatever makes sense for location of the Observation.

A spatial request, where a series of observation can be filtered using a spatial operator (most commonly a BBOX), should, according to the spec, provide a ogc:Filter where the spatial property is explicit.

```
<sos:GetObservation xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc"
xmlns:sos="http://www.opengis.net/sos/1.0" xmlns:om="http://www.opengis.net/om/1.0"
xsi:schemaLocation="http://www.opengis.net/sos/1.0 http://schemas.opengis.net/sos/1.0.0/sosAll.xsd"
service="SOS" version="1.0.0" srsName="EPSG:4326">
...
...
...
  <sos:featureOfInterest>
     <ogc:BBOX>
        <ogc:PropertyName>gml:location</ogc:PropertyName>
        <gml:Envelope>
            <gml:lowerCorner>38.11 -78.6</gml:lowerCorner>
            <gml:upperCorner>38.14 -78.4</gml:upperCorner>
       </gml:Envelope>
    </ogc:BBOX>
  </sos:featureOfInterest>
...
...
...
</sos:GetObservation>
```

The problems are

1.  the schema of that feature of interest cannot be readily know by the client
2.  the feature of interest can be variable (many feature type used in a single response)
3.  the spatial property might not be a direct property of the feature of interest

To avoid overcomplicating a query that should otherwise be simple, the property provided in a spatial operation SHALL be ignored.

A GWIE compliant client should use

```
  <sos:featureOfInterest>
     <ogc:BBOX>
        <ogc:PropertyName>gml:boundedBy</ogc:PropertyName>
        <gml:Envelope>
            <gml:lowerCorner>38.11 -78.6</gml:lowerCorner>
            <gml:upperCorner>38.14 -78.4</gml:upperCorner>
       </gml:Envelope>
    </ogc:BBOX>
  </sos:featureOfInterest>
```

as a convenient and yet legal and consistent way to spatially filter observations.

#### SOS12. \_Proposed\_ GetObservationResponse shall use gml:<a href="FeatureCollection" class="wikilink">FeatureCollection</a> as response container.

Since the response cannot be SOS 1.0 response because the response is GML 3.2 (SOS 1.0 expect om:<a href="ObservationCollection" class="wikilink">ObservationCollection</a>/om:member/om:Observation from GML 3.1) we must use a GML 3.2 compliant. Since we don't really use SOS 2.0 anywhere, it would be odd to use sos2:<a href="GetObservationResponse" class="wikilink">GetObservationResponse</a>, I suggest we wrap the response in a gml2:<a href="FeatureCollection" class="wikilink">FeatureCollection</a> (I did not find an equivalent to om1:<a href="ObservationCollection" class="wikilink">ObservationCollection</a>).

The other option is to have a WaterML 2 collection.

Suggestion ? \_TODO: Finish discussion. gml2:FeatureCollection seems better to I-Lin than WaterML\_

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 28 Oct 2010

#### \_Proposed\_ SOS13. GWIE compliant SOS service shall implement GetObservationById

See section 10 of OGC 06-009r6. GetObservationById shall also report location following SOS15 \_TODO: Discuss and decide. Fine with I-<a href="Lin_" class="wikilink">Lin_</a>

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 02 Nov 2010

#### SOS14. wml2:<a href="WaterMonitoringObservation" class="wikilink">WaterMonitoringObservation</a>/gml:identifier is mandatory

While gml:identifier is not mandatory in GML, a GWIE compliant service MUST serialize a gml:identifier for each observation. This property must provide a unique identifier for this observation which can eventually be used to identify the observation in a subsequent GetObservationById.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 11 Nov 2010

\#<a href="UseOMParameter" class="wikilink">UseOMParameter</a>

#### SOS15. GetObservation SHALL report spatial location using om:parameter.

As a convenience for application that wants to plot the location of the observation without having to resolve the feature of interest (including all the related schema and performance implications), all Observation SHALL comply with sub –clause 7.13 of OGC 10-025 (Cox, 2010b)

```
<?xml version="1.0" encoding="UTF-8"?>
<om:OM_Observation>
...
  <om:parameter>
    <om:NamedValue>
      <om:name
      xlink:href="http://www.opengis.net/req/omxml/2.0/data/samplingGeometry"/>
      <om:value>
        <gml:Point gml:id="SamplingPoint">
          <gml:pos srsName="urn:ogc:def:crs:EPSG:4326">52.9 7.52</gml:pos>
        </gml:Point>
      </om:value>
    </om:NamedValue>
  </om:parameter>
...
</om:OM_Observation>
```

The complete example can be found at: <https://svn.opengeospatial.org/ogc-projects/sp/swe.umbrella.swg/xsd/om/2.0/examples/spatial_observation1.xml>

(example from SOS 2.0 10-037 Broering et al., 2010)

\#<a href="UseTimeSeries" class="wikilink">UseTimeSeries</a>

#### SOS16. GWIE-compliant SOS results SHALL be encoded as wml2:<a href="TimeSeries" class="wikilink">TimeSeries</a>.

Even when only a single value is returned, it shall be encoded as a time series with one record.

#### SOS17. GWIE-compliant SOS SHALL interpret an Observation as a TimeSeries and interpret Result as an individual measurement within a TimeSeries

Consequences for GetResult:

- GetResult will return only the measurements that match the request criteria
- the results will be returned inside a single wml2:<a href="TimeSeries" class="wikilink">TimeSeries</a>
- if an identifier or id is returned for the <a href="TimeSeries" class="wikilink">TimeSeries</a> per schema requirements, it is an invalid id and should be ignored

Consequences for GetObservation and GetObservationById:

- GetObservation and <a href="GetObservationById" class="wikilink">GetObservationById</a> will return the entire time series if any one of the measurements of the time series match the request criteria.
- if multiple time series are returned, then they should each be in their own TimeSeries element (not merged).
- The identifier or id returned for each of the time series is valid.

\#<a href="WfsReq" class="wikilink">WfsReq</a> --------------------++WFS Requirements

#### WFS1. GWIE WFS services shall use WFS 1.1

#### WFS2. GWIE WFS services shall return GWML:<a href="WaterWell" class="wikilink">WaterWell</a>

\#<a href="GwieReq" class="wikilink">GwieReq</a> --------------------++Miscellaneous GWIE Requirements \#<a href="UseHttpURI" class="wikilink">UseHttpURI</a>

#### GWIE1. External references SHALL be done use HTTP URI and be fully resolvable

External references (ie, `xlink:href`) must be expressed using a HTTP URI as defined in Cox 2010a and suggested in <http://www.cabinetoffice.gov.uk/media/308995/public_sector_uri.pdf>. As part of the resolution, the correct mime type should be returned

For example, a WaterML2.0 Observation pointing to a featureOfInterest would use

```
     <om:featureOfInterest xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.1100001" xlink:title="Water well 1100001"/>
```

It is **strongly recommended** that `xlink:title` be used along with `xlink:href` as an aid to clients applications.

\_TODO: discuss. OK with I-Lin. OK with Eric?\_ By default, it is assumed that the external reference returns xml by default. If either

- the reference does not return xml
- the reference does not return xml by default but may do so by standard HTTP content negotiation (as in the above link) as described in section 3.3 of Cox (2010a)

then it is **strongly recommended** that a nonempty `xlink:role` be used as an indicator of this behavior.

Otherwise, regular WFS requests are also valid for external references to features

```
     <om:featureOfInterest xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/wfs/gin?REQUEST=GetFeature&amp;INFO_FORMAT=text/html&amp;FID=ont.ww.1100001" xlink:title="Water well 1100001"/>
```

\#<a href="UseSingleCollection" class="wikilink">UseSingleCollection</a>

#### GWIE2. Large collection of featureOfInterest in <a href="GetCapabilities" class="wikilink">GetCapabilities</a> Offering SHALL be advertised as a nested FeatureCollection.

\_TODO: Need link to statement of problem\_

Instead of a long list of features of interest, the <a href="GetCapabilities" class="wikilink">GetCapabilities</a> offering section should report a reference to a nested <a href="FeatureCollection" class="wikilink">FeatureCollection</a>. The reference itself as well as references within the nested collection SHALL conform to GWIE1 and additionally indicate that it points to a `gml:FeatureCollection` by using xlink:role="<http://www.opengis.net/gml/FeatureCollection>"

```
    <sos:featureOfInterest xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/Ontario/WaterWellNetwork" xlink:title="Ontario Water well network" xlink:role="http://www.opengis.net/gml/FeatureCollection"/>
```

The first referenced document shall be a `gml:FeatureCollection` with mandatory child elements

- `gml:description`
- `gml:name`
- `gml:boundedBy` containing
  - `gml:EnvelopeWithTimePeriod`
  - `gml:lowerCorner`
  - `gml:upperCorner`
  - at least one `gml:timePosition`

In the example below, the second `gml:name` element is optional, as is the second `gml:timePosition`. When only one `gml:timePosition` is given, that value will be interpreted as the lower temporal bound.

```
<?xml version="1.0" encoding="UTF-8"?>
<gml:FeatureCollection xmlns:gml="http://www.opengis.net/gml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" gml:id="ontario.waterwellnetwork" xmlns:xlink="http://www.w3.org/1999/xlink"
xsi:schemaLocation="http://www.opengis.net/gml http://schemas.opengis.net/gml/3.1.1/base/gml.xsd">
   <gml:description>Feature that represents the collection of water well where water level measurements are available</gml:description>
   <gml:name codeSpace="urn:ietf:rfc:2141">urn:GIN:feature:Ontario:WaterWellNetwork</gml:name>
   <gml:name codeSpace="http://www.ietf.org/rfc/rfc2616">http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/Ontario/WaterWellNetwork
   </gml:name>
   <gml:boundedBy>
  <gml:EnvelopeWithTimePeriod srsName="urn:ogc:def:crs:EPSG:4326">
    <gml:lowerCorner>-95.19 41.6</gml:lowerCorner>
    <gml:upperCorner>-74.19 56.92</gml:upperCorner>
    <gml:timePosition frame="#ISO-8601">1899-05-16T00:00:00.0</gml:timePosition>
    <gml:timePosition frame="#ISO-8601">2009-12-30T00:00:00.0</gml:timePosition>
  </gml:EnvelopeWithTimePeriod>
    </gml:boundedBy>
    <gml:featureMember xlink:href="..." xlink:role="..."/>
</gml:FeatureCollection>
```

The `gml:FeatureCollection='s children =gml:featureMember` may themselves refer to FeatureCollection via `xlink:href`, or they may refer to a single feature via a resolvable http url. In either case, they are subject to GWIE1. Furthermore, they must indicate whether they point to a `!FeatureCollection` or a feature by the value of =xlink:role="<http://www.opengis.net/gml/FeatureCollection>" or =xlink:role="<http://www.opengis.net/gml/Feature>". Any referenced `!FeatureCollection` must obey the same conditions as those for the first referenced <a href="FeatureCollection" class="wikilink">FeatureCollection</a> document above.

The required `gml:EnvelopeWithTimePeriod` element provides temporal bounds and approximate spatial bounds. If more precise spatial bounds are desired, they may be provided as follows

```
  TODO: provide example
```

Note that a smaller set of feature of interest should remain directly in the Offering section.

#### GWIE3. All optional extensions (KVP, GetProfile, FilterCapabilities...) MUST be advertised in the GetCapabilities

\#<a href="OptExp" class="wikilink">OptExp</a> --------------------++Optional and Experimental Profile Points

#### Opt1. It is strongly recommended that a GWIE-compliant WFS return gwml:logElement with well construction information within gwml:<a href="WaterWell" class="wikilink">WaterWell</a>

\#<a href="GetObsKVP" class="wikilink">GetObsKVP</a>

#### Opt2. It is strongly recommended that a GWIE-compliant SOS implement a KVP version of GetObservation with standard parameter names.

The SOS specification does not specify a KVP GetObservation, so this point is out-of-spec. Nonetheless, we feel that this is an oversight, and we feel that any OGC service which does not change server state should have a simplified KVP version (simplified in the sense that service features such as OGC:Filter are reserved for the standard XML post version).

For SOS GetObservation, we recommend the following KVP parameters:

- bbox
- featureId (of the related sensor/site featureOfInterest)
- beginPosition and endPosition time parameters (sensitive only up to date)

When both populated, the beginPosition and endPosition are handled as they are within a <a href="TM_During" class="wikilink">TM_During</a> element. When either beginPosition or endPosition are omitted, the parameters are handled as if a <a href="TM_Before" class="wikilink">TM_Before</a> or <a href="TM_After" class="wikilink">TM_After</a> were submitted, respectively.

```
<ows:Operation name="GetObservation">
      <ows:DCP>
        <ows:HTTP>
          <ows:Post xlink:href="http://serviceUrl/sos"/>
          <ows:Get xlink:href="http://serviceUrl/sos?/>
        </ows:HTTP>
      </ows:DCP>
    </ows:Operation>
```

#### Opt3. It is strongly recommended that a GWIE-compliant SOS implement a KVP version of GetObservationById

See [above](#GetObsKVP) for rationale.

<span class="twiki-macro ICON">warning</span> Conformance class under discussion

The SOS 1.0 spec does not specify a KVP implementation for GetObservationById For SOS GetObservationById, we recommend the following KVP parameters:

- observationId (the value of SOS14)
- beginPosition and endPosition time parameters (sensitive only up to date)

While this functionality is in principle the responsibility of GetResult, the actual usage protocol of GetResult involves multiple invocations and requires the server to remember state, and thus incompatible with KISS principles.

#### Opt5. It is recommended that a GWIE-compliant WFS and SOS implement a (nonstandard) form post version call using the parameter "xml"

For the client, posting via a form is easier than posting with XML in the HTTPBody. This is especially useful when providing example invocations of the service.

#### Opt6. It is recommended that a GWIE-compliant SOS implement a maxObservations similar to the way that maxFeatures is implemented for WFS

```
     <sos:GetObservation version="1.0.0" service="SOS" srsName="urn:ogc:def:crs:EPSG:4326" maxObservations="200">
```

Note that for those implementations which parse or create the request according to a schema, this requires altering the SOS schema and is a large change, so it is optional. However, otherwise it is important enough to be a requirement.

#### Opt7. It is recommended that a GWIE-compliant SOS implement a resultType parameter with "hits" and "results" similar to the way that resultType is implemented for WFS

#### Opt8. It is strongly recommended that a GWIE-compliant SOS implement comparison operations under the resultType parameter

\_TODO: show example\_

- <a href="PropertyIsEqualTo" class="wikilink">PropertyIsEqualTo</a>
- <a href="PropertyIsLessThan" class="wikilink">PropertyIsLessThan</a>
- <a href="PropertyIsNotEqualTo" class="wikilink">PropertyIsNotEqualTo</a>
- <a href="PropertyIsGreaterThan" class="wikilink">PropertyIsGreaterThan</a>
- <a href="PropertyIsLessThanOrEqualTo" class="wikilink">PropertyIsLessThanOrEqualTo</a>
- <a href="PropertyIsGreaterThanOrEqualTo" class="wikilink">PropertyIsGreaterThanOrEqualTo</a>
- <a href="PropertyIsBetween" class="wikilink">PropertyIsBetween</a>

#### Opt9. It is strongly recommended a GWIE-compliant SOS extend the comparison operations to include a @units attribute

Of all the OGC Filter Encodings, only the `<Distance>` element has a @units attribute. We believe this is an oversight, as physical quantities need units to be meaningful. In order to make <a href="FilterEncoding" class="wikilink">FilterEncoding</a> meaningful for physical quantities.

- Each of the <a href="ComparisonOp" class="wikilink">ComparisonOp</a> elements should have its own @units attribute
- <a href="GetCapabilities" class="wikilink">GetCapabilities</a> should advertise a list of units it accepts. It's undetermined whether this should be a single section, or specified by property.
- The first of the <a href="GetCapabilities" class="wikilink">GetCapabilities</a> list of units should be the default unit when the <a href="FilterEncoding" class="wikilink">FilterEncoding</a> element does not specify a @unit value

#### Exp1. GetProfile service

We're experimenting with a GetProfile service that may prove to have interesting applications. If the GWIE gets extended or renewed, we'll try to develop this concept further. \_TODO: Provide a link to further discussion page\_\_

# References

- Broering A., Stasch C. , Echterhoff , J., eds, 2010, OGC® SOS 2.0 Interface Standard, Open Geospatial Consortium, OGC 10-037, version 2.0, 124 pages
- Cox, S. 2010a, OGC Identifiers – the case for http URIs, Open Geospatial Consortium, OGC 10-124, version 2.0, 12 pp.
- Cox, S. 2010b, Observations and Measurements - XML Implementation,Open Geospatial Consortium, OGC 10-025, version 2.0, 77 pp.
- Taylor, P. ed. 2010 , OGC® WaterML2.0: An O&M profile for water observations data, Open Geospatial Consortium, OGC 10-126, version 0.1.0, 83 pages.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 19 Oct 2010

- TOPICINFO{author="<a href="IlinKuo" class="wikilink">IlinKuo</a>" date="1290617180" format="1.1" version="1.26"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment" class="wikilink">GroundwaterInteroperabilityExperiment</a>"}
