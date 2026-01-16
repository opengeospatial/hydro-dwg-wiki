# Intro

A list of endpoints offering GW information and\or observations based on existing systems in order for WMO CHy to begin GWML2 and related standards testing phase. \<span style="background-color: transparent;"\>Data come from different parts of the world.\</span\>

\<span style="background-color: transparent;"\>Then these endpoints will be harvested by WMO's Hydrological Observing System (WHOS) which will test its content with selected GISC in the world. \</span\>

Some examples of data consumption by desktop and web client are also provided

## NR-CAN Groundwater Information Network

- GWML2 service
  - access point:
    - WFS: <http://gin.gw-info.net/GinService/wfs/gwie?REQUEST=GetCapabilities&ACCEPTVERSIONS=2.0.0&SERVICE=WFS>
    - SOS : <http://gin.gw-info.net/GinService/sos/gw?REQUEST=GetCapabilities&ACCEPTVERSIONS=2.0.0,1.0.0&SERVICE=SOS>
  - comment: currently building a more robust and comprehensive service, thus content is limited (wells, aquifers) and the server might not always be at full speed
  - example query/URI
    - <http://gin.gw-info.net/GinService/wfs/gwie?REQUEST=GetFeature&VERSION=2.0.0&SERVICE=WFS&BBOX=-79.61270,47.57953,-79.41821,47.64803&TYPENAMES=gww:GW_Well&namespaces=xmlns(gww,http://www.opengis.net/gwml-well/2.2>)
    - <http://gin.gw-info.net/GinService/wfs/gwie?REQUEST=GetFeature&VERSION=2.0.0&SERVICE=WFS&STOREDQUERY_ID=urn:ogc:def:query:OGC-WFS>::<a href="GetFeatureById" class="wikilink">GetFeatureById</a>&ID=prj_33.1
    - <http://gin.gw-info.net/GinService/wfs/gwie?REQUEST=GetFeature&VERSION=2.0.0&SERVICE=WFS&STOREDQUERY_ID=urn:ogc:def:query:OGC-WFS>::<a href="GetFeatureById" class="wikilink">GetFeatureById</a>&ID=yk.ww.201020101
    - <http://gin.gw-info.net/GinService/sos/gw?REQUEST=DescribeSensor&VERSION=2.0.0&SERVICE=SOS&procedure=urn:ogc:object:Sensor>::<a href="GIN_GroundwaterLevelProcess" class="wikilink">GIN_GroundwaterLevelProcess</a>&procedurDescriptionFormat=<http://www.opengis.net/sensorML/1.0.1>
    - <http://gin.gw-info.net/GinService/sos/gw?REQUEST=GetFeatureOfInterest&VERSION=2.0.0&SERVICE=SOS&featureOfInterest=ab.mon.875>
    - <http://gin.gw-info.net/GinService/sos/gw?REQUEST=GetFeatureOfInterest&VERSION=2.0.0&SERVICE=SOS&spatialFilter=om:featureOfInterest/*/sams:shape,-116,50.5,-75,51.6,http://www.opengis.net/def/crs/EPSG/0/4326&namespaces=xmlns(sams,http://www.opengis.net/samplingSpatial/2.0>),xmlns(om,<http://www.opengis.net/om/2.0>)
    - <http://gin.gw-info.net/GinService/sos/gw?REQUEST=GetObservation&VERSION=2.0.0&SERVICE=SOS&offering=GW_LEVEL&featureOfInterest=ab.mon.667&observedProperty=urn:ogc:def:phenomenon:OGC:1.0.30:groundwaterlevel>
- example client
- example story line/coherent use case

## French Groundwater Information Network

Overall comment : BRGM is updating its URI strategy. \<span style="background-color: transparent;"\>Thus URIs in \</span\>\<span style="background-color: transparent;"\><http://ressource.brgm-rec.fr/data/>\</span\>\<span style="background-color: transparent;"\>... will move under \</span\>\<span style="background-color: transparent;"\><https://data.geoscience.fr/id/>\</span\>\<span style="background-color: transparent;"\>... over 2018\</span\>

- GWML2 service
  - WFS access point: <http://geoserverref.brgm-rec.fr/geoserver/ows>?
  - featureTypes : <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>, <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a>, <a href="GW_ConfiningBed" class="wikilink">GW_ConfiningBed</a>
  - example query/URI: <http://ressource.brgm-rec.fr/data/EntiteHydroGeol/507AC00>
