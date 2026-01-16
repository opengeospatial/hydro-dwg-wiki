# Switch over from GML 3.1 to GML 3.2

At the last GWIE meeting, we commited to switch from GML 3.1 encoding to GML 3.2. We also decided to keep SOS 1.0 interface because of the limited availability of SOS 2.0 software out there. It is possible in the SOS interface to keep both GML 3.1 and GML 3.2 and select which schema we want during the request (reponseFormat and resultModel parameters). What I suggest is, if possible, to keep supporting both. The default schemas will be GML 3.1 and as we change the tools, we can progressively move to GML 3.2.

Here's a list of short and long term impacts to adapt 3.1 tools to 3.2

## Changes

- Change of GML and O&M dependencies. This means that the namespace will change for the handful of schemas we import. GML itself is essentially the same, except for the namespace. The new gml:identifier is probably the only real noticeable change.
- O&M has a couple of changes
- Usage of HTTP URI that should be resolvable (actually point to something). Formal mechanisms involves using HTTP resolution mechanisms.
  - example: <http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/classifier/gin/groundwater/2010/90> for conglomerate
  - <http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/classifier/CGI/SimpleLithology/201001/sedimentary_rock> for a sedimentary rock
  - More here: <https://www.seegrid.csiro.au/twiki/bin/view/CGIModel/PersistentIdentifiersInGeoSciMLServices>
- GWML won't be embedded in <a href="WaterML" class="wikilink">WaterML</a> 2.0 anymore, because GWML will remain GML 3.1 for now. This means that featureOfInterest will be by reference only (which is not a bad thing). We probably need to discuss how the reference will be exposed.
  - Direct WFS call (<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/wfs/gin?REQUEST=GetFeature&INFO_FORMAT=text/html&FID=yk.ww.201020101>)
  - Using a resolver (<http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.yk.gov.wells.201020101>).
  - Use WFS <a href="GetGMLObject" class="wikilink">GetGMLObject</a> operation (which is also a direct WFS call)
  - direct call does not require any extra machinery while resolver does. But on the other hand, HTTP URI references are also a unique identifier (the whole string) for the feature.
  - this means that client application will need to make a extra call to extract the water well

## Direct impacts to client application

- Current tools on GIN (HTML <a href="GetFeatureInfo" class="wikilink">GetFeatureInfo</a>, Excel, Google Earth) must be modified
- Tools from partners (34 North,Kister) must also be changed
- GIN Download manager must be reviewed (although, we already initiated an architecture change to Download Manager)
- Generic SOS client won't work because they expect GML 3.1 out of SOS 1.0 services.

## Long term impacts

- If we want to keep these service operational, we will have to eventually switch to SOS 2.0 services

## EPSG 4326

The right way to encode EPSG 4326 is y,x but legacy systems still use x,y. It's a similar problem to schemas changes except that flipping the x and y axis does not trigger errors to the unsuspecting client application (unless it actually validates for values beyond -90 and +90 for the expected y axis) which means it's undetectable for North America up to western limit of Great Lakes.

I suggest we bundle that switch with GML 3.2. At least for GIN we will have a way to 1) advertise this change and 2) have a way to tell which is which. Therefore, our GWML GML 3.1 will remain x,y while <a href="WaterML" class="wikilink">WaterML</a> 2.0 will be correct y,x. Considering that GWML won't be embedded in <a href="WaterML" class="wikilink">WaterML</a> 2.0 anyway, we will have a nice "rule" to figure out the axis order (the namespace of GML).

## Suggested action plan

This is a suggested plan to move from GML 3.1 to GML 3.2 without breaking the current GWIE. It essentially implies that both schemas will be available at all time and client application will have to explicitly request GML 3.2 (otherwise, they will get GML 3.1)

- At Oct 5th meeting, prepare all GWIE developers (client and service) for the switch.
- Circulate an instance document encoded in <a href="WaterML" class="wikilink">WaterML</a> 2.0 (see attached) and have a quick agreement (for IE, shall we keep the current <a href="TimeSeries" class="wikilink">TimeSeries</a> encoding ?)
- Implement <a href="WaterML" class="wikilink">WaterML</a> 2.0 GML 3.2 services over existing SOS 1.0 GML 3.1 quicly so client can test it.
  - default service will be GML 3.1 and use responseFormat = text/xml;subtype=om/1.0.0 and resultModel wml:<a href="WaterMonitoringObservation" class="wikilink">WaterMonitoringObservation</a> xmlns:wml="<http://www.wron.net.au/waterml2>"
  - <a href="WaterML" class="wikilink">WaterML</a> 2.0 will be GML 3.2 use responseFormat = text/xml;subtype=om/2.0.0 and resultModel wml:<a href="WaterMonitoringObservation" class="wikilink">WaterMonitoringObservation</a> xmlns:wml="<http://www.wron.net.au/waterml2>"
  - Note that they both have the same namespaces. The service is expected to use responseFormat to figure the version of GML.
  - Also note that prefix can be something different, it's just a proxy for the namespace.
- Implement x,y flip on EPSG 4326
- Progressively alter the tool so they call the om/2.0.0 version
- Declare victory - have a beer
- swith default to GML 3.2 (if necessary)

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 04 Oct 2010

- [inst_WaterMonitorinObservation_NRCan.xml](%ATTACHURL%/inst_WaterMonitorinObservation_NRCan.xml): <a href="WaterML" class="wikilink">WaterML</a> GML 3.2 instance

<!-- -->

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" date="1286465323" format="1.1" version="1.3"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment" class="wikilink">GroundwaterInteroperabilityExperiment</a>"}

<!-- -->

- FILEATTACHMENT{name="inst_WaterMonitorinObservation_NRCan.xml" attachment="inst_WaterMonitorinObservation_NRCan.xml" attr="" comment="<a href="WaterML" class="wikilink">WaterML</a> GML 3.2 instance" date="1286214472" path="inst_WaterMonitorinObservation_NRCan.xml" size="3038" stream="inst_WaterMonitorinObservation_NRCan.xml" tmpFilename="/tmp/<a href="TKj2OvsHJc" class="wikilink">TKj2OvsHJc</a>" user="Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}
