## Sample Data

**UK Environment Agency**

- \<p\>Spread sheet of common RGS data \<a href="<http://external.opengis.org/twiki_public/pub/HydrologyDWG/References/EA_44810_GSDQ_summary.xlsx>" target="\_blank"\><a href="EA_44810_GSDQ_summary" class="wikilink">EA_44810_GSDQ_summary</a>.xlsx\</a\>\</p\>

**Australian BOM**

- \<p\> [WDTF : Ratings and gaugings](%ATTACHURL%/410777_gaugings_and_ratings.xml)\</p\>
- \<p\> [WDTF Sections](%ATTACHURL%/410777_-_sections.xml)\</p\>
- \<p\>Monitoring station ACT:410777,\</p\>
  - \<p\>Data licencing <http://www.bom.gov.au/water/regulations/report-summary.php?personid=2>\</p\>
  - \<p\>Site data : <http://incp.environment.act.gov.au/water/SiteDetails.aspx?sid=410777>\</p\>

**USGS NWIS** \* \<font face="Verdana" size="2"\> <http://water.usgs.gov/XML/NWIS/5.0/index.html> \</font\>

- <http://water.usgs.gov/XML/NWIS/5.0/Samples/index.html>
- <http://water.usgs.gov/XML/NWIS/5.0/Samples/RatingSummaryRequest.xml>
- <http://water.usgs.gov/XML/NWIS/5.0/Samples/RatingFullPeriodRequest.xml> \* %BLUE%\<span style="line-height: 17px;"\>\<u\>Vocabularies\</u\>\</span\><span class="twiki-macro ENDCOLOR"></span> \*
- %BLUE%\<span style="line-height: 17px;"\>\<u\> <http://water.usgs.gov/XML/NWIS/5.0/ReferenceLists/ReferenceListSummary.html> \</u\>\</span\><span class="twiki-macro ENDCOLOR"></span> \* %BLUE%\<span style="line-height: 17px;"\>\<u\>Documentation - XMLspy\</u\>\</span\><span class="twiki-macro ENDCOLOR"></span> \*
- %BLUE%\<span style="line-height: 17px;"\>\<u\> <http://water.usgs.gov/XML/NWIS/5.0/doc/UsgsHydroML.html> \</u\>\</span\><span class="twiki-macro ENDCOLOR"></span>

## References

