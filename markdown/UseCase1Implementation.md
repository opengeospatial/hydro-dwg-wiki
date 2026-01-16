# **Use Case 1 Implementation**

**Use-Case 1 Contributions:**

| Participant | Web Services | Features | Technologies | Example XML Instances (file name) |
|:---|:---|:---|:---|:---|
| NRcan | WMS, WFS | <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>, <a href="GW_Well" class="wikilink">GW_Well</a> | <a href="MapServer" class="wikilink">MapServer</a> WMS, Custom WFS |  |
| BRGM |  |  |  |  |
| CSIRO / BOM |  |  |  |  |
| FedUni |  |  |  |  |
| GNS / UZ | WMS, WFS | <a href="GW_Well" class="wikilink">GW_Well</a>, \<br /\><a href="GW_Spring" class="wikilink">GW_Spring</a>,\<br /\><a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a> | Geoserver 2.7+app-schema,\<br /\>Tomcat 7, \<a href="bin.edit.<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="PostgreSQL" class="wikilink">PostgreSQL</a>?topicparent=<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="UseCaseWebServices" class="wikilink">UseCaseWebServices</a>" rel="nofollow" title="Create this topic"\><a href="PostgreSQL" class="wikilink">PostgreSQL</a>\</a\>9.x / shape-files \<br /\>and property files | <a href="GW_Well_GNS_uc1" class="wikilink">GW_Well_GNS_uc1</a>.xml, <a href="GW_Spring_GNS_uc1" class="wikilink">GW_Spring_GNS_uc1</a>.xml, <a href="GW_MonitoringSite_GNS_uc1" class="wikilink">GW_MonitoringSite_GNS_uc1</a>.xml |
| USGS | WMS, WFS | <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>\<span style="line-height: 22px; background-color: transparent;"\>, <a href="GW_Well" class="wikilink">GW_Well</a>\</span\> | <a href="GeoServer" class="wikilink">GeoServer</a> WMS, Custom WFS | <a href="GW_Well_USGS_uc4" class="wikilink">GW_Well_USGS_uc4</a>-mapping.xml, <a href="GW_AquiferSystem_USGS_uc4" class="wikilink">GW_AquiferSystem_USGS_uc4</a>-mapping.xml |

**Use-Case 1 Issues:**

| \# | Participant | Summary | Proposed Solution | Timeline |
|:---|:---|:---|:---|:---|
| 1.1 | USGS | Screen hole size only has one dimension and does not account for non-circular holes, i.e. slits | Expand to two fields: screenHoleLength, screenHoleWidth |  |
| 1.2 |  |  |  |  |
| 1.3 |  |  |  |  |

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 26 Oct 2012

-- Main.<a href="JessicaLucido" class="wikilink">JessicaLucido</a> - 19 Aug 2015

-- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 25 Aug 2015

- TOPICINFO{author="<a href="AlexKmoch" class="wikilink">AlexKmoch</a>" comment="save topic" date="1440488847" format="1.1" reprev="4" version="4"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
