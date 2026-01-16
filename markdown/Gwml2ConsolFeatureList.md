-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 19 Dec 2012

# GWML 2 Consolidated Entity List

This page is organised to reflect the consolidated feature list for GWML 2. The features were selected from the [complete feature list](Gwml2EntityList) found in the various groundwater models.

------------------------------------------------------------------------

See \<a href="<a href="Gwml2ConsolFeatureListDiscussionPage" class="wikilink">Gwml2ConsolFeatureListDiscussionPage</a>" title="Topic revision: 8 (05 Feb 2013 - 16:15:49)"\><a href="Gwml2ConsolFeatureListDiscussionPage" class="wikilink">Gwml2ConsolFeatureListDiscussionPage</a>\</a\>

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 05 Feb 2013

------------------------------------------------------------------------

The discussions from this page resulted in the \<a href="gwml2FinalFeaturesList" title="gwml 2 Final Features Liat"\>gwml2FinalFeaturesList\</a\> page

-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 18 Jun 2013

## Index of Entities

Hydrogeologic Units

- <span class="twiki-macro BLACK"></span> [Hydrogeologic Unit](#HydrogeologicUnit) <span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro BLACK"></span> [Hydrogeologic Stratum](#HydrogeologicStratum) <span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro BLACK"></span> [Aquifer System](#AquiferSystem) <span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro BLACK"></span> [Aquifer](#Aquifer) <span class="twiki-macro ENDCOLOR"></span>
- [Aquitard](#Aquitard)
- [Confining Bed](#ConfiningBed)
- [Geologic Unit](#GeologicUnit)
- [Groundwater Basin](#GroundwaterBasin)
- [Hydrogeologic Object](#HydrogeologicObject)
- [Hydrogeologic Mapped Feature](#HydrogeologicMappedFeature)

Groundwater Occurences

- [Spring](#Spring)

Hydrogeologic Boundaries

- [Groundwater Divide](#GroundwaterDivide)
- [Hydraulic Boundary](#HydraulicBoundary)
- [Groundwater Dam](#GroundwaterDam)

Hydrogeologic Description

- [Aquifer Parameters](#AquiferParameters)

Groundwater Quantity

- [Groundwater Level](#GroundwaterLevel)
- [Piezometric Surface](#PiezometricSurface)
- [Potentiometric Surface](#PotentiometricSurface)
- [Recharge Area](#RechargeArea)
- [Discharge Area](#DischargeArea)
- [Groundwater Flow](#GroundwaterFlow)
- [Groundwater Body](#GroundwaterBody)
- [Water Body](#WaterBody)
- [Other Water Bodies](#OtherWaterBodies)
- [Groundwater Volume](#GroundwaterVolume)
- [Groundwater Yield](#GroundwaterYield)
- [Reservoir](#Reservoir)
- [Groundwater Layer](#GroundwaterLayer)
- [Cone of Depression](#ConeOfDepression)
- [Zone of Contribution](#ZoneOfContribution)
- [Zone of Influence](#ZoneOfInfluence)

Groundwater Management

- [Water Budget](#WaterBudget)
- [Protected Area](#ProtectedArea)
- [Groundwater Management Zone](#GroundwaterManagementZone)
- [River Basin District](#RiverBasinDistrict)

Groundwater Testing

- [Hydraulic Testing](#HydraulicTesting)

Groundwater Ecosystem

- [Groundwater Dependent Ecosystem](#GroundwaterDependentEcosystem)

Groundwater Quality

- [Groundwater Quality Description](#GroundwaterQualityDescription)
- [Groundwater Composition](#GroundwaterComposition)
- [Groundwater Biology](#GroundwaterBiology)

Groundwater Sampling Features and Wells

- [Water Well](#WaterWell)
- [Well Log](#WellLog)
- [Well Field](#WellField)
- [Monitoring Site](#MonitoringSite)
- [Well Construction Elements](#WellConstructionElements)
- [Pump](#Pump)

## Entity List

<span class="twiki-macro TABLE" tableborder="2" tablebordercolor="#D3D3D3" tableframe="below">cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline" </span> \| **Scope** \| Feature \| **Definition** \| **Related Term** \| **Use Case** \| **GWML1** \| **Inspire** \| **HY Feat.** \| **Other** \|

|  |  |  |  |  |  |  |  |  |
|----|----|----|----|----|----|----|----|----|
|  | \<a name="<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>"\>\</a\>Hydrogeologic Unit |  |  | u |  |  |  |  |
|  |  | Hydrogeologic unit (1) Any soil or rock unit or zone which by virtue of its hydraulic properties has a distinct influence on the storage or movement of groundwater (after ANS, 1980). |  |  | g |  |  |  |
|  |  | A part of the lithosphere with distinctive parameters for water storage and conduction. |  |  |  | i |  |  |
|  |  | A formation or zone of geological material (rock or soil ) with hydrologically significant characteristics. |  |  |  |  | h |  |
|  | \<a name="<a href="HydrogeologicStratum" class="wikilink">HydrogeologicStratum</a>"\>\</a\>Hydrogeologic Stratum |  |  |  |  |  |  |  |
|  |  | A layer (stratum) of material (rock or soil) dividing a hydrogeologic unit by water bearing characteristics. \<br /\>Note: refers to the vertical stratification within the hydrogeologic unit. |  |  |  |  | h |  |
|  | \<a name="<a href="AquiferSystem" class="wikilink">AquiferSystem</a>"\>\</a\>Aquifer System |  |  |  |  |  |  |  |
|  |  | \<ul\> \<li\>Collection of hydrogeological units composing a system of interacting components. By virtue of being a Geologic Unit, it derives from it the 'part' property (GWML 1).\</li\> \<li\>Aquifer system - A body of permeable and poorly permeable material that functions regionally as a water-yielding unit; it comprises two or more permeable beds separated at least locally by confining beds that impede groundwater movement but do not greatly affect the regional hydraulic continuity of the system; includes both saturated and unsaturated parts of permeable material (after ASCE, 1985).\</li\> \<li\><span class="twiki-macro GREEN"></span> **COMMENT \[ID\]:** a system is not a really "body"%ENDCOLOR%\</li\> \</ul\> |  |  | g |  |  |  |
|  |  | \<ol\> \<li\>A collection of aquifers and aquitards, which together constitute the environment of groundwater. - "communicating vessels", that are filled or can be filled with water.\</li\> \<li\>A collection of hydraulically connected aquifers and aquitards, which together constitute the environment of groundwater \<strike\>- "communicating vessels", that are filled or can be filled with water\</strike\>.\</li\> \</ol\> |  |  |  | i |  |  |
|  |  | The topological relationships to be declared between hydrologically connected or interrelated aquifers, including the confining strata. |  |  |  |  | h |  |
|  | \<a name="Aquifer"\>\</a\>Aquifer |  |  | u |  |  |  |  |
|  |  | A formation, group of formations, or part of a formation that contains sufficient saturated permeable material to yield significant quantities of water to wells and springs (after Lohman and others, 1972). |  |  | g |  |  |  |
|  |  | A wet underground layer of water-bearing permeable rock or unconsolidated materials (gravel, sand, silt, or clay) from which groundwater can be usefully extracted using a water well. |  |  |  | i |  |  |
|  |  | A water-bearing layer of rock that will yield water in a usable quantity to a well or spring (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" target="\_blank" title="Heath 1983"\>Heath, 1983\</a\>) |  |  |  |  |  | o |
|  |  | ‘Aquifer’ means a subsurface layer or layers of rock or other geological strata of sufficient porosity and permeability to allow either a significant flow of groundwater or the abstraction of significant quantities of groundwater. |  |  |  |  |  | eu_WFD |
|  |  | A permeable water-bearing formation capable of yielding exploitable quantities of water. an aquifer may be part of a system of hydraulically connected aquifers. IGH0064\<br /\>Note: not to be confused with (underground) reservoir which refers to a body of water used for storage. |  |  |  |  | h |  |
|  | \<a name="Aquitard"\>\</a\>Aquitard | <span class="twiki-macro GREEN"></span> **DISCUSSION** : should we keep aquitard as a separate feature or integrate it into confining bed? \<br /\><span class="twiki-macro ENDCOLOR"></span> |  |  |  |  |  |  |
|  |  | **%GREEN%COMMENT*:*<span class="twiki-macro ENDCOLOR"></span>**%GREEN%See underlined fragment of definition below and quotation from Domenico & Schwartz 1998: "the terms aquifer and aquitard are ambiguous". Aquitards play significant roles for water flow in aquifer systems. \[JM\]<span class="twiki-macro ENDCOLOR"></span> |  |  |  | i |  |  |
|  | \<a name="<a href="ConfiningBed" class="wikilink">ConfiningBed</a>"\>\</a\>Confining Bed | <span class="twiki-macro GREEN"></span> \_(merged from aquitard and aquiclude features)\_ <span class="twiki-macro ENDCOLOR"></span> | Aquiclude, Aquitard |  |  |  |  |  |
|  |  | \<ol\> \<li\>A layer of rock having very low hydraulic conductivity that hampers the movement of water into and out of an aquifer (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" target="\_blank" title="Heath 1983"\>Heath 1983\</a\>)\</li\> \<li\>A layer of rock having very low porosity and in consequence hydraulic conductivity that hampers the movement of water into and out of an aquifer (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" target="\_blank" title="Heath 1983"\>Heath 1983\</a\>)\</li\> \</ol\> |  |  |  |  |  | o |
|  |  | A formation overlying or underlying a much more permeable aquifer. |  |  |  |  | h |  |
|  |  | \<ul\> \<li\>Aquiclude - A hydrogeologic unit which, although porous and capable of storing water, does not transmit it at rates sufficient to furnish an appreciable supply for a well or spring (after WMO, 1974).\</li\> \<li\>Aquitard - a saturated, but poorly permeable bed that impedes ground-water movement and does not yield water freely to wells, \<u\>but which may transmit appreciable water to or from adjacent aquifers and, where sufficiently thick, may constitute an important ground-water storage unit\</u\>. Aquitards are characterized by values of leakance that may range from relatively low to relatively high. Areally extensive aquitards of relatively low leakance may function regionally as boundaries of aquifer flow systems. <http://water.nv.gov/WaterPlanning/dict-1/PDFs/wwords-a.pdf>\</li\> \</ul\> |  |  | g |  |  |  |
|  |  | \<ul\> \<li\>Aquiclude - an impermeable body of rock or stratum of sediment that acts as a barrier to the flow of groundwater.\</li\> \<li\>Aquitard - a saturated, but poorly permeable bed that impedes groundwater movement.\</li\> \</ul\> |  |  |  | i |  |  |
|  |  | \<ul\> \<li\>Aquiclude - a saturated bed, formation, or group of formations of low hydraulic conductivity which yield inappreciable quantities of water to drains, wells, springs and seeps. IGH0063\</li\> \<li\>Aquitard - a geological formation of a rather impervious and semi-confining nature which transmits water at a very slow rate compared with an aquifer. IGH0067\</li\> \</ul\> |  |  |  |  | h |  |
|  | \<a name="<a href="GeologicUnit" class="wikilink">GeologicUnit</a>"\>\</a\>Geologic Unit |  |  | u |  |  |  |  |
|  |  | A volume of rock with distinct characteristics. |  |  |  | i |  |  |
|  | \<a name="<a href="GroundwaterBasin" class="wikilink">GroundwaterBasin</a>"\>\</a\>Groundwater Basin | <span class="twiki-macro GREEN"></span> **COMMENT \[ID\]**: area is a 2D representation of a unit. groundwaterbasin is an abstract unit of study or reporting multiple represented in the real world, e.g. an area, groundwater divide, aquifer system, ...<span class="twiki-macro ENDCOLOR"></span> |  | u |  |  |  |  |
|  |  | The underground %GREEN%area (?, see comment above, ID)<span class="twiki-macro ENDCOLOR"></span> from which groundwater drains. The basins could be separated by geologic or hydrologic boundaries (<http://www.groundwater.org/gi/gwglossary.html#G>) |  |  |  |  |  | o |
|  |  | \<font face="Arial" size="2"\>A groundwater basin (usually a \<a href="<http://www.ga.gov.au/groundwater/groundwater-in-australia/sedimentary-basins.html>" target="\_blank" title="GA sedimentary basin"\>sedimentary basin\</a\>) that covers a large %GREEN%area (?, see commetn above, ID)<span class="twiki-macro ENDCOLOR"></span> and delineates a natural hydrogeological province. It may contain several hydrogeologic units, aquifers, confining beds and groundwater systems (based on <http://www.ga.gov.au/groundwater/groundwater-in-australia.html> and <http://vro.dpi.vic.gov.au/dpi/vro/vrosite.nsf/pages/water-vics-gwater-basins> )\</font\> |  |  |  |  |  | o |
|  |  | Groundwater resources of the region are subdivided into groundwater basins on the basis of: (1) a natural boundary that does not change with time, such as one determined by structural features, intervening layers, or aquifer extent; (2) a boundary that may change with time, such as an underground watershed or groundwater divide which may change in response to pumpage or recharge; or (3) a boundary designated solely for administrative or operative reasons. (<http://exact-me.org/overview/p11.htm>) \[BB\] |  |  |  |  |  |  |
|  |  | \<font face="Arial" size="2"\>Physiographic unit containing one large or several connected or interrelated aquifers, whose waters are flowing to a common outlet, and which is delimited by a groundwater divide. IGH0552\</font\> |  |  |  |  |  |  |
|  | \<a name="<a href="HydrogeologicObject" class="wikilink">HydrogeologicObject</a>"\>\</a\>Hydrogeologic Object |  |  |  |  |  |  |  |
|  |  | An abstract class for man-made facilities or natural features that have an interaction with the hydrogeological system. | \<p\>Hydrogeological Object Man Made\</p\> \<p\>Hydrogeological Object Natural\</p\> |  |  | i |  |  |
|  | \<a name="<a href="HydroGeologicMappedFeature" class="wikilink">HydroGeologicMappedFeature</a>"\>\</a\>Hydrogeologic Mapped Feature | **FOR CONSIDERATION:**This feature needs to be defined |  |  |  |  |  |  |
|  |  | A spatial representation of a <a href="GeologicFeature" class="wikilink">GeologicFeature</a>. |  |  |  | i |  |  |
|  |  |  |  |  | g |  |  |  |
|  | \<a name="Spring"\>\</a\>Spring | **FOR CONSIDERATION**: This feature needs to be defined |  | u |  |  |  |  |
|  |  | Type of the HG | Object Natural - there is a code list (e.g. Spring : Any natural situation where groundwater flows to the surface of the earth. Thus, a spring is a site where the aquifer surface meets the ground surface. |  |  |  | i |  |
|  | \<a name="<a href="GroundwaterDivide" class="wikilink">GroundwaterDivide</a>"\>\</a\>Groundwater Divide | <span class="twiki-macro GREEN"></span> **DISCUSSION**: \_Is it a synonym of groundwater watershed? Groundwater watershed is not a boundary. It is a result of groundwater body state and can be changed in time. \[JM\]\_ <span class="twiki-macro ENDCOLOR"></span> |  |  |  |  |  |  |
|  |  | The boundary between two adjacent groundwater basins, which is represented by a high point in the water table. <http://www.groundwater.org/gi/gwglossary.html#D> \<br /\>\<br /\>%GREEN%**COMMENT**: %ENDCOLOR%%GREEN%*Term very unclear. Basin is a concept in regional scale.*<span class="twiki-macro ENDCOLOR"></span> |  |  | g |  |  |  |
|  |  | <span class="twiki-macro GREEN"></span> **Text replaced\[ID\]**: Line on a water table or piezometric surface on either side of which the groundwater flow diverges.<span class="twiki-macro ENDCOLOR"></span> IGH0556 |  |  |  |  | h |  |
|  | \<a name="<a href="HydraulicBoundary" class="wikilink">HydraulicBoundary</a>"\>\</a\>Hydraulic Boundary |  |  |  |  |  |  |  |
|  |  | A hydrologic feature that prevents the flow of groundwater. Examples include groundwater divides or low permeability material that impedes groundwater flow. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> \<br /\>\<br /\>%GREEN%**COMMENT**:<span class="twiki-macro ENDCOLOR"></span> %GREEN%In groundwater hydrodynamics, boundary is surface closing groundwater flow system space (collection of connected together groundwater bodies). Boundary can be formed by ground surface, aquiclude, surface waters (likes and rivers), man-made objects etc. In that case well is a boundary too, it is “internal point boundary”. Different kinds of boundaries have different kinds of conditions, for example definite hydraulic head, velocity (quantity) of flow or linear combination of both. \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span> |  |  | g |  |  |  |
|  | \<a name="<a href="GroundwaterDam" class="wikilink">GroundwaterDam</a>"\>\</a\>Groundwater Dam |  |  |  |  |  |  |  |
|  |  | Body of material which is impermeable or has only low permeability and which occurs below the surface in such a position that it impedes groundwater flow. IGH0553 |  |  |  |  | h |  |
|  | \<a name="<a href="AquiferParameters" class="wikilink">AquiferParameters</a>"\>\</a\>Aquifer Parameters |  |  |  |  |  |  |  |
|  |  | \<ol\> \<li\>A measured or calculated physical or hydraulic property of an aquifer such as hydraulic conductivity, Transmissivity, Storativity, porosity, effective porosity, Specific Yield and Retention, Specific Capacity, etc. usually measured at a well or series of wells (based on \<a href="<http://pubs.usgs.gov/wsp/wsp2220/>" title="Heath 1983"\>Heath 1983\</a\>, Freeze & Cherry 1979, Fetter 2001)\</li\> \<li\> \<p\>A measured or calculated physical or hydraulic property of an aquifer such as hydraulic conductivity, Transmissivity, Storativity, porosity, effective porosity, Specific Yield (drainable porosity) and Retention (non-drainable porosity), Specific Capacity (it is well parameter), etc. usually measured at a well or series of wells (based on \<a href="<http://pubs.usgs.gov/wsp/wsp2220/>" title="Heath 1983"\>Heath 1983\</a\>, Freeze & Cherry 1979, Fetter 2001) (it can be also measured in laboratory on base of aquifer samples)\</p\> \</li\> \</ol\>\<p\>Values of aquifer parameters can be different in different parts of aquifer.\</p\> \<p\>The main aquifer parameters are:\</p\> \<ul\> \<li\>Porosity – part of rock that is void space: *n = V\<sub\>V\</sub\>/V\<sub\>T\</sub\>*, expressed as a decimal fraction.\</li\> \<li\>Effective porosity – concerns connected spaces only: *n\<sub\>e\</sub\>*.\</li\> \<li\>Hydraulic conductivity – proportionality constant (\_K\_) in Darcy’s law:\<br /\>*v\<sub\>d\</sub\> = –K*grad \_h\_,\</li\> \<li\>Transmissivity – Hydraulic conductivity of aquifer profile: \_T = K b\_ (formula for homogeneous aquifer only).\</li\> \<li\>Storativity – storage coefficient (limited to elasticity of volume) of aquifer profile: \_S = S\<sub\>s\</sub\> b\_ (formula for homogeneous aquifer only).\</li\> \<li\>Specific Yield – (drainable porosity) part of water drained under the influence of gravity.\</li\> \<li\>(based on Domenico & Schwartz 1998, Hiscock 2005)\</li\> \</ul\> |  |  |  |  |  |  |
|  | \<a name="<a href="GroundwaterLevel" class="wikilink">GroundwaterLevel</a>"\>\</a\>Groundwater Level | \<p\><span class="twiki-macro GREEN"></span> **TO BE DISCUSSED**: the four following features need to be evaluated and properly defined (gw level, piezometric surface, piezometric head, potentiometric surface)%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT:** \_This requires a tighter definition to distinguish between Standing Water Level and Relative Water Level. \[PD\]\_ %ENDCOLOR%\</p\> \<p\>**%GREEN%COMMENT: <span class="twiki-macro ENDCOLOR"></span>**%GREEN%Terms: Groundwater Level, Piezometric Level and Potentiometric Surface are very similar and it is very complex problem. It needs separate discussion. See image attached on the end. The most commonly used (and I think most correct) term is "hydraulic head" as a sum of "elevation head" and "pressure head" expressed in height unites. Groundwater table we can see in wells only. In aquifer this surface is invisible and very difficult to determine. Correct definition is: "surface where pressure in water is equal to pressure of atmospheric air – pressure head is equal zero. It is only one surface in underground and may have very complicated shape. It can run through many aquifers and aquitards in one aquifer system". \[JM\]\<br /\>%ENDCOLOR%\</p\> \<p\>**%GREEN%COMMENT: <span class="twiki-macro ENDCOLOR"></span>**%GREEN%The INSPIRE <a href="PiezometricState" class="wikilink">PiezometricState</a> is not quite an equivalent of Piezometric surface, rather the <a href="PiezometricState" class="wikilink">PiezometricState</a> is the Piezometric surface of a <a href="GroundWaterBody" class="wikilink">GroundWaterBody</a> at a particular time. The INSPIRE definition of piezometric surface is ‘A surface that represents the level to which water will rise in tightly cased wells’ , so the same as GWML1. I think Groundwater body/Groundwater Level/ Piezometric surface/Potentiometric level need a bit of thought! %ENDCOLOR%%GREEN%\[JL\]%ENDCOLOR%\</p\> \<p\>**%GREEN%**COMMENT:****%ENDCOLOR%\</b\>%GREEN%In my view two surfaces are sufficient to describe the system: the upper boundary of the groundwater body (<a href="GroundwaterSurface" class="wikilink">GroundwaterSurface</a>?) and the upper boundary of groundwater pressure to athmosphere (<a href="PiezometricHead" class="wikilink">PiezometricHead</a>?) - which are equal in case of unconfined aquifer and differ in confined (incl. artesian) areas. \[BW\]%ENDCOLOR%**%GREEN%\<br /\><span class="twiki-macro ENDCOLOR"></span>**\</p\> |  | u |  |  |  |  |
|  |  | \<p\>Measurement of the elevation of water in an aquifer. Includes static and dynamic groundwater level (GWML 1). Typically, the groundwater level measurements come from an observation well.\</p\> \<p\>\<br /\>%GREEN%**COMMENT**: more precision on static and dynamic required<span class="twiki-macro ENDCOLOR"></span>. %GREEN%\[JM\]%ENDCOLOR%\<br /\>%GREEN%**COMMENT**: is GW Level a measurement or a feature. **TO BE DISCUSSED**\[JL\] %ENDCOLOR%\</p\> \<p\> **COMMENT\[ID\]:** I think of "water level" as an observed property (of a feature) of which a value is estimated using a sampling feature, according to O&M\</p\> |  |  | g |  |  |  |
|  |  | \<p\>Hydrogeological Surface: A surface that represents the interpolated groundwater table, or other surface, for a local or regional area.\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: (In INSPIRE model Hydrogeological Surface is not a feature. It is <a href="DataType" class="wikilink">DataType</a> in form of \<\<Union\>\> of 3 coverage types. But coverages belong to features in GML.) %ENDCOLOR%\</p\> \<p\>%GREEN%As I know comment from Jessica and David for Use Case 4 interpolated and modeled data are outside scope of <a href="GW2IE" class="wikilink">GW2IE</a> ("only 'observed' data will be required from the standard data model. 'Interpolated' or 'modeled' data is not included."). In consequence all features in form of surface or outlined by surfaces should be omitted here. It concerns contour maps also. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: Surfaces are prerequisite for determining many features like volume, boundary, flow etc. \[BW\] 3D surfaces \[HK\]\<br /\>%ENDCOLOR%\</p\> | Hydrogeological Surface |  |  | i |  |  |
|  |  | \<p\>%BLACK%The standing water level (SWL) measured at a particular time in a groundwater bore or piezometer. The measurement may be stated as depth below ground (natural surface) or measured from a designated point on the well head. In a piezometer or in a sub-artesian bore the groundwater level is related to pressure at a point in the aquifer (i.e. the head at the screened interval). In an artesian bore the value may be a negative number.%ENDCOLOR%\</p\> \<p\>\[HK\] Preferably a simple base datum?\</p\> |  |  |  |  |  | o |
|  |  | %BLACK%Elevation, at a certain location and time, of the water table or piezometric surface of an aquifer. IGH0559<span class="twiki-macro ENDCOLOR"></span> |  |  |  |  | h |  |
|  | \<a name="<a href="PiezometricSurface" class="wikilink">PiezometricSurface</a>"\>\</a\>Piezometric Surface | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: SAME AS POTENTIOMETRIC SURFACE ?? TO BE REVIEWED \[FL\]\<br /\>%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: See comment to Groundwater Level. \[JM\]\<br /\>%ENDCOLOR%\</p\> | Piezometric Level |  |  |  |  |  |
|  |  | A surface that represents the level to which water will rise in tightly cased wells. If the head varies significantly with depth in the aquifer, then there may be more than one potentiometric surface. The water table is a particular potentiometric surface for an unconfined aquifer. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | \<p\>The piezometric state of a groundwater body; Groundwater state (level) as a surface. It can be a set of point observations or interpolated to form a coverage. (Description field)\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: In INSPIRE model, Piezometric State is not a feature, it is Data Type. \[JM\]\<br /\>%ENDCOLOR%\</p\> | Piezometric State |  |  | i |  |  |
|  |  | <span class="twiki-macro GREEN"></span> **WMO def Included\[ID\]**:Surface joining points which are at an elevation equal to the piezometric head in a given aquifer.IGH 0908<span class="twiki-macro ENDCOLOR"></span> |  |  |  |  |  |  |
|  | \<a name="<a href="PiezometricHead" class="wikilink">PiezometricHead</a>"\>\</a\>Piezometric Head |  |  |  |  |  |  |  |
|  |  | \(1\) Elevation to which water will rise in a piezometer connected to a point in an aquifer. IGH0907\<br /\>(2) Sum of the elevation and the pressure head in a liquid, expressed in units of height.IGH0907 |  |  |  |  | h |  |
|  | \<a name="<a href="PotentiometricSurface" class="wikilink">PotentiometricSurface</a>"\>\</a\>Potentiometric Surface | <span class="twiki-macro GREEN"></span> **COMMENT**: See comment to Groundwater Level and Hydrogeological Surface. \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span> |  |  |  |  |  |  |
|  |  | A surface that represents the total head in an aquifer; that is, it represents the height above a datum plane at which the water level stands in tightly cased wells that penetrate the aquifer (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" target="\_blank" title="Heath 1983"\>Heath 1983\</a\>) |  |  |  |  |  | o |
|  |  | Surface joining points which are at an elevation equal to the piezometric head in a given aquifer. IGH0908 |  |  |  |  | h |  |
|  | \<a name="<a href="RechargeArea" class="wikilink">RechargeArea</a>"\>\</a\>Recharge Area | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I think "Recharge Site" is better term. Site can be planar (area of surface infiltration), linear (infiltration from river for example) or point (karstic ponor) \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT \[ID\]**: recharge area is a 2D representation (projected onto land surface) of the (contributing) hydrogeologic unit %ENDCOLOR%\</p\> \<p\>%GREEN%COMMENT \[HK\]: agree to area%ENDCOLOR%\</p\> | Recharge Site | u |  |  |  |  |
|  |  | Area in which water reaches the groundwater reservoir by surface infiltration. An area in which there is a downward component of hydraulic head in the aquifer. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | An area representing the hydrogeologic unit which contributes water to an aquifer, either by direct infiltration or by runoff and subsequent infiltration. IGH0685 |  |  |  |  | h |  |
|  | \<a name="<a href="DischargeArea" class="wikilink">DischargeArea</a>"\>\</a\>Discharge Area | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I think "Discharge Site" is better term. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT \[ID\]**: discharge area is a 2D representation of the hydrogeologic unit where groundwater is extracted%ENDCOLOR%\</p\> \<p\>%GREEN%COMMENT \[HK\]: agree to area%ENDCOLOR%\</p\> | Discharge site | u |  |  |  |  |
|  |  | The area or zone where groundwater emerges from the aquifer. The outflow maybe into a stream, lake, spring, wetland, etc. (<http://www.groundwater.org/gi/gwglossary.html#D>) |  |  |  |  |  | o |
|  |  | Groundwater discharge is the removal of water from the saturated zone of a drainage basin across the watertable surface, together with the associated flow toward the water table in the saturated zone. In discharge areas the groundwater flow direction is upward and hydraulic head in the aquifer systems increases with depth. Two principal types of discharge can be differentiated and recognised in the field: point (focal) discharge (springs, seeps, streams and lakes) and diffuse discharge (evaporation from shallow water tables and biological discharge). (taken from \<a href="<http://www.publish.csiro.au/pid/413.htm>" target="\_blank" title="Salama 1998"\>Salama R.B.(ed.) 1998\</a\>). |  |  |  |  |  | o |
|  |  | An area representing the hydrogeologic unit where water is extracted (discharged) from an aquifer, either by processes of evapotranspiration, interflow or extraction. SIMILAR TO IGH0685 |  |  |  |  | h |  |
|  | \<a name="<a href="GroundwaterFlow" class="wikilink">GroundwaterFlow</a>"\>\</a\>Groundwater Flow | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I think Water Flow is a process. Does process belong to feature category? Water flow is expressed by (physical) vector field of velocity. It is interpolated or modeled and as coverage data type belongs to the same category as hydrogeological surface or potentiometric surface. (See comment to Hydrogeological Surface) \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT \[ID\]**: flow is movement of water, e.g. groundwater, in a containing unit, e.g. aquifer (not area)%ENDCOLOR%\</p\> \<p\>%GREEN%COMMENT \[HK\]: yes, process, but measurable or to be modelled in e.g. m/s (travel time)%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | Movement of subsurface water in the saturated zone from areas of recharge to areas of discharge. <http://www.usgs.gov/science/science.php?term=514> |  |  | g |  |  |  |
|  |  | Movement of water in an aquifer. IGH0557 |  |  |  |  | h |  |
|  | \<a name="<a href="GroundwaterBody" class="wikilink">GroundwaterBody</a>"\>\</a\>Groundwater Body |  |  | u |  |  |  |  |
|  |  | A distinct volume of groundwater within an aquifer or aquifers (Vogt, 2002). The equivalent in the European Water Framework Directive (2000/60/CE, 2000) is "Body of groundwater" defined exactly in the same way. |  |  | g |  |  |  |
|  |  | \<p\>A distinct volume of groundwater within an aquifer or system of aquifers, which is hydraulically isolated from nearby groundwater bodies.\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I have a problem with understanding this sentence. "Which" refers to "aquifer or system of aquifers" or to "distinct volume of groundwater"? In second case it is incorrect – groundwater bodies in the same aquifer system are not hydraulically isolated. See image on the end. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]**: groundwater body refers to the mass of water (has volume, no shape). (ground)water bodies may be aggregated using a connecting system, in case of GW a system of connected aquifers.\<br /\>%ENDCOLOR%\</p\> | Groundwater Body |  |  | i |  |  |
|  |  | \<p\>A distinct volume of groundwater within an aquifer or aquifers. NOTE:\</p\> \<p\>Based on the different assumptions established in (EU) Member States the delineation of a <a href="WFDGroundWaterBody" class="wikilink">WFDGroundWaterBody</a> boundary can differ from the natural <a href="GroundWaterBody" class="wikilink">GroundWaterBody</a> extent.\</p\> | WFD Groundwater Body |  |  | i |  |  |
|  |  | A mass of groundwater distinct of other masses of water.\<br /\>Note: groundwater refers to water occupying the saturated zone. IGH1356 |  |  |  |  | h |  |
|  | \<a name="<a href="WaterBody" class="wikilink">WaterBody</a>"\>\</a\>Water Body |  |  |  |  |  |  |  |
|  |  | A mass of water distinct from other masses of water. \<br /\>Note 1: refers to real-world objects above, on and below the land surface, or a fiction of these. \<br /\>Note 2: water bodies have names within common experience, but different names in different contexts.\<br /\>Note 3: shape and extent of a (liquid) water body are determined by the properties of the containing object, i.e. the occupied landform, the hosting hydrogeologic unit, manmade container, etc.\<br /\>Note 4: shape and extent of a (liquid) open water body are bound to atmospheric pressure exerted on its surface. lakes and rivers levels are tuned to the surrounding water table.\<br /\>Note 5: in the context of observation the water body is the intended object of observation, i.e. sampled feature. IGH1356 |  |  |  |  | h |  |
|  |  | A discrete and significant element of surface water. | WFD Surface Water Body |  |  | i |  |  |
|  | \<a name="<a href="OtherWaterBodies" class="wikilink">OtherWaterBodies</a>"\>\</a\>Other Water Bodies | <span class="twiki-macro GREEN"></span> **COMMENT**: I think this term is not needed in gwml. It should be replaced by:%ENDCOLOR%\<br /\>\<ol\> \<li\>%GREEN%Precipitation as a rainfall and snowfall – parameter (attribute) of ground surface (I think it is important and omitted feature). It can be expressed as single value, range or coverage.%ENDCOLOR%\</li\> \<li\>%GREEN%Surface Water Body – strongly interacting with Groundwater Bodies, for example as a base of drainage. \[JM\]\<br /\>%ENDCOLOR%\</li\> \</ol\>\<p\><span class="twiki-macro GREEN"></span> **NOTE**: OWB resulting from over simplification of features from gwml 1 \[FL\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** precipitation is water body (falling hydrometeor), it may be rain, snow, hail, etc. - rainFALL is the measured property (depth of water on a surface).\<br /\>%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | \<p\>A mass or a volume of water, constrained geographically and/or structurally. It includes surface and atmospheric water bodies (GWML 1).\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: Mass and volume are not appropriate ways of specification of Other Water Bodies. It can be used as a parameter only but we may find better representation for them. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** water body refres to the mass of water, has volume no shape. - "other water bodies" is obsolet, because river, lake, etc. are desribed in the relevant contexts \<br /\>%ENDCOLOR%\</p\> |  |  | g |  |  |  |
|  | \<a name="<a href="GroundwaterVolume" class="wikilink">GroundwaterVolume</a>"\>\</a\>Groundwater Volume | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: It is very strange concept for me as a hydrogeologist from the beginning (from 1966). It is similar to volume of water in river! In hydrogeology quantity of water is expressed by quantity of flow. It can be applicable to nonrenewable resources, for example rock oil. Groundwater is renewable. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** volume refers to a quantity, the amount of space occupied by the water body, i.e. a property of the (ground)water body\<br /\>%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | \<p\>Description of the volume of water present in an aquifer (GWML 1).\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** does this mean the quantity?%ENDCOLOR%\</p\> \<p\>COMMENT\[HK\]: "Description of the volume/quantity of water present in an aquifer at a certin time", at a certain location/extent(3D) in time a certain volume of water is present. The flow (travel time) becomes apparent when analysing time periods\</p\> |  |  | g |  |  |  |
|  |  | \<p\>Data container with a single quantity value or a range of quantity values .\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: In INSPIRE Quantity Value is just a union for single value or range measurements – it is not in any way an equivalent of Groundwater Volume. \[JL\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** value refers to the result of observation of a quantity of the (ground)water body\<br /\>%ENDCOLOR%\</p\> | Quantity Value |  |  |  |  |  |
|  | \<a name="<a href="GroundwaterYield" class="wikilink">GroundwaterYield</a>"\>\</a\>Groundwater Yield | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: It is the most complicated problem. In practice yield refers to specific well. In case of aquifer or aquifer system it can be estimated on base of numerical model only and here are applied terms "potential yield" or "disposable yield". Its value (expressed in m\<sup\>3 \</sup\>per unit of time) depends from many hydrogeological conditions, for example: spatial distribution of present and potential intakes, changes of water quality, constrains arising from nature protection and human settlement protection, etc. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** yield refers to a quantity, i.e. property of the (ground)water body%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | \<p\>Aquifer yield is the maximum rate of withdrawal that can be sustained by an aquifer. Expressed as m\<sup\>3\</sup\> (GWML 1).\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** this is a quantity, i.e. property%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  | \<a name="Reservoir"\>\</a\>Reservoir | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I think this term is not needed in gwml. **TO BE DISCUSSED.**\[JM\] %ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** avoid potential confusion () with groundwater reservoir, which means the containing aquifer%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | A reservoir is, most broadly, a place or hollow vessel where fluid is kept in reserve, for later use. <http://en.wikipedia.org/wiki/Reservoir> |  |  | g |  |  |  |
|  |  | \<p\>A body of water, either natural or man-made, used for storage, regulation and control of water resources. \<br /\>Note 1: special concepts of surface or underground reservoirs may be defined by application. \<br /\>Note 2: do not confuse an underground reservoir with groundwater reservoir, which refers to the containing aquifer. IGH1011\</p\> \<p\> \</p\> |  |  |  |  | h |  |
|  | \<a name="<a href="GroundwaterLayer" class="wikilink">GroundwaterLayer</a>"\>\</a\>Groundwater Layer |  |  |  |  |  |  |  |
|  |  | \<p\>Stratification characteristics of the groundwater within the groundwater body.\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** refers to (ground)waterbody --\> water body stratum (see below)%ENDCOLOR%\</p\> |  |  |  |  |  | eu_WFD |
|  |  | \<p\>Indicates if the <a href="AquiferSystem" class="wikilink">AquiferSystem</a> consists of more than one layer. (Attribute isLayered, boolean value)\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** referring to aquifer as a hydrogeoloigc unit, it is a hydrogeologic stratum.%ENDCOLOR%\</p\> |  |  |  | i |  |  |
|  |  | \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** <a href="HY_Features" class="wikilink">HY_Features</a> includes a "water body stratum" which refers to the vertical stratification within a water body. this def is applicable also to a groundwaterbody.\<br /\>%ENDCOLOR%\</p\> \<p\>distinct layer within a body of water.\</p\> |  |  |  |  | h |  |
|  | \<a name="<a href="ConeOfDepression" class="wikilink">ConeOfDepression</a>"\>\</a\>Cone of Depression | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: Cone of Depression belongs to State of Groundwater Body. It can be observed in very few points (in Observation Wells or Piezometers). As a whole it is result of interpolation or modeling. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** deforming the shape of the 3D water body, it should be considered as an observable property of the groundwaterbody. - not sure about this, to be discussed.\<br /\>%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | A depression in the groundwater table or potentiometric surface that has the shape of an inverted cone and develops around a well from which water is being withdrawn. Its trace (perimeter) on the land surface defines the zone of influence of a well. Also called pumping cone and cone of drawdown. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | The depression of heads around a pumping well caused by the withdrawal of water (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" target="\_blank" title="Heath 1983"\>Heath 1983\</a\>) |  |  |  |  |  |  |
|  |  | A depression, in the shape of a cone with convex upward limits, of the piezometric groundwater surface which defines the area of influence of a well. IGH0229 |  |  |  |  | h |  |
|  | \<a name="<a href="ZoneOfContribution" class="wikilink">ZoneOfContribution</a>"\>\</a\>Zone of Contribution | <span class="twiki-macro GREEN"></span> **COMMENT**: The same comment as to Cone of Depression. \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span> |  | u |  |  |  |  |
|  |  | The area surrounding a pumping well, spring, or tunnel that encompasses all areas and features that supply groundwater to the well spring, or tunnel. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | \<p\>The capture zone for the water that contributes to a groundwater discharge area.\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** does this mean the grondwaterbasin contributing to a well, i.e. a (groundwater)basin with well as its outfall (topologically) and represented by discharge area ?%ENDCOLOR%\</p\> |  |  |  |  |  | o |
|  | \<a name="<a href="ZoneOfInfluence" class="wikilink">ZoneOfInfluence</a>"\>\</a\>Zone of Influence | <span class="twiki-macro GREEN"></span> **COMMENT**: I think from hydraulic point of view it is symonym of Cone of Depression. The same comment as to Cone of Depression. \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span> |  |  |  |  |  |  |
|  |  | The area of influence, or cone of depression formed when pumping a well or well field. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  | \<a name="<a href="WaterBudget" class="wikilink">WaterBudget</a>"\>\</a\>Water Budget | <span class="twiki-macro GREEN"></span> **COMMENT**: I think that Water Budget can be really determined on base of numerical groundwater flow model. Is it in scope of <a href="GW2IE" class="wikilink">GW2IE</a>? \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span> |  |  |  |  |  |  |
|  |  | \<p\>An accounting of the inflow, outflow, and storage changes of water in a hydrologic unit <http://www.usgs.gov/science/science.php?term=1297&type=theme>.\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: What means "hydrologic unit" in this case? \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** assuming that "hydrologic unit" refers to basin (as the unit where hydrologic processes take place), water budget wold be a property of (groundwater)basin?%ENDCOLOR%\</p\> \<p\>%GREEN%COMMENT\[HK\]: the budget might have many features/representations?%ENDCOLOR%\</p\> |  |  | g |  |  |  |
|  | \<a name="<a href="ProtectedArea" class="wikilink">ProtectedArea</a>"\>\</a\>Protected Area | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: in this place I see two different concepts: %ENDCOLOR%\</p\> \<ol\> \<li\>%GREEN%Area of Groundwater Protection – the first definition.%ENDCOLOR%\</li\> \<li\>%GREEN%Protected Site – the second definition (it can be planar, linear or point), for example: national parks, nature or heritage reserves, wetland protection etc. \[JM\]\<br /\>%ENDCOLOR%\</li\> \</ol\>\<p\><span class="twiki-macro GREEN"></span> **COMMENT**: In INSPIRE Protected Site refers to any protected site – not just those to do with water resources. It also requires there be protecting legislation (which I would think is required in any definition or there isn’t any protection?). \[JL\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** I think this is special to INSPIRE and not subject of a generally applicable GWML%ENDCOLOR%\</p\> |  | u |  |  |  |  |
|  |  | The surface and subsurface area surrounding a water well or wellfield through which contaminants are reasonably likely to move toward and reach such water well or well field. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | An area designated or managed within a framework of international, Community and Member States' legislation to achieve specific conservation objectives. | Protected Site |  |  | i |  |  |
|  | <a href="ManagementRestrictionOrRegulationZone" class="wikilink">ManagementRestrictionOrRegulationZone</a> | \<p\>Area managed, restricted or regulated in accordance with a legal requirement related to an environmental policy or a policy or activity that may have an impact on the environment at any level of administration (international, European, national, regional and local).\</p\> \<p\> **COMMENT**: There are <a href="ZoneTypeCode" class="wikilink">ZoneTypeCode</a> list and <a href="AdditionalZoneTypeCode" class="wikilink">AdditionalZoneTypeCode</a> list. It includes Groundwater Management Zone and River Basin District, see below.\</p\> |  |  |  | i |  |  |
|  | \<a name="<a href="GroundwaterManagementZone" class="wikilink">GroundwaterManagementZone</a>"\>\</a\>Groundwater Management Zone (catchment) | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I propose to remove "(catchment)". GMZ (or GMA - Groundwater Management Area) is the most often administrative unit. There is a huge difference between GMZ, surface catchment and groundwater catchment. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** <a href="HY_Features" class="wikilink">HY_Features</a> defines catchment as the basic unit of study or reporting. in case of hydrologic determination, a catchment is considered a basin wherein all waters are channeled to a common (topological) outfall. in this sense the "groundwater management zone" maybe understood as a catchment, or a basin when it concides with the hydrologic determined unit.%ENDCOLOR%\</p\> \<p\>%GREEN%COMMENT\[HK\]: administrative unit -\> hydrogeographic unit! Also catchment/basin etyc, see e.g. Maidment regarding scales, basin can consist of many smaller catchments%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | Distinct area, defined by either political, natural or other reasons, for which water budget is calculated and policies are in place |  |  |  |  |  | o |
|  | \<a name="<a href="RiverBasinDistrict" class="wikilink">RiverBasinDistrict</a>"\>\</a\>River Basin District | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: Concept from European Water Framework Directive. I think it is very difficult find its application in other domains. \[JM\]\<br /\>%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: In INSPIRE "River Basin District" is a concept derived from the Water Framework Directive and is defined as "Area of land and sea, made up of one or more neighbouring river basins together with their associated groundwaters and coastal waters, identified under Article 3(1) as the main unit for management of river basins" – so very much a regulatory definition. \[JL\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** see "groundwater management zone". furthermore (in basin hierarchy) any catchment/basin may be part of a containing unit (in <a href="HY_Features" class="wikilink">HY_Features</a>).\<br /\>%ENDCOLOR%\</p\> |  | u |  |  |  |  |
|  |  | \<p\>A body of inland water flowing for the most part on the surface of the land but which may flow underground for part of its course.\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: What means "flow underground of inland water"? Is it applicable for karstik systems only? Are karstic systems in scope of <a href="GW2IE" class="wikilink">GW2IE</a>? \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** an administrative (INSPIRE) unit such as "River Basin District" has nothing to do with the property of water to flow in whatever connecting system, no matter on or below the land surface. -%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** does GWML refers to subterreanean waters and water bodies?\<br /\>%ENDCOLOR%\</p\> \<p\>%GREEN%\<br /\>%ENDCOLOR%\</p\> |  |  |  | i |  |  |
|  | \<a name="<a href="HydraulicTesting" class="wikilink">HydraulicTesting</a>"\>\</a\>Hydraulic Testing | \<p\><span class="twiki-macro GREEN"></span> **COMMENT:** Hydraulic Testing belongs to Observation & Measure Procedures.I think it is not feature. See: 4.11 Observation procedure - method, algorithm or instrument, or system of these which may be used in making an observation (Geographic Information: Observations and Measurements OGC Abstract Specification Topic 20, 2010). \[JM\]\<br /\>**COMMENT:** Tracer Testing could also be added here \[BW\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** agree with JM, think that hydraulic testing is a special obs procedure. \[HK\] yes%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | Series of hydraulic groundwater tests, including packer test, pump testing, slug testing and tracing test. These tests are conducted to evaluate the availability, flow or yield of groundwater (GWML 1). |  |  | g |  |  |  |
|  | \<a name="<a href="GroundwaterDependentEcosystem" class="wikilink">GroundwaterDependentEcosystem</a>"\>\</a\>Groundwater Dependent Ecosystem (GDE) | <span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** <a href="HY_Features" class="wikilink">HY_Features</a> provides a means to describe the interaction between a hydroFeature and features of other domains, e.g. ecology. <span class="twiki-macro ENDCOLOR"></span> |  | u |  |  |  |  |
|  |  | \<p\>Ecosystems that rely on groundwater for some or all of their water requirements. Six types of Groundwater Dependent Ecosystems have been identified in Australia:\</p\> \<ul type="disc"\> \<li\>terrestrial vegetation that relies on the availability of shallow groundwater\</li\> \<li\>wetlands such as paperbark swamp forests and mound springs\</li\> \<li\>river baseflow systems where groundwater discharge provides a significant baseflow component to the river\</li\> \<li\>aquifer and cave ecosystems where life exists independent of sunlight\</li\> \<li\>terrestrial fauna, both native and introduced species, that rely on groundwater as a source of drinking water\</li\> \<li\>estuarine and near-shore marine systems, such as coastal mangroves, salt marshes and sea-grass beds, which rely on the submarine discharge of groundwater.\</li\> \</ul\>\<p\>(based on GA: <http://www.ga.gov.au/groundwater/understanding-groundwater-resources/groundwater-dependant-ecosystems.html>)\</p\> \<p\>COMMENT\[HK\]: fens/low moors, peat bogs/hill moors?\</p\> |  |  |  |  |  | o |
|  |  | \<p\>From The Australian GDE Atlas: <http://www.bom.gov.au/water/groundwater/gde/index.shtml>\</p\> \<p\>Natural \<a href="<http://www.bom.gov.au/water/awid/id-866.shtml>" title="More information for ecosystem"\>ecosystems\</a\> that require access to \<a href="<http://www.bom.gov.au/water/awid/id-246.shtml>" title="More information for groundwater"\>groundwater\</a\> to meet all or some of their water requirements on a permanent or intermittent basis, so as to maintain their communities of plants and animals, \<a href="<http://www.bom.gov.au/water/awid/id-866.shtml>" title="More information for ecosystem"\>ecosystem\</a\> processes and \<a href="<http://www.bom.gov.au/water/awid/id-866.shtml>" title="More information for ecosystem"\>ecosystem\</a\> services.\</p\> \<p\>Source: [Richardson, S., et al., (2011). Australian groundwater-dependent ecosystem toolbox part 1: assessment framework, Waterlines report, National Water Commission, Canberra](http://nwc.gov.au/__data/assets/pdf_file/0006/19905/GDE-toolbox-part-1.pdf)\</p\> |  |  |  |  |  |  |
|  | \<a name="<a href="GroundwaterQualityDescription" class="wikilink">GroundwaterQualityDescription</a>"\>\</a\>Groundwater Quality Description | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I think it is data type, not a feature. Very good patter (example) we can find in Water Framework Directive data model: class Chemical Status in package <a href="WFD_GWB_Main" class="wikilink">WFD_GWB_Main</a> of INSPIRE model v.0.4. \[JM\]%ENDCOLOR%\</p\> \<p\> **%GREEN%COMMENT\[ID\]:%ENDCOLOR%** %GREEN%in case of a distinct value , it is result of observation, i.e. any type of data. - or, does this refer to the description of how the property is structured, e.g. a property composed or derived from 1..n base properties?%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | \<p\>A normative quality description is an assesment based upon some guideline edited by a government or a quality standard. It can include things such as "odor" or "color" (GWML 1).\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** this refers to a nominal property, which has no magnitude, or multitude, and usually represents an idea or logic concept.%ENDCOLOR%\</p\> |  |  | g |  |  |  |
|  | \<a name="<a href="GroundwaterComposition" class="wikilink">GroundwaterComposition</a>"\>\</a\>Groundwater Composition (chem.) | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: The same problem as for Groundwater Quality Description. I think it is data type, not a feature. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** see above: "groundwater quality description"\<br /\>%ENDCOLOR%\</p\> |  | u |  |  |  |  |
|  |  | An abstract class that is used to describe a component that can be present in groundwater (GWML 1). |  |  | g |  |  |  |
|  |  | The chemical components present in groundwater (as gasses, solutes or solids) (based on \<a href="<http://pubs.usgs.gov/wsp/wsp2254/>" target="\_blank" title="Hem 1985"\>Hem 1985\</a\>). |  |  |  |  |  | o |
|  |  | characterisation of the chemical composition of the groundwater, including specification of the\<br /\>contributions from human activity. (Member States may use typologies for groundwater characterisation\<br /\>when establishing natural background levels for these bodies of groundwater.) |  |  |  |  |  | eu_WFD |
|  |  | COMMENT: If the groundwater is monitored = <a href="ActiveBorehole" class="wikilink">ActiveBorehole</a> feature that is linked to the <a href="EnvironmentalMonitoringFacilities" class="wikilink">EnvironmentalMonitoringFacilities</a> feature = utilising fully O&M clases |  |  |  | i |  |  |
|  | \<a name="<a href="GroundwaterBiology" class="wikilink">GroundwaterBiology</a>"\>\</a\>Groundwater Biology | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I think it is data type, not a feature. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** see above: "groundwater quality description"%ENDCOLOR%\</p\> \<p\>COMMENT\[HK\]: rather a feature with many data types? agree, measurement\>O&M\</p\> |  | u |  |  |  |  |
|  |  | The biological components present in groundwater (as \<a href="<http://www.environment.gov.au/soe/2006/publications/emerging/fauna/index.html>" target="\_blank" title="stygofauna"\>stygofauna\</a\>, microbes, fungi, etc.). |  |  |  |  |  | o |
|  | \<a name="<a href="WaterWell" class="wikilink">WaterWell</a>"\>\</a\>Water Well | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: In GWML only representation of term Well is Water Well. I propose the short for – simply "Well". \[JM\]\<br /\>%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: In INSPIRE model Well is an abstract feature for subtypes Active Well (as defined below) and Observation Well (removed on the end from model by administrative decision for non-understandable reasons).In my opinion Observation Well is important hydrogeological feature (subtype of man-made object and well). It is a base for application of Observations & Measures in scope of groundwater. Piezomiter is the simplest kind of observation well. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** validate against the definition "sampling feature" within O&M (ISO 19156)%ENDCOLOR%\</p\> | Well | u |  |  |  |  |
|  |  | A water well is an excavation or structure created in the ground by digging, driving, boring or drilling to access water in underground aquifers. <http://en.wikipedia.org/wiki/Water_well> |  |  | g |  |  |  |
|  |  | A well influencing the groundwater resources of the aquifer. - The most common examples of Active Well are: extracting, artificial recharging, or dewatering wells.\<br /\>NOTE: <a href="ActiveWell" class="wikilink">ActiveWell</a> by extracting, recharging or dewatering influences and changes the state of groundwater resources. | Active Well |  |  | i |  |  |
|  |  | A shaft or hole sunk, dug or drilled into the Earth to extract water. IGH1379 |  |  |  |  | h |  |
|  | \<a name="<a href="WellLog" class="wikilink">WellLog</a>"\>\</a\>Well Log | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: This role plays borehole in (<a href="GeoSciML" class="wikilink">GeoSciML</a>) and in GWML borehole should be **\<u\>part\</u\>** of well – it is different approach – in <a href="GeoSciML" class="wikilink">GeoSciML</a> borehole is source of information (data) about geologic units only (it is a subtype of Sampling Curve). \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156)\<br /\>%ENDCOLOR%\</p\> |  | u |  |  |  |  |
|  |  | Recording of the geologic units found along the water well (GWML 1). |  |  | g |  |  |  |
|  | \<a name="<a href="WellField" class="wikilink">WellField</a>"\>\</a\>Well Field | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: I am not sure but maybe term "Intake" is more appropriate in this place. For me "field" is associated with extraction of oil. Of course it is perhaps regional difference of the same concept. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156)\<br /\>%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | \(1\) One or more wells producing water from a subsurface source. (2) A tract of land which contains a number of wells for supplying a large municipality or irrigation district <http://water.nv.gov/WaterPlanning/dict-1/PDFs/wwords-w.pdf>. |  |  | g |  |  |  |
|  | \<a name="<a href="MonitoringSite" class="wikilink">MonitoringSite</a>"\>\</a\>Monitoring Site | \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: It is synonym of Monitoring Station in INSPIRE extended model. \[JM\]\<br /\>%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: In INSPIRE Environmental Monitoring Facility is an equivalent of Monitoring Site, although it is more general not being restricted to groundwater monitoring. It is defined as "A georeferenced object directly collecting and/or processing data, or hosting other <a href="EnvironmentalMonitoringFacility" class="wikilink">EnvironmentalMonitoringFacility</a> objects collecting data about features whose properties (e.g. physical, chemical, biological or other aspects of environmental conditions) are repeatedly observed/measured". \[JL\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156)\<br /\>%ENDCOLOR%\</p\> |  |  |  |  |  |  |
|  |  | \<p\>A site where a sampling is taken for monitoring various properties (GWML 1).\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT**: Monitoring can be carried without sampling. \[JM\]%ENDCOLOR%\</p\> \<p\><span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156)%ENDCOLOR%\</p\> \<p\>COMMENT\[HK\]: Measuring -\> O&M\</p\> |  |  | g |  |  |  |
|  |  | Observation well used to watch for the advent of an anticipated condition, generally undesirable, such as the advance of the salt-water front in a coastal area where salt-water encroachment is occurring, or the movement of a pollutant injected into a disposal well. IGH0806 | Monitor Well, Monitoring Station |  |  |  | h |  |
|  | \<a name="<a href="WellConstructionElements" class="wikilink">WellConstructionElements</a>"\>\</a\>Well Construction Elements | <span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156)<span class="twiki-macro ENDCOLOR"></span> |  | u |  |  |  |  |
|  |  | \<p\>Construction components, use to describe how the well was built. This information are important when assessing result of pump tests. Includes filtration, screen, sealing and well casing (GWML 1).\</p\> \<p\>COMMENT\[HK\]: Metadata?\</p\> |  |  | g |  |  |  |
|  |  | Details on the groundwater bore construction including casing, screen, filter pack, sealing, headworks, capping and development (taken from <http://www.derm.qld.gov.au/water/management/pdf/minimum-const-req.pdf>). |  |  |  |  |  | o |
|  | \<a name="Pump"\>\</a\>Pump | <span class="twiki-macro GREEN"></span> **COMMENT\[ID\]:** validate against the definition "sampling feature" within O&M (ISO 19156)<span class="twiki-macro ENDCOLOR"></span> |  |  |  |  |  |  |
|  |  | A water well pump is a pump that is used in extracting water from a water well. There are many makes of pumps, the foremost being Franklin Electric (American), and Pedrollo (Italian) <http://en.wikipedia.org/wiki/Water_well_pump>. |  |  | g |  |  |  |
|  |  | COMMENT: Use **<a href="ActiveWellTypeValue" class="wikilink">ActiveWellTypeValue</a>**, it is more generic and handle with code lists. |  |  |  | i |  |  |

## Grouping of Entities by Outstanding Issues

------------------------------------------------------------------------

\_Lead = B.<a href="Brodaric_" class="wikilink">Brodaric_</a>

Rock/Land Body:

- <span class="twiki-macro GRAY"></span> [Geologic Unit](#GeologicUnit) <span class="twiki-macro ENDCOLOR"></span>
  - %BLACK%\[BB\] accept: no conflicts (but defer to <a href="GeoSciML" class="wikilink">GeoSciML</a> entity \[BB\])<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: BB, PD, EB, ID, BW, BS, NA, CS, RT, FL\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM, HK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: It is already defined in <a href="GeoSciML" class="wikilink">GeoSciML</a> \[JM\].\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: Include features from e.g <a href="GeoSciML" class="wikilink">GeoSciML</a> into feature model, but use the "external typing"? What about bore hole/lithology then?<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: clarification--generally needs to be available to a gw model, but agree is out of scope; already handled in <a href="GeoSciML" class="wikilink">GeoSciML</a> \[BB\]<span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro GRAY"></span> [Hydrogeologic Unit](#HydrogeologicUnit)<span class="twiki-macro ENDCOLOR"></span>
  - \[BB\] accept: no conflict
  - %GRAY%Agree: BB, PD, EB, ID, BW, BS, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments:<span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro GRAY"></span> [Aquifer System](#AquiferSystem) <span class="twiki-macro ENDCOLOR"></span>
  - \[BB\] accept: no conflicts
  - %GRAY%Agree: BB, PD, ID, BW, BS, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments:<span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro GRAY"></span> [Aquifer](#Aquifer) <span class="twiki-macro ENDCOLOR"></span>
  - \[BB\] accept: no conflicts
  - %GRAY%Agree: BB, PD, EB, ID, BW, BS, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments:<span class="twiki-macro ENDCOLOR"></span>
- [Hydrogeologic Stratum --\> Hydrostratigraphic Unit](#HydrogeologicStratum)
  - \[BB\] delete: as per May meeting discussion--reason: no clear differentiation from Hydrogeo Unit, and not widely used.
  - %GRAY%Agree: BB, BS, BW, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment:<span class="twiki-macro ENDCOLOR"></span>
  - -----------------------------------------------------------------------
  - Old proposal:
  - \[BB\] replace: with 'Hydrostratigraphic Unit' which is not equivalent, but perhaps more widely used. See [**Seaber (1988)**](http://www.clemson.edu/ces/hydro/murdoch/Courses/Aquifer%2520Systems/documents/Heath%2520and%2520Back%2520books/Chapter%25202.pdf) : “a body of rock distinguished and characterised by its porosity and permeability". It differs from 'Aquifer' in that the boundaries are mainly defined by geologic characteristics with hydrodynamic potential, and hence the presence of a groundwater body is possible but not necessary.
  - %GRAY%Agree: BB,EB, ID, PD, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: really necessary? to me it seems to be a specialisation of <a href="HydrogeologicalUnit" class="wikilink">HydrogeologicalUnit</a> \[BW\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: This definition above is outdated. Hydrostratigraphic Unit is Hydrogeologic Unit with large horizontal extent in comparison to thickness \[JM\].\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Basin](#GroundwaterBasin)
  - \[BB\] accept as per May meeting: a large hydrogeologically defined body of \<span class="<a href="WYSIWYG_COLOR" class="wikilink">WYSIWYG_COLOR</a>" style="color: dimgray;"\>\[delete typo: groundwater \[BB\]\]\</span\> ground typically consisting of hydraulically connected Hydrogeo Units. Differs from Aquifer and Aquifer System by its greater size. Often related to a resource management area.
  - %GRAY%Agree: BB, BS, BW, PD, NA, CS, FL, HK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM, ID\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: During the modelling need to consider whether this is an aggragation of Aquifer Systems or a feature in its own right \[BS\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It is the same as large Aquifer System. Aquifer Systems can be nested \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Groundwater basin is not a body of water, but the unit yielding groundwater, ie. containing the body of gourndwater \[ID\].\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - -------------------------------------
  - Old proposal:
  - \[BB\] move: to 'Management Areas'. Although a basin can have physically defined boundaries, its primary purpose is water resource management
  - %GRAY%Agree: BB\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Diagree: ID, PD, EB, JM, HK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: analog to basin, the groundwater basin is the abstract notion of the hydrology phenomenon with repsect to groundwater. understood as the unit (not only area) where the (geo)hydrologic processes, such as groundwater flow, take place, it is the unit of study/analysis, reporting, or management of groundwater. although the term is often used in the context of water res management, the limitation only to this aspect is too narrowly defined. so, I would prefer to sustain (not move) the term. (ID) Agree with \[ID\] that a basin (for example Australia's Great Artesian Basin (GAB)) is accepted as a hydrogeological entity and a Management Area \[PD\]. \<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Convinced by PD argument. It's a real feature.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Groundwater Basin as a subtype of Aquifer System is real feature. Management Area is fiat and occures only on paper or in database \[JM\].<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - decide if a common or multiple outlets are possible for a GW basin.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - size is not a differenciator for setting a GW basin.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - evaluate if there is a need for connection to an aquifer system and how it can connect to surface water.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - in some situation, a groundwater basin could be formed by a series of discontinuous areas<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> \*\* need to reach an agreement on definition \*\*\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Dependent Ecosystem](#GroundwaterDependentEcosystem)
  - \[BB\] out of scope: should be included in an ecosystem model; need to ensure 'Hydrogeo Units' can relate to other unit types.
  - %GRAY%Agree: BB,EB, ID, BS, BW, PD, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Diagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: Can probably be associated with, and adequately described by, [Discharge Location](#DischargeArea) and [Groundwater Biology](#GroundwaterBiology) \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It can be used as a placeholder with assotiation from Groundwater Body for future ecosystem model \[JM\].<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: not best practice to include placeholders for entities that will occur in other models \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - Definitely needs to connect to something - a feature from an other model ideally.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> Agreement is to add this feature into the model and evaluate if it is relevant to GW.\<br /\><span class="twiki-macro ENDCOLOR"></span>

Flow--Barriers and Boundaries:

- <span class="twiki-macro GRAY"></span> [Confining Bed](#ConfiningBed) <span class="twiki-macro ENDCOLOR"></span>
  - \[BB\] accept: no conflicts
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: It is subtype or role of Aquiclude enclosing Aquifer System from bottom \[JM\].\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Aquitard](#Aquitard)
  - \[BB\] delete: difficult to define and is essentially a type of 'Confining Bed', so use this more general term
  - %GRAY%Agree: BB, PD, ID, BW, BS, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: are "Aquitard,Aquiclude" roles of Confining beds then ? \[EB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Aquitard and Aquiclude are different concepts. Aquitard plays important role in groundwater flow due to it is partialy permeable. Aquiclude is completely non-permeable. See: [http://external.opengis.org/twiki_public/HydrologyDWG/Gwml2ConsolFeatureListDiscussionPage#Topic7](Gwml2ConsolFeatureListDiscussionPage#Topic7) \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: no argument that they are different, just some consensus the distinctions are not useful \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> out of scope, could be managed however as a property of confining beds.\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Aquiclude](#Aquiclude)
  - \[BB\] delete: same as above, see 'Aquitard'
  - %GRAY%Agree: BB, PD,EB, ID, BW, BS, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: See comment for Aquitard and INSPIRE D2.8.II/III.4 Data Specification on Geology – Draft Guidelines, page 140, Fig. 5 Example of an aquifer system \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> out of scope, could be managed however as a property of confining beds.<span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Dam](#GroundwaterDam)
  - \[BB\] delete: equivalent to 'Confining Bed'
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments:Groundwater Dam is a man-made feature. See: <http://www.rainwaterharvesting.org/methods/modern/gwdams.htm> \[JM<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: still a useful feature in scope, like wells (also man made)? \[HK, AK<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - has a gw management role\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> is scope feature but should be modeled in a future phase of gwml\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Divide](#GroundwaterDivide)
  - \[BB\] accept: "Line on a water table or piezometric surface on either side of which the groundwater flow diverges IGH0556 \[ID\]"
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Diagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: this is also a temporal feature \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: serves to seperate groundwater flow systems \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It is dynamic element of piezometric/potentiometric surface - dynamic feature and can be inside flow system. See: INSPIRE D2.8.II/III.4 Data Specification on Geology – Draft Guidelines, page 140, Fig. 6 Example of a groundwater flow system \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Hydraulic Boundary](#HydraulicBoundary)
  - \[BB\] delete: not a primary entity, but a role played by other entities, e.g. confining bed, well, ground surface, \[\<span class="<a href="WYSIWYG_COLOR" class="wikilink">WYSIWYG_COLOR</a>" style="color: darkgray;"\>other surface \[BB\]\</span\>\]. Should be modeled as an attribute of a primary entity.
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: It is surface (in 3D space) separating Aquifer System from surroundings. Concept similar to border of state \[JM\].\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Flow](#GroundwaterFlow)
  - \[BB\] accept: defs agree, and in scope. It is a Process, but one that can possess attributes, e.g. rate
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, NA, FL, HK, AK<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM, CS, RT\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: a process that takes place in the (groundwater)basin. - requires the association with the relevent "hosting" unit (ID)<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It is a state of Groundwater Body, result produced by Hydraulic Gradient as a cause \[JM\]<span class="twiki-macro ENDCOLOR"></span>
    - %GRAY%is this a description of (1) the movement of a gw body (process), or (2) the static condition of a gw body at a time (state)? \[BB\]<span class="twiki-macro ENDCOLOR"></span>
    - %GRAY%If state, then equivalent to properties of gw body and fits below. \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - could be an associated property of gw body<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - could albe be modeled using O&M<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> in scope, but will see during the modeling process if this feature is maintained\<br /\><span class="twiki-macro ENDCOLOR"></span>
- %BLACK%Groundwater Flow System \*new\*<span class="twiki-macro ENDCOLOR"></span>
  - %BLACK%\[BB\] accept: flow path of groundwater from recharge to discharge location, through Hydrogeo Units.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: BB, BS, BW, PD, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments See: INSPIRE D2.8.II/III.4 Data Specification on Geology – Draft Guidelines, page 140, Fig. 6 Example of a groundwater flow system \[JM\]\<br /\>%ENDCOLOR%\<hr /\>

\_Lead = P.<a href="Dahlhaus_" class="wikilink">Dahlhaus_</a>

Surfaces:

- [Groundwater Level](#GroundwaterLevel)
  - %BLACK%\[PD\] accept as a measurement (i.e. O&M)<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: PD, BB, EB. BS, BW, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Groundwater Level (however determined) should be kept as a measurement (cf: Feature), therefore covered by O&M \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: agree, not a surface, but a property of some entity, that can be measured or calculated \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: can be a measurement of 'depth to' (from measuring point), 'depth to' (from natural surface), 'elevation of' (above datum), or 'total head' (measured at a point), etc. \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment on \[PD\]: Agree, important to define reference point: international standard: (groundwater above mean sea level) \[NA}\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It occurs in wells only. In Aquifer (System), it is Piezometric/Potentiometric Surface. See below \[JM\].\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Piezometric Surface --\> Hydrogeologic Surface](#PiezometricSurface)
  - %BLACK%\[PD\] replace with Hydrogeologic Surface as "A surface that represents the interpolated groundwater table, or other surface \[of a body of groundwater \[BB\]\], for a local or regional area"<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: PD, BB, EB, BS, BW, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:JM<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: replace with Hydrogeologic Surface? as "A surface that represents the interpolated groundwater table, or other surface, for a local or regional area" which unambiguously covers all the other possibilities (whether the surface represents depth to, elevation of, or pressure at). \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: ammend def "..., or other surface of a body of groundwater,..." \[BB\]. Agree the ammendment \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment:\`Piezometric surface == coverage of Groudwater Levels \[EB\] <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I see misunderstanding here. Concept of Hydrogeologic Surface was used by me in INSPIRE D2.8.II/III.4 Data Specification on Geology – Draft Guidelines as a specific data type for different surfaces in hydrogeological domain. It is most often represented as a coverage (grided data). Piezometric/Potentiometric Surface is something completely different then other hydrogeologic surfaces, for example roof and bottom of aquifer \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%I think the intentions are all th same, but perhaps the name is too general. Propsoe renaming to <a href="GroundwaterBody" class="wikilink">GroundwaterBody</a> Surface? \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - need to have a general surface feature, with a property to identify its type\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> renamed as hydrogeologic surface.\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Potentiometric Surface --\> Hydrogeologic Surface](#PotentiometricSurface)
  - \[PD\] replace with Hydrogeologic Surface as "A surface that represents the interpolated groundwater table, or other surface %BLACK%\[of a body of groundwater \[BB\]\]<span class="twiki-macro ENDCOLOR"></span>, for a local or regional area"
  - %GRAY%Agree: PD, BB, EB, BS, BW, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:JM<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: replace with Hydrogeologic Surface? \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Potentiometric Surface is a synonym for Piezometric Surface \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span>

Properties:

- [Aquifer Properties](#AquiferParameters)
  - %BLACK%\[PD\] accept (no conflict)<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: PD, BB, EB, BS, BW, NA, CS, RT, FL\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: should Aquifer Parameters be many separate features? (e.g. Hydraulic Conductivity, Storativity, Transmisivity, Porosity, Effective Porosity, Specific Yield/Retention, Homogeneity/Heterogeneity, Isotropy/Anisotropy, etc.) \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: given that [Hydraulic Testing](#HydraulicTesting) has been ruled out of scope, do we include the (important) variables measured at the well in here? (e.g. Drawdown, Aquifer Loss, Well Loss, Specific Capacity, etc.). They are not all strictly Aquifer Parameters, as some of them vary according to the efficiency of the bore. Perhaps they are delivered via by O&M? \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: does this include aquifer type (e.g. fractured rock, porous, dual-porosity, unconfined, confined, semi-unconfined, semi-confined, leaky, delayed response, etc.)? \[PD\] Agree \[NA\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: In the above featurelist the hydrogeological description only include aquifer parameters (changed to Aquifer properties, agree). However aquifer properties further include \<br /\><span class="twiki-macro ENDCOLOR"></span>
    - %GRAY%1. Aquifers geometry (like mean aquifer thickness (m), \<br /\><span class="twiki-macro ENDCOLOR"></span>
    - %GRAY%2.Aquifer lithology, \<br /\><span class="twiki-macro ENDCOLOR"></span>
    - %GRAY%3. Hydraulic setting (3a types of voids: pres fissures, fissured karst) (3b hydraulic condition: confined, semi-confined, unconfined, mixed) \<br /\><span class="twiki-macro ENDCOLOR"></span>
    - %GRAY%4. Mean sources of recharge (precipitation, runoff, influent streams or lakes \<br /\><span class="twiki-macro ENDCOLOR"></span>
    - %GRAY%5. Mean sources of discharge (springs, baseflow, outflow into lakes/sea, evaporation) \[NA\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Full list of properties still to be determined \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - full list of properties will be shown in a separate wiki page<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - carefully set the distinction between aquifer and well-based properties, avoid confusion\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Yield](#GroundwaterYield)
  - %BLACK%\[PD\] accept as a Measurement (cf: Feature), i.e. O&M?<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: PD, BB (as a property of an aquifer), EB, BS, BW, JM, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Yield is an important property of an aquifer, but is usually an observed or measured parameter of discharge at a well or spring, therefore better suited to O&M? \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: seems key concept is 'property of an aquifer' -- because in addition to measured, I see it can also be calculated or even modeled numerically \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: The distinction between O&M and "property" is always a headache. My rule of thumb is when a value can only be represented in a context of a measurement (date, method, etc..), it's O&M. But most of the time you can have both representations (O&M become supporting evidence for the feature property - actually how it is defined in O&M spec.. observedProperty must point to the property of the feature of interest) \[EB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: In addition to Eric's point, individual yield measurements are delivered via O&M, but if an 'average aquifer yield' is required then it needs to be a property of the aquifer. \[BS\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Groundwater Yield can concern different features, for example: wells, aquifers, aquifer systems or management areas. It can be changeable in time. I must repeat my comment written previously: "It is the most complicated problem. In practice yield refers to specific well. In case of aquifer or aquifer system it can be estimated on base of numerical model only and here are applied terms "potential yield" or "disposable yield". Its value (expressed in m3 per unit of time) depends from many hydrogeological conditions, for example: spatial distribution of present and potential intakes, changes of water quality, constrains arising from nature protection and human settlement protection, etc. \[JM\]"<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: must determine which yield is meant. As per JM, seems to be a property of something else, e.g. aquifer yield, well yield. \[BB}<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - clearly define which yield is refered to<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> split into hydrogeologic yield (aquifer yield) and well yield\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Volume](#GroundwaterVolume)
  - %BLACK%\[PD\] accept, but move to Groundwater Management? <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: PD, BB (but also include volume property for gw body), EB, BS. HK, AK (but not move to Groundwater Management), NA (but not move to GW Management), FL\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:JM<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Groundwater volume is usually an administrative quantity for groundwater management, for example the Annual Permissible Consumptive Volume for sustainable use. Unless it means the Storativity of an aquifer? which is covered in Aquifer Parameters \[PD\] <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: three volumes are described in the comments--(1) property of a management area related to regulated usage, (2) property of an aquifer related to amount of potential storage space (= storativity), and (3) property of a groundwater body related to the amount of space it occupies (perhaps this is rather obscure). I suggest all three are included, with different names, as they are properties of different entities, e.g. (1) Managed Groundwater Volume, (2) Storativity, (3) Groundwater Body Volume \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I'm not convinced <a href="GroundwaterVolume" class="wikilink">GroundwaterVolume</a> is an administrative quantity. While the 3 volumes Boyan mentioned may be used for management purposes, surely they are properties of the real-world aquifer, and not human constructs. \[BS\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: But Groundwater Volume is not always coincident with an natural feature (aquifer or basin), it is also a legislated Permissible Consumptive Volume for an administrative area (e.g. Water Supply Protection Area, or Groundwater Management Area) that covers a partial area or volume of much larger aquifer, usually delineated to protect an asset such as a spring, or groundwater dependent lake, stream or ecosystem. \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I must repeat my comment written previously: "It is very strange concept for me as a hydrogeologist from the beginning (from 1966). It is similar to volume of water in river! In hydrogeology quantity of water is expressed by quantity of flow. It can be applicable to nonrenewable resources, for example rock oil. Groundwater is renewable." \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comemnt: the objection seems to be about (3), which is perhaps more hypothetical than practical \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - could be refered as a property of gw body.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> in scope, but need to evaluate the relevancy while doing the modeling process. Could be managed as a property.\<br /\><span class="twiki-macro ENDCOLOR"></span>
- %BLACK%Groundwater Body Properties \*new\*<span class="twiki-macro ENDCOLOR"></span>
  - %BLACK%\[BB\] accept. Similar to 'Aquifer Properties', a list of properties that characterize the groundwater body, e.g. temp, age, volume, etc.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: BB, BS, BW, JM, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: as per May meeting discussions. Full list tbd later. \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: note the 'Groundwater Volume' property for a gw body, as discussed above, would be included here. \[BB\] Agree \[BS\] <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I assume that this Feature refers to the fluid, not the media. If so, does it sit better with Quality? = Groundwater Composition =\> Groundwater Parameters? \[PD\] Agree \[NA\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Depends on the actual feature hierarchy \[HK\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: grouping of entities under quantity/quality is not very important now, just a convenience for this exercise. Will likely not reflect the entity hierarchy in the model. \[BB\]<span class="twiki-macro ENDCOLOR"></span>

Quality:

- [Groundwater Quality Description](#GroundwaterQualityDescription)
  - %BLACK%\[PD\] accept as "A normative quality description is an assesment based upon some guideline edited by a government or a quality standard." (e.g. a salinity range)<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: PD, BB,EB, BS, BW, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: As a Quality statement from data providers it is OK, otherwise it is very difficult to standardise quality infromation even though there is a ISO 19157 new norm on that which should be used - from INSPIRE experience.\[RT\]<span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Chemistry](#GroundwaterComposition)
  - %BLACK%\[PD} accept "The characterisation of the chemical composition of the groundwater, both natural and man-made." <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: PD, BB, EB, BS, BW, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: May be covered by O&M or Chemistry, but needs to be kept as an important component in groundwater descriptions \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: same issue regarding O&M vs property. We probably need to discuss a pattern here. \[EB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: same as with the quality - if used as a statement it is OK otherwise O&M should be used.\[RT,CS\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: include non-living organic components? \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: modeling considerations (e.g. O&M) to be considered later, when modeling. \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - maintained\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Biology](#GroundwaterBiology)
  - %BLACK%\[PD\] accept as "The characterisation of the biological composition of the groundwater, both natural and man-made." <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: PD, BB, EB, BS, BW, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Covers both Stygofauna and Microbiological components of groundwater. May be covered by O&M, but is an important component of groundwater descriptions \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: "biological composition" should be replaced by "biological cntent" \[JM<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: same as with the quality - if used as a statement it is OK otherwise O&M should be used.\[RT,CS\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: includes non-living organic components? \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - maintaned, includes larger organisms / stygofauna\<br /\><span class="twiki-macro ENDCOLOR"></span>
- %BLACK%Groundwater Composition<span class="twiki-macro ENDCOLOR"></span>
  - %BLACK%\[BB\] accept: a general concept for "the characterization of the chemical and biological composition of groundwater" <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: BS, PD, HK, AK (but remane Groundwater Parameters), FL\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM, CS, RT\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: covered already by features above? \[BW\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Should this be Groundwater Parameters? and replace Groundwater Body Properties? as all of the parameters of the fluid (cf. the media) not specifically covered by chemical composition (elements, molecules, compounds) or biology (species) (e.g. Temperature, Electrical Conductivity, Total Dissolved Solids, Total Suspended Solids, pH, Eh, Dissolved Oxygen, Oxidation-Reduction Potential, Biological Oxygen Demand, Colour, Turbidity, Hardness, Aggressiveness, Taste, Odour, Apparent Age, etc.) \[PD\] Agree \[NA\] Call ik Groundwater properties \[NA\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I see only one type of Grondwater Composition - it is Groundwater Chemistry \[JM\] - CS, RT<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: there are 2 different concepts here: intrinsic properties of the gw body (age, temp, volume), and the stuff that makes up the gw body (metals, salts, organic matter, organisms)--its constituents. Gw Properties is the former, and GW Composition is intended to be the latter. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - splitted into three distinct features: physical (ground water body description), chemical and biological.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - chemical and biological are compositional properties.\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - for each of the splitted features, a list of properties will be compiled in a separate wiki page.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> splitted into the three features.\<br /\><span class="twiki-macro ENDCOLOR"></span>

------------------------------------------------------------------------

\_Lead = P.<a href="Dahlhaus_" class="wikilink">Dahlhaus_</a>

Quantity:

- [Recharge Location](#RechargeArea)
  - \[PD\] accept (but it does not sit well with 'Quantity').
  - %GRAY%Agree: PD, ID, EB, BS, BW, JM, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Change to Recharge Site? \[PD\] "site" is widely understood as a point location. (ID) Agree. \<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment : Recharge Location ? \[EB\]. 'Location' is best, even though it might be a point (sinkhole), line (stream) or area (strata) \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I suggest "Recharge Feature". It is the most often ground surface \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Discharge Location](#DischargeArea)
  - \[PD\] accept (but it does not site well with 'Quantity').
  - %GRAY%Agree: PD,ID,EB, BS, BW, JM, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: Change to Recharge Site? \[PD\] "site" is widely understood as a point location. (ID) Agree. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment : Discharge Location ? \[EB\]. 'Location' is best, even though it might be a point (spring), line (stream) or area (diffuse discharge) \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I suggest "Discharge Feature" \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Cone of Depression](#ConeOfDepression)
  - \[PD\] delete in favour of [Zone of Contribution](#ZoneOfContribution) as "The area surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site."
  - %GRAY%Agree: PD, BS. JM, CS, RT, HK, AK<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: EB, FL\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: My feeling is that "Zone" is the 2D projection of the cone of depression on the surface. Cone is 3D. OR are we just looking at different representations ?. \[EB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: This is an interpolated Groundwater Surface and should be moved to Surfaces \[PD\] \[BW\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I don't believe Zone is restricted to 2D but can also be represented by 3D geometries \[BS\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: In reply to EB's disagree... The Cone of Depression (COD) is usually measured in an aquifer test and represented as a (2.5D) surface. The 3D volume of the COD (compared to before pumping) = yield. \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It is element of dynamic Piezometric/Potentiometric Surface and can be represented by different geometries. It can be estimated by numerical modeling only. Many cones can be superpositioned together.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - the zone of contribution feature can have 2D, 2D1/2 and 3D geometry.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> deleted feature, refer to Zone of contribution.\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Zone of Influence](#ZoneOfInfluence)
  - \[PD\] delete in favour of [Zone of Contribution](#ZoneOfContribution) as "The area surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site."
  - %GRAY%Agree: PD,EB, BS, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: This is an interpolated Groundwater Surface and should be moved to Surfaces \[PD\] \[BW\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Zone of Influence is a different concept then Zone of Contribution. It can be estimated by numerical modeling only. \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Zone of Contribution](#ZoneOfContribution)
  - \[PD\] accept as "The area surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site.", and move to Surfaces.
  - %GRAY%Agree: PD, ID, EB, BS, BW, JM, CS, RT, FL, HK ,AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: This is an interpolated Groundwater Surface and should be moved to Surfaces \[PD\] <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It is not a surface, it is zone. It also can be estimated by numerical modeling only. \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It is probably difficult to deliniate.\[CS, RT\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - 2D, 2D1/2 and 3D geometry possible.\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Body](#GroundwaterBody)
  - \[PD\] accept. Suggest definition as "A distinct body of groundwater that may be within an aquifer or system of aquifers."
  - %GRAY%Agree: PD, EB, BS, BW, JM, NA,CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Includes for example, a coastal saltwater wedge or saltwater bulge under a saline lake \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: wedges or bulges could also be seen as gw bodies that are parts of larger gw bodies \[BB\]<span class="twiki-macro ENDCOLOR"></span>
- [Water Body](#WaterBody)
  - \[PD\] delete as out of scope.
  - %GRAY%Agree: PD, EB, BS, BW, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I assume it is covered elsewhere (<a href="WaterML" class="wikilink">WaterML</a>?) \[PD\] Nope, <a href="WaterML" class="wikilink">WaterML</a> is strickly about monitoring stations and timeseries. IT is actually covered by HY model (Irina+Rob) \[EB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%(Surface) Water Bodies are the most often Discharging Features for Groundwater Bodies. Association between them is very needed \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Other Water Bodies](#OtherWaterBodies)
  - \[PD\] delete as out of scope.
  - %GRAY%Agree: PD, EB, BS, BW, JM, NA, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Do we need to consider depth of snow or water (as commented in the above Wiki)? \[PD\] <span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Layer](#GroundwaterLayer)
  - \[PD\] delete in favour of [Groundwater Body](#GroundwaterBody) or Hydrostratigraphic Unit (resp. <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>)
  - %GRAY%Agree: PD, BB, BS, BW, JM, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: This is redundant as it is either 1) a part of a Groundwater Body or 2) a 'layer' that implies stratigraphy (i.e. = Hydrostratigraphic Unit) \[PD\]. <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment : I need explanation about Groundwater Layer == Hydrostratigraphic Unit \[EB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: delete in favor of GW Body \[BB\]<span class="twiki-macro ENDCOLOR"></span>
- [Reservoir](#Reservoir)
  - \[PD\] accept as 'Groundwater Reservoir' meaning "The contained space in an Aquifer".
  - %GRAY%Agree: PD, EB, BB, BS, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM, CS, RT\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: As a Feature, Groundwater Reservoir may be a conceptual or qualitative term, whereas Porosity, Effective Porosity, Specific Yield and Storativity (i.e. [Aquifer Parameters](#AquiferParameters)) are numbers \[PD\] <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: redundant with <a href="GroundwaterBody" class="wikilink">GroundwaterBody</a>? \[BW\] <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Not needed. Redundant with Aquifer or Aquifer System \[JM\] Agree \[NA\], \[CS, RT\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Reservoir is not = Aquifer, it is a component of an Aquifer. If an Aquifer consists of (1) a rock body, (2) spaces in the rock body, and (3) a gw body that fills some of the spaces, then reservoir = (2) and the various properties are its measures (how much space exists (porosity), how much is fillable (effective porosity), how much is filled (storativity). It is possible to see this entity as the 'porosity related' properties of an aquifer, but conceptually that is a short-cut for properties of its spaces. \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - related to porosity.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> renamed as Hydrogeologic Void Space\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Water Budget](#WaterBudget)
  - \[PD\] delete as out of scope.
  - %GRAY%Agree: PD, BS, BW, NA, HK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: EB, JM, FL\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Isn'T required to deal with UC4 ? \[EB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: A vague term that relates to the the Hydrological Equation (Input - Output = Change in Storage) and is variable in temporal and spatial extent, depending on the scenarios modelled \[PD\] <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: If required, maybe this gets moved to Management? \[PD\] <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It is a set of attribytes related to Aquifer or Aquifer System. It also can be estimated by numerical modeling only. \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%From experience in GW reporting, it is an important element of information that should be attached at least as a property of an aquifer or an aquifer system. \[FL\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Isn't quite some stuff from UC4 out of scope? However, gw budget should be possible to be expressed adequately \[AK\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%%GRAY%Comment: does this amount to specific properties of an aquifer or management area? e.g. %ENDCOLOR%%ENDCOLOR%%GRAY%precipitation, %ENDCOLOR%%GRAY%evapotranspiration, %ENDCOLOR%%GRAY%runoff, %ENDCOLOR%%GRAY%recharge,%ENDCOLOR%<span class="twiki-macro GRAY"></span> discharge, w%ENDCOLOR%%GRAY%ell withdrawal \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - could be managed as a property of an aquifer system or an hydrogeologic unit.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] --\> Out of scope, should be managed as a property of an AQS or a HGU, will remained as a feature just as a reminder before doing the modeling of gwml (not to forget it).\<br /\><span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro GRAY"></span> [Spring](#Spring)<span class="twiki-macro ENDCOLOR"></span>
  - %BLACK%\[BB, PD\] accept, no conflicts<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: BB, PD, EB, BS, BW, JM, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: <span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: A Spring is just one type of groundwater [Discharge Location](#DischargeArea) \[PD\]<span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro GRAY"></span> [Water Well](#WaterWell)<span class="twiki-macro ENDCOLOR"></span>
  - %BLACK%\[BB, PD\] accept, no conflicts<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Agree: BB, PD, BS, BW, JM, CS, RT, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: In GWML we have only one type of wells: "Water Well" so this term can be simply "Well". There are two subtypes of wells:%ENDCOLOR%\<br /\>
    - %GRAY%Active Well - changing state of Groundwater Body in Aquifer System,<span class="twiki-macro ENDCOLOR"></span>
    - %GRAY%Observation Well - not changing the state<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Worthwile to make a distinction between active well and observation well \[NA\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: \*\[NA\] Ah.. yes , good point. <a href="AbstractionWell" class="wikilink">AbstractionWell</a> (active) participate in the aquifer discharge while observation wells usually don't. \[EB\]<span class="twiki-macro ENDCOLOR"></span>
- [Well Log](#WellLog)
  - \[PD\] accept "Recording of the geologic units found along the water well (GWML 1)."
  - %GRAY%Agree: PD,EB, BS, BW, NA, FL, HK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Some components will be covered by <a href="GeoSciML" class="wikilink">GeoSciML</a> \[PD\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment : And O&M. Logs are just linear gml coverages - altought in GWML is was modelled as a linear map (from <a href="GeoSciML" class="wikilink">GeoSciML</a>). GWML can handle both<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Log concerns borehole only. Borehole is a part of well. Other parts are pump, screen etc. One exception is logining of hydrogeological parameters. For geologic data we can use Borehole Log from <a href="GeoSciML" class="wikilink">GeoSciML</a> \[JM\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Same issue as with <a href="GeologicUnit" class="wikilink">GeologicUnit</a> - <a href="GeoSciML" class="wikilink">GeoSciML</a>, probably just a matter of communication? \[AK\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: this is a modeling discussion---does not appear to be a semantic conflict \[BB\]<span class="twiki-macro ENDCOLOR"></span>
- [Well Field](#WellField)
  - \[PD\] accept "An area which contains a number of wells"
  - %GRAY%Agree: PD, EB, BW, NA, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree: JM\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Is this better suited to Management Areas? \[PD\] Agree \[EB\] \[BS\] \[FL\] \[AK\]\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Would keep it with the water well (as a specialisation) \[BW\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: It is applicable to Oil or Gas Wells only. In urbanized areas this situation is common. May be "Groundwater Intake" will be better in this case \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: "Groundwater Intake Area"? {BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - it is a collection of wells, it could be managed as a gw management area.<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%\[FL\] - out of scope, will be managed as a property of a gw management area.\<br /\><span class="twiki-macro ENDCOLOR"></span>
- [Monitoring Site](#MonitoringSite)
  - \[PD\] accept \[Suggested definition "A place where hydrogeological conditions are observed" \[BB\]\]
  - %GRAY%Agree: PD, EB, BS, BW, JM, NA, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: Actually a <a href="WaterML" class="wikilink">WaterML</a> feature \[EB\]. During the modelling ensure linking across to the <a href="WaterML2" class="wikilink">WaterML2</a> feature is possible. \[BS\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: "Place" is unclear. I think "Monitoring Well/Station" or Obserwation Well/Station will be better. Very often Station is a collection of wells \[JM\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comment: I think well/station is too precise, site would also fit sampling sites e.g. springs\<br /\>%ENDCOLOR%\<hr /\>

\_Lead = Robert Tomas

Management areas:

\[RT, CS\] Clarification that applies to all features listed below: There are two options for modeling “GW management areas”:

1\) GW Management Area used for protection of water and/or reporting and..?

Implications: 1.

1.  The River Basin District entity cannot be covered inside this GW Man. Area feature - it is linked, but wider
2.  Natural conservation – protection area such as national parks, reservations etc. also cannot be covered inside this GW Man. Area feature. - it is linked but wider \* Agree: \* Disagree:

2\) GW Management Area as a type of a broader “Management Restriction Or Regulation Zone” entity

Implications: 1.

1.  Then River Basin District, general Natural conservation-protection area, as well as GW management area (for protection of water and/or reporting) represent types of this generic feature (in INSPIRE we have created a code list with many possible types..) \* Agree: CS, RT, \* Disagree: \* %GRAY%\[FL\] - scope the feature to a more generic gw management area.<span class="twiki-macro ENDCOLOR"></span> \* %GRAY%\[FL\] - need to see while modeling if a relation can be set between gw management area and gw basin<span class="twiki-macro ENDCOLOR"></span> \* %GRAY%\[FL\] --\> in scope, but need a more formal definition\<br /\><span class="twiki-macro ENDCOLOR"></span>

- [Protected Area](#ProtectedArea)
  - \[BB\] delete; replace with one "(GW)<a href="ManagementArea" class="wikilink">ManagementArea</a>"
  - %GRAY%Agree: BB, EB, BS, BW, PD, FL, HK, AK\<br /\><span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Disagree:<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: propose a general entity that represents different kinds of management areas. Issue is whether the scope should be limited to groundwater or extend to other area types (e.g. surface water management area). See details below. \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: see discussion paper 'Area management group definitions.docx' \[RT\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: possibly limit scope to groundwater only, but is this common practice? \[BB\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: "the point is that if we call it “<a href="GroundwaterManagementArea" class="wikilink">GroundwaterManagementArea</a>” it already limits the scope to only GW related management areas. Which is probably not correct since management areas (for restrictions, protection, reporting etc..) do not follow the natural “phenomenon” boundaries. Whereas if we call it generically like “<a href="ManagementArea" class="wikilink">ManagementArea</a>” we can include all possible types of management areas (see the code list for different zone types included in the previous document). Also it is closer to the generic “river basin” management area concept which covers not only GW bodies but also surface bodies, drinking water protection zones etc.." \[RT\]<span class="twiki-macro ENDCOLOR"></span>
  - %GRAY%Comments: as per May meeting -- general consensus to use GW Management Area, limited to gw managaement, but with link to a more general Management Area entity in some other model \[BB\]<span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Management Zone](#GroundwaterManagementZone)
  - \[BB\]: same as above. \[BS\]
  - Agree: RT, CS, HK, AK
  - Disagree:
  - Comments: Replaced by "(GW)<a href="ManagementArea" class="wikilink">ManagementArea</a>" \[RT\]
- [Management Restriction Or Regulation Zone](#ManagementRestrictionOrRegulationZone)
  - \[BB\] same as above. \[BS\]
  - Agree: RT, CS, HK
  - Disagree:
  - Comments: This generic class represents all types of area management-protection, restriction, regulation, reporting etc. entity. It means that this class can cover for instance River basin district, protection areas (including natural preservation types as well as groundwater management area used for protection and reporting which otherwise represent different entities. \[RT\]
- [River Basin District](#RiverBasinDistrict)
  - \[BB\] same as above.
  - Agree: HK
  - Disagree: Out of Scope \[BS\]
  - Comments: Part of the surface hydrology domain rather than the groundwater domain \[BS\]
  - Comments: wider then GW Managment Area - see the clarification above \[RT, CS\]
- [Groundwater Basin](#GroundwaterBasin)
  - \[BB\] same as above.
  - Agree: BS, RT, CS
  - Disagree:
  - Comments: limited to manaagement aspects. See comments above under Rock/Land Body for physical aspects.
  - Comment. This "Groundwater Basin" should not be confused with the Groundwater Basin above that refers to a collection of Aquifer Systems \[BS\]

------------------------------------------------------------------------

Out of Scope:

- Data modeling artefacts:
  - [Hydrogeologic Object](#HydrogeologicObject) -- modeling artefact
  - [Hydrogeologic Mapped Feature](#HydrogeologicMappedFeature)
- Facilities artefacts:
  - [Well Construction Elements](#WellConstructionElements) --
  - [Pump](#Pump)
  - [Hydraulic Testing](#HydraulicTesting)
    - Hydraulic Testing is a procedure in scope of OM related to groundwater body or aquifer. I think we should develop separate grup of concepts related to groundwater OM and based on <a href="WaterML" class="wikilink">WaterML</a> \[JM\]\<hr /\>

-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 20 Dec 2012

-- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 07 Jan 2013

-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 09 - 11 Jan 2013

-- Main.<a href="ChrisSchubert" class="wikilink">ChrisSchubert</a> - 15 Jan 2013

-- Main.<a href="RobertTomas" class="wikilink">RobertTomas</a> - 15 Jan 2013

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 01 May 2013

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 23 May 2013

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 24 May 2013

-- Main.<a href="PeterDahlhaus" class="wikilink">PeterDahlhaus</a> - 27 May 2013

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 29 May 2013

-- [Main.NienkeAnsems](Main.NienkeAnsems) - 30 May 2013

-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 03 Jun 2013

-- Main.<a href="IrinaDornblut" class="wikilink">IrinaDornblut</a> - 06 Jun 2013

-- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 14 Jun 2013

-- Main.<a href="HermannKlug" class="wikilink">HermannKlug</a> - 14 Jun 2013

- TOPICINFO{author="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" comment="reprev" date="1385077115" format="1.1" reprev="57" version="58"}

<!-- -->

- TOPICPARENT{name="GWIE2-Model-Comparison"}

<!-- -->

- FILEATTACHMENT{name="<a href="Area_management_group_definitions" class="wikilink">Area_management_group_definitions</a>.docx" attachment="<a href="Area_management_group_definitions" class="wikilink">Area_management_group_definitions</a>.docx" attr="" comment="" date="1369151925" path="E:\schubch\2013\working_documents\GWIE2\Area management group definitions.docx" size="57887" user="<a href="ChrisSchubert" class="wikilink">ChrisSchubert</a>" version="1"}
