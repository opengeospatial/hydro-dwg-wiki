The page is broken up into parts reflecting vocabularies from the various parts of the model, along the lines of the following diagram.

The question for the RGS group is: we can also support internal codes by encodings just using the internal vocabulary, but it is desirable to have some common terms. Do we want to define the ones below for use in standard? The main references below are from USGS codes as they tend to have fairly comprehensive codes with decent web availability. We really need input from you guys (the experts) on these. If you have other vocabularies that can be used in harmonisation, please drop them here or link to them.

\<img alt="Capture.PNG" height="733" src="%ATTACHURL%/Capture.PNG" title="Capture.PNG" width="801" /\>

Methodology for developing vocabs

There is a simple workflow from here (<http://www.asis.org/Bulletin/Dec-12/DecJan13_Zaharee.html>) showing a process for developing a vocab/CV.

\<img alt="" height="518" src="<http://www.asis.org/Bulletin/Dec-12/Zaharee_Figure2.jpg>" width="701" /\>

Gives a basic view of how things generally proceed..

# Conversion/Ratings

## Development method code

Specifies the method used for developing the rating curve.

| Term | Definition | Reference(s) |
|:---|:---|:---|
| Equation | Rating was developed using a theoretical equation. |  |
| Estimated | Rating share was estimated in some way. |  |
| fromGauging | Rating was developed using a collection of discrete gauging observations |  |
| unknown | Development method is not known. |  |

## Status codes

| Term | Definition | Reference(s) |
|:---|:---|:---|
| Working | The rating is the current working version |  |
| <a href="InReview" class="wikilink">InReview</a> | The rating is under review. |  |
| Approved | The rating has been approved for use. |  |
| Submitted | The rating has been submitted for review |  |

## Domain feature class

From the <a href="HY_features" class="wikilink">HY_features</a> feature types we get a good top-level feature vocabulary:

- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65647>" title="jump to item on this page"\> / <a href="HY_Basin" class="wikilink">HY_Basin</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65666>" title="jump to item on this page"\> / <a href="HY_BasinAggregate" class="wikilink">HY_BasinAggregate</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65685>" title="jump to item on this page"\> / <a href="HY_Catchment" class="wikilink">HY_Catchment</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65706>" title="jump to item on this page"\> / <a href="HY_CatchmentArea" class="wikilink">HY_CatchmentArea</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65725>" title="jump to item on this page"\> / <a href="HY_CatchmentBoundary" class="wikilink">HY_CatchmentBoundary</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65746>" title="jump to item on this page"\> / <a href="HY_CatchmentRepresentation" class="wikilink">HY_CatchmentRepresentation</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65767>" title="jump to item on this page"\> / <a href="HY_CrossSection" class="wikilink">HY_CrossSection</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65786>" title="jump to item on this page"\> / <a href="HY_DistanceToRefPoint" class="wikilink">HY_DistanceToRefPoint</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65805>" title="jump to item on this page"\> / <a href="HY_FlowPath" class="wikilink">HY_FlowPath</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65824>" title="jump to item on this page"\> / <a href="HY_Glacier" class="wikilink">HY_Glacier</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65843>" title="jump to item on this page"\> / <a href="HY_HydroFeature" class="wikilink">HY_HydroFeature</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65864>" title="jump to item on this page"\> / <a href="HY_HydroFeatureName" class="wikilink">HY_HydroFeatureName</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65883>" title="jump to item on this page"\> / <a href="HY_HydrographicNetwork" class="wikilink">HY_HydrographicNetwork</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65902>" title="jump to item on this page"\> / <a href="HY_IndirectPosition" class="wikilink">HY_IndirectPosition</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65921>" title="jump to item on this page"\> / <a href="HY_LongitudinalSection" class="wikilink">HY_LongitudinalSection</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65940>" title="jump to item on this page"\> / <a href="HY_MileageSystemAxis" class="wikilink">HY_MileageSystemAxis</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65959>" title="jump to item on this page"\> / <a href="HY_Network" class="wikilink">HY_Network</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65980>" title="jump to item on this page"\> / <a href="HY_Outfall" class="wikilink">HY_Outfall</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N65999>" title="jump to item on this page"\> / <a href="HY_ReferencePoint" class="wikilink">HY_ReferencePoint</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66018>" title="jump to item on this page"\> / <a href="HY_RelativePosition" class="wikilink">HY_RelativePosition</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66037>" title="jump to item on this page"\> / <a href="HY_Reservoir" class="wikilink">HY_Reservoir</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66056>" title="jump to item on this page"\> / <a href="HY_RiverMileageCS" class="wikilink">HY_RiverMileageCS</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66075>" title="jump to item on this page"\> / <a href="HY_WaterBody" class="wikilink">HY_WaterBody</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66094>" title="jump to item on this page"\> / <a href="HY_WaterBodySegment" class="wikilink">HY_WaterBodySegment</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66113>" title="jump to item on this page"\> / <a href="HY_WaterBodyStratum" class="wikilink">HY_WaterBodyStratum</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66132>" title="jump to item on this page"\> / <a href="HY_Water_LiquidPhase" class="wikilink">HY_Water_LiquidPhase</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66151>" title="jump to item on this page"\> / <a href="HY_Water_SolidPhase" class="wikilink">HY_Water_SolidPhase</a>\</a\>
- \<a href="<http://unsdi-dev.csiro.au/sissvoc/ftc/featuretypes.rdf?_format=html&_properties=label,comment&_view=basic&_pageSize=50&uri=http://demo.sirf.net/def/schema/hy_features/abstracthydrofeature&_page=0#N66170>" title="jump to item on this page"\> / <a href="HY_Watershed" class="wikilink">HY_Watershed</a>\</a\>

# Gaugings

## Flow measurement method

I've created a vocab for this based on the ISO measurement of flow in open channels (the terms are shown in above diagram). USGS also has the following:

<http://help.waterdata.usgs.gov/code/meas_type_query?fmt=html>

\<table border="2" style="width: 100%;"\> \<tbody\> \<tr bgcolor="#EEEEEE"\>\<th\>Q Meas Type Cd\</th\>\<th\>Q Meas Type Nm\</th\>\<th\>Q Meas Type Ds\</th\>\</tr\> \<tr\> \<td\>UNSP\</td\> \<td\>Unspecified\</td\> \<td\>Discharge measurement made by an unspecified method\</td\> \</tr\> \<tr\> \<td\>WADE\</td\> \<td\>Wading\</td\> \<td\>Discharge measurement made by wading into the water.\</td\> \</tr\> \<tr\> \<td\>BRUS\</td\> \<td\>Bridge upstream side\</td\> \<td\>Discharge measurement made from a bridge on the upstream side.\</td\> \</tr\> \<tr\> \<td\>BRDS\</td\> \<td\>Bridge downstream side\</td\> \<td\>Discharge measurement made from a bridge on the downstream side.\</td\> \</tr\> \<tr\> \<td\>CWAY\</td\> \<td\>Cableway\</td\> \<td\>Discharge measurement made from cableway.\</td\> \</tr\> \<tr\> \<td\>ICE\</td\> \<td\>Ice\</td\> \<td\>Discharge measurement made through river ice.\</td\> \</tr\> \<tr\> \<td\>MBOT\</td\> \<td\>Manned moving boat\</td\> \<td\>Discharge measurement made from a moving manned boat.\</td\> \</tr\> \<tr\> \<td\>SBOT\</td\> \<td\>Stationary boat\</td\> \<td\>Discharge measurement made from a stationary manned boat.\</td\> \</tr\> \<tr\> \<td\>RC\</td\> \<td\>Remote control boat\</td\> \<td\>Discharge measurement using a remote control boat.\</td\> \</tr\> \<tr\> \<td\>OTHR\</td\> \<td\>Other\</td\> \<td\>Discharge measurement was made by other means.\</td\> \</tr\> \<tr\> \<td\>BOAT\</td\> \<td\>Boat\</td\> \<td\>Discharge measurement was made from a boat (only used for tranfer not user-selectable).\</td\> \</tr\> \<tr\> \<td\>CRAN\</td\> \<td\>Bridge (crane)\</td\> \<td\>Discharge measurement was made using a bridge crane (only used for tranfer not user-selectable).\</td\> \</tr\> \</tbody\> \</table\> Most of these map to the ISO ones; however the ISO one is missing ice.

## Relative direction

We currently only two showing, but USGS has following (from <http://help.waterdata.usgs.gov/code/chan_location_query?fmt=html>): \<table border="2" style="width: 100%;"\> \<tbody\> \<tr bgcolor="#EEEEEE"\>\<th\>Gage Rel Loc Cd\</th\>\<th\>Gage Rel Loc Nm\</th\>\<th\>Gage Rel Loc Ds\</th\>\</tr\> \<tr\> \<td\>UNSP\</td\> \<td\>Unspecified\</td\> \<td\>The relative location of the measurement section was not specified by user.\</td\> \</tr\> \<tr\> \<td\>ATGA\</td\> \<td\>At the gage\</td\> \<td\>The measurement section was at the gage.\</td\> \</tr\> \<tr\> \<td\>UPST\</td\> \<td\>Upstream\</td\> \<td\>The measurement section was upstream from the gage\</td\> \</tr\> \<tr\> \<td\>DNST\</td\> \<td\>Downstream\</td\> \<td\>The measurement section was downstream from the gag\</td\> \</tr\> \</tbody\> \</table\>

## Control conditions

USGS codes (<http://help.waterdata.usgs.gov/codes-and-parameters/rating-control-condition-code-control_type_cd>):

```
UNSP         The stream control conditions were not specified.
AICE         The stream control is covered with anchor ice.
CICE         The stream control was convered by ice.
CLER         The stream control was clear of any obstructions.
FILL         The stream control was filled.
HVDB         The stream control was heavily covered with debris.
LGDB         The stream control was lightly covered with debris.
ALGA         The stream control was covered with moss/algae.
MAHV         The stream control was heavily covered with moss/algae.
MALT         The stream control was lightly covered with moss/algae.
MAMD         The stream control was moderately covered with moss/algae.
MDDB         The stream control was moderately covered with debris.
NFLW         There was no flow over the stream control.
SCUR         The stream control has scour conditions.
SICE         The stream control has shore ice.
SUBM         The stream control was submerged.
```

## Stage determination method\\

Straight from USGS (<http://help.waterdata.usgs.gov/codes-and-parameters/water-level-method-codes-siwlmt.edi>)

```
---------------------------------
<strong>Code</strong>  <strong>Description</strong>
---------------------------------
A     Airline          Airline measurement.
B     Analog           Analog or graphic recorder.
C     Calib. airline   Calibrated airline measurement.
E     Estimated        Estimated.
F     Transducer       Transducer.
G     Pressure-gage    Pressure-gage measurement.
H     Calib.Pres.Gage  Calibrated pressure-gage measurement.
L     Geophysical log  Interpreted from geophysical logs.
M     Manometer        Manometer measurement.
N     Nonrec. gage     Nonrecording gage.
O     Observed         Observed.
P     Acoustic Pulse   Acoustic Pulse measurement
R     Reported         Reported, method not known.
S     Steel tape       Steel-tape measurement.
T     Electric tape    Electric-tape measurement.
V     Calib.Elec.Tape  Calibrated electric-tape measurement.
W     Calib.Elec.Cable Calibrated electric cable.
X     Uncal.Elec.Cable Uncalibrated electric cable.
Z     Other            Other.
```

## Velocity method (not currently in the model)

We should probably add this to the gauging method metadata. From <http://help.waterdata.usgs.gov/code/velocity_method_query?fmt=html>:

\<table border="2" style="width: 100%;"\> \<tbody\> \<tr bgcolor="#EEEEEE"\>\<th\>Meth Cd\</th\>\<th\>Meth Tp\</th\>\<th\>Meth Nm\</th\>\<th\>Meth Ds\</th\>\</tr\> \<tr\> \<td\>SADVM\</td\> \<td\>SWVL\</td\> \<td\>Velocity, Sideways looking ADVM\</td\> \<td\>Stream velocity measured using a sideways looking acoustic doppler velocity meter.\</td\> \</tr\> \<tr\> \<td\>UADVM\</td\> \<td\>SWVL\</td\> \<td\>Velocity, Upward looking ADVM\</td\> \<td\>Stream velocity measured using an upward looking acoustic doppler velocity meter.\</td\> \</tr\> \<tr\> \<td\>V-EST\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, estimated\</td\> \<td\>Stream velocity, estimated\</td\> \</tr\> \<tr\> \<td\>VADCP\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, ADCP\</td\> \<td\>Stream velocity, acoustic doppler current profiler\</td\> \</tr\> \<tr\> \<td\>VADV\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, ADV\</td\> \<td\>Stream velocity, acoustic doppler velocimeter\</td\> \</tr\> \<tr\> \<td\>VELC\</td\> \<td\>SWVL\</td\> \<td\>Velocity,Electromagnetic Vel Mtr\</td\> \<td\>Stream velocity measured using an Electromagnetic Velocity Meter\</td\> \</tr\> \<tr\> \<td\>VICE\</td\> \<td\>SWVL\</td\> \<td\>Stream Velocity, Ice Vane Meter\</td\> \<td\>Stream velocity measured with Ice Vane Meter\</td\> \</tr\> \<tr\> \<td\>VIPAA\</td\> \<td\>SWVL\</td\> \<td\>Velocity, Polymer Cup AA Meter\</td\> \<td\>Stream Velocity measured with a Price AA meter with polymer cups\</td\> \</tr\> \<tr\> \<td\>VIPYG\</td\> \<td\>SWVL\</td\> \<td\>Velocity,Polymer Cup Pygmy Meter\</td\> \<td\>Stream Velocity measured with a Price Pygmy meter with polymer cups\</td\> \</tr\> \<tr\> \<td\>VOPT\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, optical current\</td\> \<td\>Velocity measured by a surface velocity stroboscopic device\</td\> \</tr\> \<tr\> \<td\>VOTT\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, horiz. shaft\</td\> \<td\>Stream velocity, horizontal shaft (Ott) meter\</td\> \</tr\> \<tr\> \<td\>VPAA\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, Price AA\</td\> \<td\>Stream velocity, Price AA meter\</td\> \</tr\> \<tr\> \<td\>VPYG\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, pygmy\</td\> \<td\>Stream velocity, Price pygmy meter\</td\> \</tr\> \<tr\> \<td\>VRAD\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, radar\</td\> \<td\>Stream velocity, radar\</td\> \</tr\> \<tr\> \<td\>VTIME\</td\> \<td\>SWVL\</td\> \<td\>Stream Velocity, Time of Travel\</td\> \<td\>Stream velocity measured by any time of travel method\</td\> \</tr\> \<tr\> \<td\>VTRNS\</td\> \<td\>SWVL\</td\> \<td\>NWIS 4.8 Transferred Velocity\</td\> \<td\>The method used to measure the velocity is not known.\</td\> \</tr\> \<tr\> \<td\>VULT\</td\> \<td\>SWVL\</td\> \<td\>Stream velocity, ultrasonic\</td\> \<td\>Stream velocity, ultrasonic meter\</td\> \</tr\> \</tbody\> \</table\>

## Water state

Straight from USGS (<http://help.waterdata.usgs.gov/code/hydro_conditions_query?fmt=html>) \<table border="2" style="width: 100%;"\> \<tbody\> \<tr bgcolor="#EEEEEE"\>\<th\>Hyd Cond Cd\</th\>\<th\>Hyd Cond Nm\</th\>\</tr\> \<tr\> \<td\>4\</td\> \<td\>Stable, low stage\</td\> \</tr\> \<tr\> \<td\>5\</td\> \<td\>Falling stage\</td\> \</tr\> \<tr\> \<td\>6\</td\> \<td\>Stable, high stage\</td\> \</tr\> \<tr\> \<td\>7\</td\> \<td\>Peak stage\</td\> \</tr\> \<tr\> \<td\>8\</td\> \<td\>Rising stage\</td\> \</tr\> \<tr\> \<td\>9\</td\> \<td\>Stable, normal stage\</td\> \</tr\> \<tr\> \<td\>A\</td\> \<td\>Not determined\</td\> \</tr\> \<tr\> \<td\>X\</td\> \<td\>Not applicable\</td\> \</tr\> \</tbody\> \</table\>

## Quality

The quality codes could apply to the stage measurement, the discharge measurement or an overall 'gauging quality'. This needs discussion. We also have the generic waterml2 part 1 codes: <http://www.opengis.net/def/waterml/2.0/quality/>

### Discharge quality

| Term | Definition | Reference(s) |
|:---|:---|:---|
| Excellent | The data is within 2% (percent) of the actual flow | <http://help.waterdata.usgs.gov/codes-and-parameters/discharge-measurement-quality-code> |
| Good | The data is within 5% (percent) of the actual flow | <http://help.waterdata.usgs.gov/codes-and-parameters/discharge-measurement-quality-code> |
| Fair | The data is within 8% (percent) of the actual flow | <http://help.waterdata.usgs.gov/codes-and-parameters/discharge-measurement-quality-code> |
| Poor | The data is within \>8% (percent) of the actual flow | <http://help.waterdata.usgs.gov/codes-and-parameters/discharge-measurement-quality-code> |

# Cross-sections

TODO\<br /\>\<br /\>

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 14 Mar 2014

- TOPICINFO{author="<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" comment="reprev" date="1395026678" format="1.1" reprev="1" version="2"}

<!-- -->

- TOPICPARENT{name="<a href="ApplicationProgrammingInterfaceDevelopment" class="wikilink">ApplicationProgrammingInterfaceDevelopment</a>"}

<!-- -->

- FILEATTACHMENT{name="Capture.PNG" attachment="Capture.PNG" attr="" comment="" date="1394765975" path="Capture.PNG" size="53963" user="<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" version="1"}
