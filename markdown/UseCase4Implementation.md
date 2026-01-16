# **Use Case 4 Implementation**

Results

\<placeholder\>

Use-Case 4 contributions

\<table border="1" cellpadding="0" cellspacing="0"\> \<tbody\> \<tr\> \<td valign="top" width="70"\>

\<span style="line-height: 22px;"\>Participant\</span\>

\</td\> \<td valign="top" width="65"\>

\<span style="line-height: 22px;"\>Web Services\</span\>

\</td\> \<td valign="top" width="98"\>

\<span style="line-height: 22px;"\>Features\</span\> \</td\> \<td valign="top" width="105"\>

\<span style="line-height: 22px;"\>Technologies\</span\> \</td\> \<td valign="top" width="128"\>

\<span style="line-height: 22px;"\>Example XML Instances (File Name)\</span\> \</td\> \</tr\> \<tr\> \<td valign="top" width="70"\>

USGS \</td\> \<td valign="top" width="65"\>

\<span style="line-height: 22px; background-color: transparent;"\>WMS, WFS, SOS\</span\> \</td\> \<td valign="top" width="98"\>

\<span style="line-height: 22px;"\><a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>, <a href="GW_Well" class="wikilink">GW_Well</a>, \</span\> <a href="GroundWaterLevel" class="wikilink">GroundWaterLevel</a>\</td\> \<td valign="top" width="105"\>

<a href="GeoServer" class="wikilink">GeoServer</a> \<span style="line-height: 22px;"\>WMS, Custom WFS, Custom SOS\</span\> \</td\> \<td valign="top" width="128"\>

\<span style="line-height: 22px;"\><a href="GW_Well_USGS_uc4" class="wikilink">GW_Well_USGS_uc4</a>-mapping.xml, <a href="GW_AquiferSystem_USGS_uc4" class="wikilink">GW_AquiferSystem_USGS_uc4</a>-mapping.xml\</span\> \</td\> \</tr\> \<tr\> \<td valign="top" width="70"\>

GNS / UZ \</td\> \<td valign="top" width="65"\>

WFS, \<br /\>SOS,\<br /\>WPS \</td\> \<td valign="top" width="98"\><a href="GW_Well" class="wikilink">GW_Well</a>, \<br /\><a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a>\</td\> \<td valign="top" width="105"\>

Geoserver 2.7+app-schema, \<br /\>\<span style="line-height: 22px; background-color: transparent;"\>52North SOS 4.0.0, 52North WPS 3.2.0, \</span\>\<span style="line-height: 22px; background-color: transparent;"\>Tomcat 7\</span\> \</td\> \<td valign="top" width="128"\><a href="GW_ManagementArea_GNS_uc2" class="wikilink">GW_ManagementArea_GNS_uc2</a>.xml includes a water budget\</td\> \</tr\> \</tbody\> \</table\> Table UC4.2: Use-Case 4 issues

\<table border="1" cellpadding="0" cellspacing="0"\> \<tbody\> \<tr\> \<td valign="top" width="59"\>

\<span style="line-height: 22px;"\>Issue \#\</span\> \</td\> \<td valign="top" width="73"\>

\<span style="line-height: 22px;"\>Participant\</span\> \</td\> \<td valign="top" width="108"\>

\<span style="line-height: 22px;"\>Issue Summary\</span\> \</td\> \<td valign="top" width="140"\>

\<span style="line-height: 22px;"\>Proposed Solution\</span\> \</td\> \<td valign="top" width="88"\>

\<span style="line-height: 22px;"\>Timeline\</span\> \</td\> \</tr\> \<tr\> \<td valign="top" width="59"\>

4.1 \</td\> \<td valign="top" width="73"\>

\<span style="line-height: 22px;"\>USGS\</span\>

\</td\> \<td valign="top" width="108"\>

\<span style="line-height: 22px;"\>Screen hole size only has one dimension and does not account for non-circular holes, i.e. slits\</span\>

\</td\> \<td valign="top" width="140"\>

\<span style="line-height: 22px;"\>Expand to two fields: screenHoleLength, screenHoleWidth\</span\>

\</td\> \<td valign="top" width="88"\>

\</td\> \</tr\> \<tr\> \<td valign="top" width="59"\>

4.2 \</td\> \<td valign="top" width="73"\>

GNS /UZ

\</td\> \<td valign="top" width="108"\>

\<span style="line-height: 22px;"\>mapping from GWML2 features and time-series into domain specific modelling tools is still in early phase\</span\> \</td\> \<td valign="top" width="140"\>

manual program codes, specific implementations necessary\</td\> \<td valign="top" width="88"\>

\</td\> \</tr\> \<tr\> \<td valign="top" width="59"\>

4.3 \</td\> \<td valign="top" width="73"\>

\</td\> \<td valign="top" width="108"\>

\</td\> \<td valign="top" width="140"\>

\</td\> \<td valign="top" width="88"\>

\</td\> \</tr\> \<tr\> \<td valign="top" width="59"\>

… \</td\> \<td valign="top" width="73"\>

\</td\> \<td valign="top" width="108"\> \</td\> \<td valign="top" width="140"\> \</td\> \<td valign="top" width="88"\> \</td\> \</tr\> \</tbody\> \</table\> -- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 26 Oct 2012

-- Main.<a href="JessicaLucido" class="wikilink">JessicaLucido</a> - 17 Aug 2015

-- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 25 Aug 2015

- TOPICINFO{author="<a href="AlexKmoch" class="wikilink">AlexKmoch</a>" comment="save topic" date="1440488340" format="1.1" reprev="3" version="4"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
