Note: I'm pretty sure I created this page about a week ago, but I can't find it anymore. And it does not appear in the history list. I'm pretty sure I did not dream this.

From my experience with <a href="GeoSciML" class="wikilink">GeoSciML</a>, devil is in the details and detailed Use Cases really saves a lot of discussion. This is just a draft document we can start to polish as we agree on the interoperability scenario.

## CHARACTERISTIC INFORMATION

CASE: serialise <a href="WaterML" class="wikilink">WaterML</a> 2.0 O&M groundwater levels around the Lake superior bassin using data from various sources in USA and Canada. The services must conform to SOS 1.0 (OGC 06-009r6) and support the mandatory methods described in SOS 1.0 specification (<http://portal.opengeospatial.org/modules/admin/license_agreement.php?suppressHeaders=0&access_license_id=3&target=http://portal.opengeospatial.org/files/index.php?artifact_id=26667>).

### Goal in Context

Test the <a href="WaterML" class="wikilink">WaterML</a> 2.0 model and GML encoding to deliver groundwater level data

Test the capability of the model to reference an external schema such as GWML.

Test query cababilities of clients, difficulty of implementing query

Test current server implementation.

### Scope

O&M (OGC 07-022r1) Sampling (OGC 07-002r3) <a href="WaterML" class="wikilink">WaterML</a> 2.0 GWML 1.0 <a href="SensorML" class="wikilink">SensorML</a> (07-000 / 07-122r2) GML 3.1.1

**What is being tested:**

Query model, Sensor description model, O&M model

**Preconditions:**

- Data stores with groundwater levels in USA and Canada.
- SOS 1.0 service that generates <a href="WaterML" class="wikilink">WaterML</a> 2.0
- Client can read capabilities document to extract information
- Client knows how to formulate valid query.
- Client can render result document
  - Client can navigate external reference (ie, featureOfInterest) Q: is this something we want to exercise ?
- <a href="WaterML" class="wikilink">WaterML</a> schemas is network accessible (for validation)
- Provider have a WMS layer for their sensor network

**Success End Condition:**

- User can get a valid Capabilities document
- User can get a valid <a href="DescribeSensor" class="wikilink">DescribeSensor</a> document
- User can get a valid Observation document
- User can navigate to featureOfInterest
- Request result honour filter of request parameters (time range, specific time or extent)

**Failed End Condition:**

- general network of service failure
- invalid document
- false positive or false negatives

## MAIN SUCCESS SCENARIO

- User gets to a web page displays the IE area of interest. (we prepared a test map at : <http://ngwd-bdnes.cits.nrcan.gc.ca/service/api_ngwds/en/wmc/gie.html> )
- User zoom to an area of interest (WMS view of the sensor points is probably the most efficient way to display all the points. WFS would generate too many feature to be handled in a reasonnable time frame)
- User uses the query tool to click to click on one point to extract Observation at this site. (see Issue 1 in Open Issues)
  - Observation is rendered in a HTML page.
  - HTML page contains a link to Sensor description
  - User clicks on Sensor link that returns a <a href="SensorML" class="wikilink">SensorML</a> document about the sensor.
- User zooms to a given area
  - User clicks on 'download' button to get all the Observation in the current <a href="AoI" class="wikilink">AoI</a>
  - Download page appears
  - User is offered to
    - Use the current BBOX and/or (if BBOX check box is not chosen, BBOX parameter is ignored)
    - Use a Time range or a Time instant
    - User is offered a download format (GML, KML,Excel ?)
    - User clicks on "Submit" and download progress is provided. (see Issue \#2)

## RELATED INFORMATION first query

\*Priority: \*

\*Performance Target: \*

how many features? Any

how long to get a response document: \< 5 minutes

\*Frequency: \*

one demo a week

\*Superordinate Use Case: \*

None: This is the general use case

**Subordinate Use Cases:**

- <a href="GetCapabilities" class="wikilink">GetCapabilities</a> : GetCapabilities details
- <a href="GetObservationAtLocation" class="wikilink">GetObservationAtLocation</a> : Get information at a location (single point) when user clicks on a dot.

## OPEN ISSUES

1.  Do we expose a single SOS service that cascade to respective SOS services or so we ask the client to pick the SOS service (pretty much like a layer) prior to querying the dot ?
    1.  Proposal: leave it to 1 layer = 1 SOS service for now
2.  Is the client dealing with sending the request to all SOS services in scope ? We already have a tool to do something like this. Maybe we could reuse it.
3.  O&M Location is not mandatory. To simplify conversion of O&M -\> KML, it should be mandatory in this IE.

## SCHEDULE

Due Date: Moutain View, California, Dec 8th 2009

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 24 Nov 2009

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" date="1259172953" format="1.1" reprev="1.4" version="1.4"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment" class="wikilink">GroundwaterInteroperabilityExperiment</a>"}