USGS : Here is the most recent information on the USGS <a href="HydroML" class="wikilink">HydroML</a> schemas related to those data sets: \<br /\> [\<font face="Verdana" size="2"\>http://water.usgs.gov/XML/NWIS/5.0/index.html\</font\>](http://water.usgs.gov/XML/NWIS/5.0/index.html)

BOM WDTF [download package](ftp://ftp.bom.gov.au/anon/home/water/WDTF/release-wdtf-package-v1.0.2.zip)\<br /\><http://www.bom.gov.au/water/regulations/wdtf/index.shtml>

- WMO Manual on Stream Gauging, Volume II – Computation of Discharge, WMO-No. 1044. 2010
- WMO Guide to Hydrological Practices, Volume I.
- USGS - DISCHARGE RATINGS AT GAGING STATIONS \<a href="<http://pubs.usgs.gov/twri/twri3-a10/pdf/twri_3-A10_a.pdf>" title="<http://pubs.usgs.gov/twri/twri3-a10/pdf/twri_3-A10_a.pdf>"\><http://pubs.usgs.gov/twri/twri3-a10/pdf/twri_3-A10_a.pdf>\</a\>
- NOAA- SHEF format: <http://www.weather.gov/directives/sym/pd01009044curr.pdf> USGS
- <a href="HydroML" class="wikilink">HydroML</a>: <http://water.usgs.gov/XML/NWIS/4.11/index.html> <a href="HydroXC" class="wikilink">HydroXC</a>: <http://www.weather.gov/oh/hydroxc/schema3.html>
- WDTF: <http://www.bom.gov.au/water/regulations/wdtf/wdtfDownload.shtml>
- River Gauging Station Data Quality Classification (GSDQ). A UK based method for assessing the quality of ratings curves and associated data. In depth and good material for style of metadata required for making detailed assesments of quality (this could be formed as a use case). I've uploaded here (it got taken down from previous link): [River_Gauging_Station_Data_Quality_Classification.pdf](%ATTACHURL%/River_Gauging_Station_Data_Quality_Classification.pdf)
- Deltares page on stage-discharge relationship: <https://publicwiki.deltares.nl/display/HYMOS/03+-+Stage+Discharge>. Contains some good content on methods, metadata requirements, controls etc. e.g. <https://publicwiki.deltares.nl/display/HYMOS/02+Edit+flow+measurements>.

UK Environment Agency pages providing descriptive and actual rating information for users for flood estimation purposes:

- Descriptive: <http://www.environment-agency.gov.uk/hiflows/station.aspx?47004>
- Rating info: <http://www.environment-agency.gov.uk/hiflows/apr.aspx?47004_rating>

Example CEH (UK) pages providing access to daily flow data and associated quality info, currently as text summary (station description):

- <http://www.ceh.ac.uk/data/nrfa/data/station.html?24001>
- <http://www.ceh.ac.uk/data/nrfa/data/station.html?47007> (complex history)

## Uncertainty papers

Here are citations to a couple of recent papers on hydrometric uncertainty. Ultimately, the primary use-case for sharing of ratings gaugings and cross sections is to mitigate for the lack in objective quantification of uncertainty in discharge timeseries. Sophisticated operational and scientific users of discharge data need to inspect how robust the derivation of discharge from stage is in order to establish the confidence with which critical decisions or hypothesis tests can be based. This understanding how the information is of use is germane to design and development of the standard.

- <a href="McMillan" class="wikilink">McMillan</a> \<span style="line-height: 1.5em;"\>, H., Krueger, T. and Freer, J. 2012, Benchmarking observational uncertainties for hydrology: rainfall, river discharge and water quality. Hydrol. Process.. doi: 10.1002/hyp.9384\</span\>
- \<span style="line-height: 1.5em;"\>Hamilton, AS, Moore, RD. 2012. Quantifying uncertainty in streamflow records. Canadian Water Resources Journal. 37(1):3-21.\</span\>
- \<span style="line-height: 1.5em;"\>Beven, K., Buytaert, W., & Smith, L. A. (2012). On virtual observatories and modelled realities (or why discharge must be treated as a virtual variable). Hydrological Processes, 26(12), 1905-1908. \</span\>
- \<span style="line-height: 1.5em;"\>Beven, K., & Westerberg, I. (2011). On red herrings and real herrings: disinformation and information in hydrological inference. Hydrological Processes, 25(10), 1676-1680. \</span\>
- \<span style="line-height: 1.5em;"\>G. Di Baldassarre and A. Montanari (2009)\<span style="font-size: 11px;"\>, \</span\>Uncertainty in river discharge observations: a quantitative analysis. Hydrology and Earth System Sciences. \</span\>
- \<span style="line-height: 1.5em;"\>José-Luis Guerrero, Ida K. Westerberg, Sven Halldin, Chong-Yu Xu, Lars-Christer Lundin, Temporal variability in stage–discharge relationships, Journal of Hydrology, Volumes 446–447, 26 June 2012, Pages 90-102, ISSN 0022-1694, 10.1016/j.jhydrol.2012.04.031\</span\>
- \<span style="line-height: 1.5em;"\>Tomkins, Kerrie M. "Uncertainty in streamflow rating curves: methods, controls and consequences." *Hydrological Processes* (2012). (this is a CSIRO paper. I'm looking into using this as a case study for RGS encodings). \</span\>

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 08 Jun 2012

- TOPICINFO{author="<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" comment="save topic" date="1360294819" format="1.1" reprev="12" version="13"}

<!-- -->

- TOPICPARENT{name="<a href="WaterML2Part2" class="wikilink">WaterML2Part2</a>"}

<!-- -->

- FILEATTACHMENT{name="<a href="River_Gauging_Station_Data_Quality_Classification" class="wikilink">River_Gauging_Station_Data_Quality_Classification</a>.pdf" attachment="<a href="River_Gauging_Station_Data_Quality_Classification" class="wikilink">River_Gauging_Station_Data_Quality_Classification</a>.pdf" attr="" comment="GSDQ report" date="1339133759" path="River Gauging Station Data Quality Classification.pdf" size="2706907" user="<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="RatingsGaugingsModelOverview" class="wikilink">RatingsGaugingsModelOverview</a>.pdf" attachment="<a href="RatingsGaugingsModelOverview" class="wikilink">RatingsGaugingsModelOverview</a>.pdf" attr="" comment="preliminary work - Ratings Gaugings Model Overview" date="1339627341" path="D:\Paul\Projects\OGC\\<a href="WaterML2" class="wikilink">WaterML2</a>\Ratings and Gaugings\\<a href="RatingsGaugingsModelOverview" class="wikilink">RatingsGaugingsModelOverview</a>.pdf" size="359540" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="WDTS_2" class="wikilink">WDTS_2</a>.2_RatingGaugingExchange.pdf" attachment="<a href="WDTS_2" class="wikilink">WDTS_2</a>.2_RatingGaugingExchange.pdf" attr="" comment="Rating curve and gauging information - Report on data exchange formats" date="1339627529" path="D:\Paul\Projects\Wirada\2010-2011\Ratings report\\<a href="WDTS_2" class="wikilink">WDTS_2</a>.2_RatingGaugingExchange.pdf" size="2688667" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="EA_44810_GSDQ_summary" class="wikilink">EA_44810_GSDQ_summary</a>.xlsx" attachment="<a href="EA_44810_GSDQ_summary" class="wikilink">EA_44810_GSDQ_summary</a>.xlsx" attr="" comment="" date="1344376401" path="c:\temp\EA 44810_GSDQ summary.xlsx" size="47664" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="410777\_-\_sections.xml" attachment="410777\_-\_sections.xml" attr="" comment="" date="1344567785" path="C:\WDTF\Data\410777 - sections.xml" size="24141" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="410777_gaugings_and_ratings.xml" attachment="410777_gaugings_and_ratings.xml" attr="" comment="" date="1344567854" path="C:\WDTF\Data\410777 gaugings and ratings.xml" size="322828" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}
