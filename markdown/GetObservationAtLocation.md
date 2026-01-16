# Get an Observation at a location

This use case is to get an observation at a specific location. There is a nice BBOX example in OGC 06-009r6 (8.4.5.3) that I have adapted to our situation

## Request

```
<sos:GetObservation 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
  xmlns:gml="http://www.opengis.net/gml" 
  xmlns:ogc="http://www.opengis.net/ogc" 
  xmlns:sos="http://www.opengis.net/sos/1.0" 
  xmlns:om="http://www.opengis.net/om/1.0" 
  xsi:schemaLocation="http://www.opengis.net/sos/1.0 http://schemas.opengis.net/sos/1.0.0/sosAll.xsd" 
  service="SOS" version="1.0.0" srsName="EPSG:4326">
  <sos:offering>urn:GIN:offering:groundwaterLevel:1</sos:offering>
  <sos:observedProperty>urn:ogc:def:property:OGC:GroundWaterLevel</sos:observedProperty>
  <sos:featureOfInterest>
    <ogc:BBOX>
      <ogc:PropertyName>sa:position</ogc:PropertyName>
      <gml:Envelope>
        <gml:lowerCorner>-79 44</gml:lowerCorner>
        <gml:upperCorner>-78 45</gml:upperCorner>
      </gml:Envelope>
    </ogc:BBOX>
  </sos:featureOfInterest>
  <sos:responseFormat>text/xml; subtype=&quot;om/1.0.0&quot;</sos:responseFormat>
  <sos:resultModel xmlns:wml="http://www.wron.net.au/waterml2">wml:WaterMonitoringObservation</sos:resultModel>
  <sos:responseMode>inline</sos:responseMode>
</sos:GetObservation>
```

This asks for all Observation of offering "<urn:GIN:offering:groundwaterLevel:1>" where the Observed property is <urn:ogc:def:property:OGC:GroundWaterLevel> where the location of the wml:<a href="WaterMonitoringObservation" class="wikilink">WaterMonitoringObservation</a> is within -90,45,-89,46.

Interesting note, the srsName is not on the property, but on the root tag (<a href="GetObservation" class="wikilink">GetObservation</a>)

## Result

From the mock up service I implemented on GIN

<http://ngwd-bdnes.cits.rncan.gc.ca/service/api_ngwds/en/sosform.html>

## Issues

- The BBOX request uses the featureOfInterest to constrains the location, which means that the client must have a prior knowledge of what feature is of interest and what is the schema of that feature. Which is a problem. Right now, I'm ignoring the property.

## Implementation in a WMS:<a href="GetFeatureInfo" class="wikilink">GetFeatureInfo</a> context

To query data in a GetFeatureInfo context, we must convert the pixel based request into a real world coordinate.

The simplest way is to create a proxy service that get the GetFeatureInfo, rewrite it in terms of SOS BBOX above and route it to the SOS service.

A <a href="GetFeatureInfo" class="wikilink">GetFeatureInfo</a> query looks like

<http://ngwd-bdnes.cits.rncan.gc.ca/service/gin/wms/mediator/px>? VERSION=1.1.1 &FORMAT=image%2Fpng &LAYERS=<a href="OntarioWaterWell" class="wikilink">OntarioWaterWell</a> &SERVICE=WMS &REQUEST=<a href="GetFeatureInfo" class="wikilink">GetFeatureInfo</a> &STYLES= &EXCEPTIONS=application%2Fvnd.ogc.se_xml &TRANSPARENT=TRUE &SRS=EPSG%3A4326 &BBOX=-90.151733,48.078798,-89.55857,48.519867 &X=416&Y=224 &<a href="INFO_FORMAT" class="wikilink">INFO_FORMAT</a>=text%2Fhtml &<a href="QUERY_LAYERS" class="wikilink">QUERY_LAYERS</a>=<a href="OntarioWaterWell" class="wikilink">OntarioWaterWell</a> &WIDTH=780 &HEIGHT=580

There is basically all the same info than a WMS GetMap request (because the response might want to draw the map along with the data). The important bits are

&BBOX=-90.151733,48.078798,-89.55857,48.519867 (minx,miny,maxx,maxy) &X=416&Y=224 &WIDTH=780 &HEIGHT=580

The real world location can easily be calculated with

- nx = (x / width) \* (maxx - minx) + minx
- ny = ((height - y) / height) \* (maxy - miny) + miny (note that Y axis in pixel is downward)

With this, you can easier rewrite the BBOX request above.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 25 Nov 2009

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" date="1259676907" format="1.1" version="1.4"}

<!-- -->

- TOPICPARENT{name="<a href="ExperimentUseCaseDiscussion" class="wikilink">ExperimentUseCaseDiscussion</a>"}
