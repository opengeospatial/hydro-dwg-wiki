# SOS <a href="GetCapabilities" class="wikilink">GetCapabilities</a> conformance for GW IE.

GW IE Profile is now on <a href="GwIeSOSProfile" class="wikilink">GwIeSOSProfile</a>

The rest of this page is kept for archival

This document is to propose a SOS <a href="GetCapabilities" class="wikilink">GetCapabilities</a> document (OGC 06-009r6) encoding best practice when the feature of interest (FOI) of an offering is a large collection of feature. It is important to get it right because SOS response is supposed to be generic (unlike WFS) and understandable by a large set of generic SOS clients. The goal of this best practice is to provide a Capabilities document that can be used by generic client and produce expected behaviour. We already conceded that GW IE SOS couldn't be totally compliant to SOS 1.0 because SOS 1.0 spec demand that observation's feature of interest to be listed in the capabilities document and <a href="WaterML" class="wikilink">WaterML</a> 2.0 states (OGC 10-126) that the featureOfInterest must be <a href="SP_SamplingFeature" class="wikilink">SP_SamplingFeature</a> (see Issue \#1) and therefore, each <a href="WaterML" class="wikilink">WaterML</a> Observation should be linked to a station. The semantic of <a href="WaterML" class="wikilink">WaterML</a> results in a very large number of stations that can't possibly be listed in the Capabilities document (for network performance reason AND for user interface considerations, where a user would need to browse half a millions entries to select a FOI).

On the other hand, the requirements of what FOI should be advertised is not strongly constrained. It essentially says that "feature must include spatial information", ie SOS 1.0 can accept a geographic area as foi (see Table 2, example from B1, p. 75 of OGC 06-009r6). This gives us a bit of elbow room to define what the FOI should be. The goal is to provide a FOI that a generic client can digest. But since the GW IE already deliver <a href="WaterML" class="wikilink">WaterML</a> Observation (a subtype of <a href="OM_Observation" class="wikilink">OM_Observation</a>), it already needs a 'special client' to process it. So the idea of having the special behaviour for GW IE regarding spatial request is not too extravagant.

Some constrains are imposed by the spec, and this best practice document must honour them.

- R1: OGC 06-009r6: Table 4/ featureOfInterest item: says that the query can either be the ID of the feature "advertised in the <a href="GetCapabilities" class="wikilink">GetCapabilities</a>" OR "a spatial query". It implies that the ID here should be advertised. Or we should advertise something and this ID should point to some feature. It does not say if the <a href="GetObservation" class="wikilink">GetObservation</a> has the freedom to serialize an alternative foi.
- R2: OGC 06-009r6 Offering FOI is 1..\*, therefore a at least one FOI is required. For SOS 2.0 Reporting foi is optional. The rule according to SOS 2 DWG is "if there are foi reported, you can use the ID in the request, otherwise, you can't".
- R3: 8.1.6 of OGC 10-126 Req2 : The featureOfInterest of <a href="WaterML" class="wikilink">WaterML</a> Observation shall be <a href="SF_SpatialSamplingFeature" class="wikilink">SF_SpatialSamplingFeature</a> (Issue \#2)
- R4: 9.3 of OGC 10-126 Req 9 : Group of sampling point shall be described using <a href="SampingFeatureCollection" class="wikilink">SampingFeatureCollection</a>

## FOI use cases

FOI is used in two core operations; query observations by FOI and query Observation spatially. The spatial query logic is based on the fact that Observations don't have location, but the FOI does (SOS 2.0 proposes a way to attach a geometry to an Observation through soft-typed parameters but the query semantic is not totally nailed down, see <https://portal.opengeospatial.org/twiki/bin/view/SOS2x0swg/SosSpatialFiltering>). The consequence is that a spatial query (give me all observation in this box) is really a request for all observations attached to FOI that satisfies the spatial request (give me all observation attached to the FOIs in this box). The query must then be written to filter the spatial properties of the FOI. We should expect client that is compliant to SOS to build a query with a ogc:filter statement that uses the FOI spatial property as a property

Eg:

```
<sos:GetObservation xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc"
xmlns:sos="http://www.opengis.net/sos/1.0" xmlns:om="http://www.opengis.net/om/1.0"
xsi:schemaLocation="http://www.opengis.net/sos/1.0 http://schemas.opengis.net/sos/1.0.0/sosAll.xsd"
service="SOS" version="1.0.0" srsName="EPSG:4326">
  <sos:offering>urn:MyOrg:offering:3</sos:offering>
  <sos:observedProperty>urn:ogc:def:property:MyOrg:AggregateChemicalPresence</sos:observedProperty>
  <sos:featureOfInterest>
     <ogc:BBOX>
        <ogc:PropertyName>gml:location</ogc:PropertyName>
        <gml:Envelope>
            <gml:lowerCorner>38.11 -78.6</gml:lowerCorner>
            <gml:upperCorner>38.14 -78.4</gml:upperCorner>
       </gml:Envelope>
    </ogc:BBOX>
  </sos:featureOfInterest>
  <sos:responseFormat>text/xml; subtype=&quot;om/1.0.0&quot;</sos:responseFormat>
  <sos:resultModel>om:Observation</sos:resultModel>
  <sos:responseMode>inline</sos:responseMode>
</sos:GetObservation>
```

(from OGC 06-009r6, section 8.4.5.3)

The spatial property being referenced here is the spatial property of the FOI (gml:location) found in the <a href="GetCapabilities" class="wikilink">GetCapabilities</a> document. How the client knows what property to use is not clear (throught optional <a href="DescribeFeatureType" class="wikilink">DescribeFeatureType</a> ?– but this also implies some important assumptions). In our current implementation, we advertise a single feature that represent the whole network of sampling features. Hence the client application will use this FOI to build the query (see issue \#2)

At this point, nothing prevents the server to interpret this as it sees fit. If we state that a spatial filter on any property (if the service ignores the spatial property) and perform a filter on the <a href="SamplingFeatures" class="wikilink">SamplingFeatures</a>, the operation will achieve what the GW IE expects from the service. Therefore, the request can be successfully processed. The only discrepancy with expected response is that each Observation will link a <a href="SamplingFeature" class="wikilink">SamplingFeature</a> that is different from the

The second option is to retrieve observation from a "known" FOI. Normally, the FOI are list in the <a href="GetCapabilities" class="wikilink">GetCapabilities</a> documents, but in this case, they can't. This raises the question: "where the client is suppose to get this information ?". We expect a generic application to use the published FOI to populate an hypothetical user interface, but since we only publish a single FOI representing the whole network for a given service, the user can only pick this FOI. We can only state at this point that GWIE client should perform a spatial query (either GetObservation or GetFeatureOfInterest) to get a list of FOI, which is a special behavior of GWIE client. The end result is that generic client could not use a 'by FOI' request, but it could use the spatial query (so a generic client is not completly useless).

A third option I saw in some occations seems to be using a "proxy" property to identify a geometry. I could not find documentation about this, but this syntax seems to suggest this.

```
 <featureOfInterest>
      <ogc:BBOX>
         <ogc:PropertyName>urn:ogc:data:location</ogc:PropertyName>
         <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326">
            <gml:lowerCorner>7.0 50.0</gml:lowerCorner>
            <gml:upperCorner>10.0 53.0</gml:upperCorner>
         </gml:Envelope>
      </ogc:BBOX>
   </featureOfInterest>
```

Note the urn in the <a href="PropertyName" class="wikilink">PropertyName</a>, this example is from 52 North (<https://52north.org/twiki/bin/view/Sensornet/GetObservation>).

Another alternative is to use the boundedBy trick. Since all featureOfInterest are obviously gml:Feature, they all have (not mandatory, but in theory is always exists) a gml:boundedBy. This is true for real domain feature as well as SamplingFeatures. Therefore, this syntax should always work

```
 <featureOfInterest>
      <ogc:BBOX>
         <ogc:PropertyName>gml:boundedBy</ogc:PropertyName>
         <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326">
            <gml:lowerCorner>7.0 50.0</gml:lowerCorner>
            <gml:upperCorner>10.0 53.0</gml:upperCorner>
         </gml:Envelope>
      </ogc:BBOX>
   </featureOfInterest>
```

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 19 Oct 2010

## Relation to SOS 2.0

Moving to SOS 2.0 won't solve the problem (and beside, the specification is not out yet).

SOS 2.0 is more lax, it uses "relatedFeature" in the offering instead of FOI, and does not imply it's the O&M feature of interest. It can be a "Feature that is directly or indirectly observed… can be any feature that the service provider thinks the procedure can make valuable observation for." There are some syntactic changes in the operations, but nothing that immediately solves the problem we have with large FOI. The solution we propose here is aligned with SOS 2.0 behavior.

## Proposal

1.  capability shall advertise a feature that represents the network: wml:<a href="SiteNetwork" class="wikilink">SiteNetwork</a> that extend <a href="SamplingFeatureCollection" class="wikilink">SamplingFeatureCollection</a> (wml:<a href="SiteNetwork" class="wikilink">SiteNetwork</a>). (covers R1,R2,R4)
2.  GW IE Response document from <a href="GetObservation" class="wikilink">GetObservation</a> shall return FOI as <a href="SamplingFeature" class="wikilink">SamplingFeature</a> (and not the wml:<a href="SiteNetwork" class="wikilink">SiteNetwork</a>), although the service might also, for consistency, make an explicit link between the <a href="SamplingFeature" class="wikilink">SamplingFeature</a> and wml:<a href="SiteNetwork" class="wikilink">SiteNetwork</a> using <a href="SamplingRelation" class="wikilink">SamplingRelation</a>. (cover R3)
3.  Implement the <a href="DescribeFeatureOfInterest" class="wikilink">DescribeFeatureOfInterest</a> correctly by returning a schema of wml:<a href="SiteNetwork" class="wikilink">SiteNetwork</a> for client application that truly need to access the schema (and fails if it doesn't)
4.  The GW IE client will assume that the spatial property is boundedBy, because the FOI is always a <a href="SamplingFeatureCollection" class="wikilink">SamplingFeatureCollection</a>. Other generic clients will figure something out (which I can't tell), but item 5 shall cover for whatever the client uses.
5.  GW IE Service shall ignore the spatial property requested by the client and perform the filter on whatever is relevant for this specific offering. Generic client that actually manage to read the schema will send the spatial property of wml:<a href="SiteNetwork" class="wikilink">SiteNetwork</a> (which is gml:boundedBy).
6.  For GW IE service, <a href="GetObservation" class="wikilink">GetObservation</a> operation that uses direct reference to feature id,
    1.  If the FID of wml:<a href="SiteNetwork" class="wikilink">SiteNetwork</a> is use, the service shall return an empty set
    2.  If the FID of a sampling feature is use (ie, a <a href="WaterWell" class="wikilink">WaterWell</a> id), the service should honour the request
7.  <a href="GetFeatureOfInterest" class="wikilink">GetFeatureOfInterest</a> should work as expected, according to principles list in \#5 and \#6.
8.  GW IE client should get its list of FOI from a previous <a href="GetObservation" class="wikilink">GetObservation</a> or <a href="GetFeatureOfInterest" class="wikilink">GetFeatureOfInterest</a> using a spatial constrain. This behaviour has the advantage of forcing the client to select an area of interest before extracting data. For point and click operation (click on a well), the <a href="GetFeatureOfInterest" class="wikilink">GetFeatureOfInterest</a> or <a href="GetObservation" class="wikilink">GetObservation</a> is done using a small area around the clicked point.
9.  In <a href="GetObservation" class="wikilink">GetObservation</a> response, FOI shall always be serialised by reference (xlink:href) with a proper xlink:title with a descriptive label ("eg: Ontario <a href="WaterWell" class="wikilink">WaterWell</a> \# xxxx") (See issue \#3)

## Issues

- Issue \#1: <a href="SP_SamplingFeature" class="wikilink">SP_SamplingFeature</a> is O&M 2.0 equivalent of <a href="SamplingFeature" class="wikilink">SamplingFeature</a> in v. 1.0, Note that SOS 1.0 seems to presuppose that response will be O&M 1.0 although the <a href="GetCapabilities" class="wikilink">GetCapabilities</a> document responseFormat Offering parameter can advertise an alternative format as a mime-type sub type. This is an issue with current <a href="WaterML" class="wikilink">WaterML</a> spec (OGC 10-126) identifies GML 3.2.1, and ISO 19156 (a.k.a O&M 2.0) – does it means that SOS must at least support O&M 1.0 (which suppose GML 3.1.1) ?. Another slightly confusing statement, is the resultModel parameter that "must be in the om:Observation substitution group" (OGC 06-009r6, p. 24, Table 2). This can't be taken literally because O&M 2.0 head of substitution is om:<a href="OM_Observation" class="wikilink">OM_Observation</a>. But we'll assume that SOS 1.0 editor could not possibly foresee the change in naming structure.
- Issue \#2: I can't find from the spec how the client is supposed to get the spatial property to use in a spatial query. The only path I can see is through <a href="DescribeFeatureOfInterest" class="wikilink">DescribeFeatureOfInterest</a>. The assumptions here are
  - the client can resolve the whole schema (because the client might have to resolve inheritance if the feature inherits from a parent feature type)
  - the client can locate the spatial property unambiguously, as the feature not be a root property nor be unique, or many spatial property might be reached in the schema by following complex feature relationships)
  - there is only one FOI type for the whole Offering (or all the FOI for this offering are of the same type, or subtype of a common type). If not, the client might have to sought description (schemas) of all FOI and create a big 'OR' request.
- Issue \#3: GWML is still GML 3.1.1 / O&M 1, this means that GWML cannot be serialised in the same document than <a href="WaterML" class="wikilink">WaterML</a>

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 07 Jun 2010

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" date="1288205742" format="1.1" version="1.5"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment" class="wikilink">GroundwaterInteroperabilityExperiment</a>"}
