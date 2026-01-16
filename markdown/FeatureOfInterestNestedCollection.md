# Feature of Interest nested collection

When dealing with very large collection of feature of interest, there is not only a difficulty in transfering the complete collection to the user because of it size in megabytes, but also because of the large amount features. The goal of transfering this list is to let the user select a feature of interest. Clearly, asking a use to pick a feature of interest out of a list of several thousands is not practical.

Two strategies are used in the GWIE to allow the user to select a feature of interest. The first is architectural, where a WMS layer depicting the locations of the feature of interest is provided and the request to SOS is done using the spatial location. The second method, that we propose here, it to provided a way to navigate a large list of feature of interest using an organised nested list of collections.

The principe is quite simple: The feature of interest listed in the offering is a URL to a collection (gml:<a href="FeatureCollection" class="wikilink">FeatureCollection</a>) of feature of interest OR URL references to other collections. When the number of feature of interest is reasonable, the features are listed direction in the collection. On the other hand, if the content of the collection is too large, it must be further partionned into more collections. The client application is only provided with feature collection containing a list of feature of interest and/or links to more collections. This nested collection is navigated by the client by drilling further down the collection until the feature of interest is found.

This example is a nested collection based on administrative units.

```
<gml:FeatureCollection xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/gml http://schemas.opengis.net/gml/3.1.1/base/gml.xsd" xmlns:xlink="http://www.w3.org/1999/xlink"> 
        <gml:boundedBy> 
                <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326"> 
                        <gml:lowerCorner>41.6 -95.19</gml:lowerCorner> 
                        <gml:upperCorner>56.92 -74.19</gml:upperCorner> 
                </gml:Envelope> 
        </gml:boundedBy> 
  <gml:description>The features of interest are provided in a nested collection of features based on their administrative unit.  The top most level is state or province and it will further split into district/counties or townships, town or comté, municipalités.  For very dense collection, it can be sub divided into neighbourhoud or even arbitrary units.
 <gml:name codeSpace="urn:x-gwie:featureCollection:nesting">Administrative units</gml:name>
        <gml:featureMember> 
                <gml:FeatureCollection gml:id="Ont"> 
                         <gml:name>Province of Ontario, Canada</gml:name>
                        <gml:boundedBy> 
                                <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326"> 
                                        <gml:lowerCorner>41.6 -95.19</gml:lowerCorner> 
                                        <gml:upperCorner>42.96 -84.69</gml:upperCorner> 
                                </gml:Envelope> 
                        </gml:boundedBy> 

<!-- let's pretend that there are few feature of interest in Ontario.  They are listed directly in the collection --->
                      <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100828" xlink:title="3100828"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100829" xlink:title="3100829"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101951" xlink:title="3101951"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101952" xlink:title="3101952"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101953" xlink:title="3101953"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101954" xlink:title="3101954"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101984" xlink:title="3101984"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101985" xlink:title="3101985"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101986" xlink:title="3101986"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.7044875" xlink:title="7044875"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3104389" xlink:title="3104389"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100649" xlink:title="3100649"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100650" xlink:title="3100650"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100652" xlink:title="3100652"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100654" xlink:title="3100654"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100655" xlink:title="3100655"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100659" xlink:title="3100659"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100660" xlink:title="3100660"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100661" xlink:title="3100661"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100662" xlink:title="3100662"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100663" xlink:title="3100663"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100506" xlink:title="3100506"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100507" xlink:title="3100507"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100508" xlink:title="3100508"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100666" xlink:title="3100666"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3100830" xlink:title="3100830"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101550" xlink:title="3101550"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101651" xlink:title="3101651"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101652" xlink:title="3101652"/>
                              <gml:featureMember xlink:href="http://ngwd-bdnes.cits.nrcan.gc.ca:8080/Reference/uri-cgi/feature/gsc/waterwell/ca.on.gov.wells.3101729" xlink:title="3101729"/>
                </gml:FeatureCollection> 
        </gml:featureMember> 
          <gml:featureMember> 
                <gml:FeatureCollection gml:id="MI"> 
                        <gml:name>State of Michigan, U.S.A</gml:name>
                        <gml:boundedBy> 
                                <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326"> 
                                        <gml:lowerCorner>41.72 -90.4167</gml:lowerCorner> 
                                        <gml:upperCorner>48.30 -82.00</gml:upperCorner> 
                                </gml:Envelope> 
                        </gml:boundedBy> 

                        <gml:featureMember xlink:href="http://URL_to_get_more?fcid=Man" xlink:title="Manitoba" xlink:role="http://www.opengis.net/gml/FeatureCollection"/> 
                        <!-- The document retrieved is a FeatureCollection. That FeatureCollection may list all its individual wells (which is still likely to be too many) or 
                instead take the nesting one level further and list the featureMember xlinks for each of the districts/counties/subdivisions--> 
                </gml:FeatureCollection> 
        </gml:featureMember> 
          <gml:featureMember> 
                <gml:FeatureCollection gml:id="MN"> 
                        <gml:name>State of Minnesota, U.S.A</gml:name>
                        <gml:boundedBy> 
                                <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326"> 
                                        <gml:lowerCorner>43.5 -97.23</gml:lowerCorner> 
                                        <gml:upperCorner>49.40 -89.5</gml:upperCorner> 
                                </gml:Envelope> 
                        </gml:boundedBy> 

                        <gml:featureMember xlink:href="http://URL_to_get_more?fcid=Man" xlink:title="Manitoba" xlink:role="http://www.opengis.net/gml/FeatureCollection"/> 
                        <!-- The document retrieved is a FeatureCollection. That FeatureCollection may list all its individual wells (which is still likely to be too many) or 
                instead take the nesting one level further and list the featureMember xlinks for each of the districts/counties/subdivisions--> 
                </gml:FeatureCollection> 
        </gml:featureMember> 
        <gml:featureMember> 
                <gml:FeatureCollection gml:id="BC"> 
                       <gml:name>Province of British Columbia, Canada</gml:name>
                        <gml:boundedBy> 
                                <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326"> 
                                        <gml:lowerCorner>48.22 -139</gml:lowerCorner> 
                                        <gml:upperCorner>60 -114</gml:upperCorner> 
                                </gml:Envelope> 
                        </gml:boundedBy> 

                        <gml:featureMember xlink:href="http://URL_to_get_more?fcid=BC" xlink:title="British Columbia"  xlink:role="http://www.opengis.net/gml/FeatureCollection"/> 
                        <!-- The document retrieved is a FeatureCollection. That FeatureCollection may list all its individual wells (which is still likely to be too many) or 
                instead take the nesting one level further and list the featureMember xlinks for each of the districts/counties/subdivisions--> 
                </gml:FeatureCollection> 
        </gml:featureMember> 
        <gml:featureMember> 
                <gml:FeatureCollection gml:id="Que"> 
                        <gml:name>Province de Québec, Canada</gml:name>
                        <gml:boundedBy> 
                                <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326"> 
                                        <gml:lowerCorner>44.91 -79.73</gml:lowerCorner> 
                                        <gml:upperCorner>62.83 -56.82</gml:upperCorner> 
                                </gml:Envelope> 
                        </gml:boundedBy> 

                        <gml:featureMember xlink:href="http://URL_to_get_more?fcid=Que" xlink:title="Quebec"  xlink:role="http://www.opengis.net/gml/FeatureCollection"/> 
                        <!-- The document retrieved is a FeatureCollection. That FeatureCollection may list all its individual wells (which is still likely to be too many) or 
                instead take the nesting one level further and list the featureMember xlinks for each of the districts/counties/subdivisions--> 
                </gml:FeatureCollection> 
        </gml:featureMember> 
        <gml:featureMember> 
                <gml:FeatureCollection gml:id="Man"> 
                        <gml:name>Province of Manitoba, Canada</gml:name>
                        <gml:boundedBy> 
                                <gml:Envelope srsName="urn:ogc:def:crs:EPSG:4326"> 
                                        <gml:lowerCorner>49 -102</gml:lowerCorner> 
                                        <gml:upperCorner>60 -88.85</gml:upperCorner> 
                                </gml:Envelope> 
                        </gml:boundedBy> 

                        <gml:featureMember xlink:href="http://URL_to_get_more?fcid=Man" xlink:title="Manitoba" xlink:role="http://www.opengis.net/gml/FeatureCollection"/> 
                        <!-- The document retrieved is a FeatureCollection. That FeatureCollection may list all its individual wells (which is still likely to be too many) or 
                instead take the nesting one level further and list the featureMember xlinks for each of the districts/counties/subdivisions--> 
                </gml:FeatureCollection> 
        </gml:featureMember> 

</gml:FeatureCollection> 
```

Other partitionning methods can be used

- using a nested catalog of grouping feature (administrative unit, feature types, feature age, etc..)
- using the identification (ID) of the feature of interest (collection of all the waterwell starting with 1, 2,3... and then collection "1" is further divided in 11, 12, 13 and so on)
- using spatial partitioning like quad-tree

It is also possible to provide many partionning method for the same list of feature of interest by providing many offering, each pointing to a single nested collection of feature of interest.

## Test implementation

An implementation using quad-tree (the method irrelevant for the client application)

<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/sos2/network/OntarioNetwork>

this default URL will use default bbox == Ontario

if drilled down use the nw cadran, you quickly get to

<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/sos2/network/OntarioNetwork?BBOX=-95.19,49.260000000000008,-84.69,56.92>

The limit is set to 250 features by collection.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 25 Oct 2010

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" date="1288013214" format="1.1" reprev="1.1" version="1.1"}

<!-- -->

- TOPICPARENT{name="<a href="GwIeSOSProfile" class="wikilink">GwIeSOSProfile</a>"}