- Borehole service
  - WFS access point: <http://geoserverref.brgm-rec.fr/geoserver/ows>?
  - comment: featureTypes <a href="BoreholeView" class="wikilink">BoreholeView</a> is a summary Borehole information features set-up for the EU research infrastructure EPOS (<a href="GeoSciML" class="wikilink">GeoSciML</a> based). enable to link to the proper Piezometer, Borehole Log , ...
  - example query/URI: <http://ressource.brgm-rec.fr/data/BoreholeView/BSS001REWW> (or a static example file on the same feature instance containing the 'target' information content: <https://forge.brgm.fr/svnrepository/epos/trunk/instances/BoreholeView.xml>)
- Piezometer service
  - WFS access point: <https://wfspoc.brgm-rec.fr/geoserver/ows>?
  - comment: Based on INSPIRE featureType 'ef:Environmental Monitoring Facility'
  - example query/URI: <http://ressource.brgm-rec.fr/data/Piezometre/06512X0037/STREMY.2> or the corresponding query sent on the back-end WFS <https://wfspoc.brgm-rec.fr/geoserver/ows?service=wfs&version=2.0.0&request=GetFeature&StoredQuery_ID=GetEnvironmentalMonitoringFacilityById&ID=Piezometre.06512X0037.STREMY.2>
- Raw groundwater level service
  - SOS access point: <http://ressource.brgm-rec.fr/service/sosRawPiezo/service=SOS&version=2.0.0&request=GetCapabilities>
  - comment : <a href="WaterML2" class="wikilink">WaterML2</a> timeseries
  - example query/URI : \<span style="background-color: transparent;"\><http://ressource.brgm-rec.fr/obs/RawOfferingPiezo/06512X0037/STREMY.2&responseFormat=http://www.opengis.net/waterml/2.0> or the corresponding query sent to the back-end SOS (<http://ressource.brgm-rec.fr/service/sosRawPiezo/service=SOS&version=2.0.0&request=GetObservation&offering=http://ressource.brgm-rec.fr/obs/RawOfferingPiezo/06512X0037/STREMY.2>)\</span\>
- Groundwater level forecast service
  - comment : will be added hopefully soon, <a href="WaterML2" class="wikilink">WaterML2</a> timeseries
  - SOS access point
  - example query/URI
  - client : web interface (checking if I can share it) consuming sensorweb flows from groundwater level, rainfall, river gage and ground water level forecast (generated from the three other flows)
- Hydrogeological model
  - comment : will be added hopefully soon
  - WFS access point
  - example query/URI
- Example client
  - QGIS GML Application Schema toolbox : <https://github.com/BRGM/gml_application_schema_toolbox>
    - embeds exchanges with GDAL new GMLAS driver : <http://www.gdal.org/drv_gmlas.html>
    - Videos (traversing a coherent system using the URIs from above): <https://github.com/BRGM/gml_application_schema_toolbox/blob/master/presentations/2018_EGU/Demo_1_2_0_rc2_EPOS_WP15_EGU_with_datagraph.mp4>. The video is done on a previous version of the plugin (the new one embedds a wizard for an easier GUI).
  - Presentation
    - plugin presentation <https://external.opengeospatial.org/twiki_public/pub/GeoSciMLswg/SouthamptonGsmlSwgSept2017/20170718_QGIS_GMLAS_toolbox_groundwater_monitoring_BRGM_OSLANDIA.pptx>
    - GDAL GMLAS driver presentation : <https://external.opengeospatial.org/twiki_public/pub/GeoSciMLswg/SouthamptonGsmlSwgSept2017/GML_application_schema_made_easy_in_GDAL_OGR_and_QGIS_-_GMLAS_driver.pdf>
- Example story line/coherent use case :
  - see QGIS GMLAS video above

-- Main.<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a> - 29 May 2018

## Federation University CeRDI Visualising Victoria's Groundwater

From Peter Dalhouse: the recently revamped [Visualising Victoria's Groundwater](http://www.vvg.org.au/) (VVG) site will serve and consume groundwater data via GWML2.

[IAH presentation from April 2018 on VVG](%ATTACHURL%/IAH_Vic_2018.pptx) and Hydrogeology Journal article: <https://link.springer.com/article/10.1007/s10040-018-1747-9>.

- GWML2 service
  - access point:
    - WFS: \<u style="background-color: transparent;"\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=GetCapabilities>\</u\>
- example query/URIs
- <a href="GW_Spring" class="wikilink">GW_Spring</a> query:

\<u\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=gwml2w:GW_Spring&outputFormat=gml32&maxFeatures=2>\</u\>

- <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a> query:

\<u style="background-color: transparent;"\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&service=WFS&request=getFeature&typeName=gwml2:GW_Aquifer&outputFormat=gml32&maxFeatures=3>\</u\>

- <a href="OM_Observation" class="wikilink">OM_Observation</a> query:

\<u\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=om:OM_Observation&outputFormat=gml32&featureID=feduni.borehole.observation.46081.27001.1>\</u\>

- <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> query:

\<u\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=gwml2:GW_FluidBody&maxFeatures=2&outputFormat=gml32>\</u\>

- <a href="GW_Discharge" class="wikilink">GW_Discharge</a> query:

\<u\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&service=WFS&request=getFeature&typeName=gwml2f:GW_Discharge&maxFeatures=1>\</u\>

- Borehole query:

\<u\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&service=WFS&request=getFeature&typeName=gwml2wc:Borehole&maxFeatures=1>\</u\>

- <a href="GW_Rechargey" class="wikilink">GW_Rechargey</a> query:

\<u\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=gwml2f:GW_Recharge&outputFormat=gml32&maxFeatures=2>\</u\>

-- Main.<a href="BruceSimons1" class="wikilink">BruceSimons1</a> - 30 May 2018

## National Groundwater Montioring Network

Overall comment: this service was set up for evaluation and **links below are not part of the enterprise system**. There are plans to further build out and deploy a more robust version of this service in the future.

GWML2 service\<br /\> Groundwater level service; this service returns time series data from wells from cached data.

- SOS: <http://cida.usgs.gov/ngwmn_cache/sos?request=GetCapabilities&service=SOS&AcceptVersions=2.0.0>
- WFS: <http://cida.usgs.gov/ngwmn_cache/wfs?version=1.1.0&service=wfs&REQUEST=GetCapabilities>

Example queries:

- SOS Get Observation by FID: \<span style="background-color: transparent;"\><http://cida.usgs.gov/ngwmn_cache/sos?REQUEST=GetObservation&featureOfInterest=VW_GWDP_GEOSERVER.USGS.403836085374401>\</span\>
- SOS Get Feature of Interest by FID: <http://cida.usgs.gov/ngwmn_cache/sos?REQUEST=GetFeatureOfInterest&featureOfInterest=VW_GWDP_GEOSERVER.USGS.403836085374401>
- SOS Get Feature of Interest by BBOX:<http://cida.usgs.gov/ngwmn_cache/sos?REQUEST=GetFeatureOfInterest&bbox=30,-99,31,102&srsName=urn:ogc:def:crs:EPSG>::4269
- WFS Get Feature by FID (GWML2): <http://cida.usgs.gov/ngwmn_cache/wfs?version=1.1.0&service=wfs&REQUEST=GetFeature&featureId=USGS.403836085374401>
- WFS Get Feature by BBOX (GWML1): <http://cida.usgs.gov/ngwmn_cache/wfs?REQUEST=GetFeature&bbox=30,-99,31,102&srsName=urn:ogc:def:crs:EPSG>::4269

<!-- -->

- TOPICINFO{author="<a href="CandiceHopkins" class="wikilink">CandiceHopkins</a>" comment="reprev" date="1528144594" format="1.1" reprev="6" version="7"}

<!-- -->

- TOPICPARENT{name="<a href="WebHome" class="wikilink">WebHome</a>"}

<!-- -->

- FILEATTACHMENT{name="<a href="IAH_Vic_2018" class="wikilink">IAH_Vic_2018</a>.pptx" attachment="<a href="IAH_Vic_2018" class="wikilink">IAH_Vic_2018</a>.pptx" attr="" comment="Launching the new VVG portal" date="1527866238" path="<a href="IAH_Vic_2018" class="wikilink">IAH_Vic_2018</a>.pptx" size="13988711" user="<a href="TonyBoston" class="wikilink">TonyBoston</a>" version="1"}
