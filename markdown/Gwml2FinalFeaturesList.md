# GWML 2 Final Entities List

This page shows the official gwml 2 feature list, as agreed upon while discussing the [scope and definitions](gwml2ConsolFeatureList) of a global set of features related to groundwater.

## Index of Entities

Hydrogeologically-bound land and rock bodies

- <span class="twiki-macro BLACK"></span> [Hydrogeologic Unit](#HydrogeologicUnit) <span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro BLACK"></span> [Aquifer System](#AquiferSystem) <span class="twiki-macro ENDCOLOR"></span>
- <span class="twiki-macro BLACK"></span> [Aquifer](#Aquifer) <span class="twiki-macro ENDCOLOR"></span>
- [Groundwater Basin](#GroundwaterBasin)

Flow, barriers and boundaries

- [Confining Bed](#ConfiningBed)
- [Groundwater Dam](#GroundwaterDam)
- [Groundwater Divide](#GroundwaterDivide)
- [Groundwater Flow](#GroundwaterFlow)
- [Groundwater Flow System](#GroundwaterFlowSystem)

Surfaces

- [Groundwater Level](#GroundwaterLevel)
- [Hydrogeologic Surface](#HydrogeologicSurface)

Hydrogeologic Properties

- [Aquifer Properties](#AquiferProperties)
- [Hydrogeological Unit Yield](#HydrogeologicUnitYield)
- [Groundwater Volume](#GroundwaterVolume)

Groundwater Quality and Properties

- [Groundwater Quality Description](#GroundwaterQualityDescription)
- [Groundwater Body Physical Properties](#GroundwaterBodyPhysicalProperties)
- [Groundwater Chemistry](#GroundwaterChemistry)
- [Groundwater Biology](#GroundwaterBiology)

Groundwater Quantities

- [Recharge Location](#RechargeLocation)
- [Discharge Location](#DischargeLocation)
- [Zone of Contribution](#ZoneOfContribution)
- [Groundwater Body](#GroundwaterFlow)
- [Hydrogeologic Void Space](#HydrogeologicVoidSpace)
- [Water Budget](#WaterBudget)

Management Areas

- [Groundwater Management Area](#GroundwaterManagementArea)

Groundwater Ecosystems

- [Groundwater Dependent Ecosystem](#GroundwaterDependentEcosystem)

Groundwater Sampling Features and Wells

- [Water Well](#WaterWell)
- [Spring](#Spring)
- [Well Log](#WellLog)
- [Monitoring Site](#MonitoringSite)
- [Well Yield](#WellYield)

## Entity List

<span class="twiki-macro TABLE" tableborder="2" tablebordercolor="#D3D3D3" tableframe="below">cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline" </span>

| Theme | Feature | Definition | Notes / Comments |
|:---|:---|:---|:---|
| **Hydrogeologically-bound land and rock bodies** |  |  |  |
|  | \<a name="<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>"\>\</a\>Hydrogeologic Unit | Hydrogeologic unit (1) Any soil or rock unit or zone which by virtue of its hydraulic properties has a distinct influence on the storage or movement of groundwater (after ANS, 1980). |  |
|  | \<a name="<a href="AquiferSystem" class="wikilink">AquiferSystem</a>"\>\</a\>Aquifer system | Aquifer system - A body of permeable and poorly permeable material that functions regionally as a water-yielding unit; it comprises two or more permeable beds separated at least locally by confining beds that impede groundwater movement but do not greatly affect the regional hydraulic continuity of the system; includes both saturated and unsaturated parts of permeable material (after ASCE, 1985). | **COMMENT \[ID\]:** a system is not a really "body" |
|  | \<a name="Aquifer"\>\</a\>Aquifer | A formation, group of formations, or part of a formation that contains sufficient saturated permeable material to yield significant quantities of water to wells and springs (after Lohman and others, 1972). |  |
|  | \<a name="<a href="GroundwaterBasin" class="wikilink">GroundwaterBasin</a>"\>\</a\>Groundwater Basin | %GREEN%A large hydrogeologically defined body of ground typically consisting of hydraulically connected hydrogeological units, \<font face="Arial" size="2"\>whose waters are flowing to a common or multiple outlets, and which is delimited by a groundwater divide. \</font\><span class="twiki-macro ENDCOLOR"></span> | Should we add the notion of common / multiple outlets and the gw divide? |
| **Flow, barriers and boundaries** |  |  |  |
|  | \<a name="<a href="ConfiningBed" class="wikilink">ConfiningBed</a>"\>\</a\>Confining Bed | %GREEN%A layer of rock having very low porosity and in consequence hydraulic conductivity that hampers the movement of water into and out of an aquifer (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" rel="nofollow" target="\_blank" title="Heath 1983"\>Heath 1983\</a\>) <span class="twiki-macro ENDCOLOR"></span> |  |
|  | \<a name="<a href="GroundwaterDam" class="wikilink">GroundwaterDam</a>"\>\</a\>Groundwater Dam | Body of material which is impermeable or has only low permeability and which occurs below the surface in such a position that it impedes groundwater flow. IGH0553 | In scope, but for a future version |
|  | \<a name="<a href="GroundwaterDivide" class="wikilink">GroundwaterDivide</a>"\>\</a\>Groundwater Divide | Line on a water table or piezometric surface on either side of which the groundwater flow diverges. IGH0556 |  |
|  | \<a name="<a href="GroundwaterFlow" class="wikilink">GroundwaterFlow</a>"\>\</a\>Groundwater Flow | Movement of water in an aquifer. IGH0557 |  |
|  | \<a name="<a href="GroundwaterFlowSystem" class="wikilink">GroundwaterFlowSystem</a>"\>\</a\>Groundwater Flow System | Flow path of groundwater from recharge to discharge location, through hydrogeological units. |  |
| **Surface** |  |  |  |
|  | \<a name="<a href="GroundwaterLevel" class="wikilink">GroundwaterLevel</a>"\>\</a\>Groundwater Level | \<p\> **Conflicting and multiple definitions for groundwater level** \</p\> \<p\>The standing water level (SWL) measured at a particular time in a groundwater bore or piezometer. The measurement may be stated as depth below ground (natural surface) or measured from a designated point on the well head. In a piezometer or in a sub-artesian bore the groundwater level is related to pressure at a point in the aquifer (i.e. the head at the screened interval). In an artesian bore the value may be a negative number. - **%RED%missing reference%ENDCOLOR%** \</p\> | An internationally recognized vetical datum should be used to express the value. |
|  | \<a name="<a href="HydrogeologicSurface" class="wikilink">HydrogeologicSurface</a>"\>\</a\>Hydrogeologic Surface | A surface that represents the interpolated groundwater table, or other surface of a body of groundwater, for a local or regional area - <span class="twiki-macro RED"></span> **missing reference** <span class="twiki-macro ENDCOLOR"></span> |  |
| **Hydrogeologic Properties** |  |  |  |
|  | \<a name="<a href="AquiferProperties" class="wikilink">AquiferProperties</a>"\>\</a\> [Aquifer Properties](aquiferProperties) | A measured or calculated physical or hydraulic property of an aquifer such as hydraulic conductivity, Transmissivity, Storativity, porosity, effective porosity, Specific Yield (drainable porosity) and Retention (non-drainable porosity), Specific Capacity (it is well parameter), etc. usually measured at a well or series of wells (based on \<a href="<http://pubs.usgs.gov/wsp/wsp2220/>" rel="nofollow" title="Heath 1983"\>Heath 1983\</a\>, Freeze & Cherry 1979, Fetter 2001) (it can be also measured in laboratory on base of aquifer samples) |  |
|  | \<a name="<a href="HydrogeologicUnitYield" class="wikilink">HydrogeologicUnitYield</a>"\>\</a\>Hydrogeologic Unit Yield | Hydrogeological unit yield (aquifer yield) is the maximum rate of withdrawal that can be sustained by an aquifer. Expressed as m\<sup\>3\</sup\>. **%RED%(NRCan aquifer yield definition)%ENDCOLOR%** |  |
|  | \<a name="<a href="GroundwaterVolume" class="wikilink">GroundwaterVolume</a>"\>\</a\>Groundwater Volume | Description of the volume/quantity of water present in an aquifer at a certain time | To be considered as a property during modeling |
| **Groundwater Quality and Properties** |  |  |  |
|  | \<a name="<a href="GroundwaterQualityDescription" class="wikilink">GroundwaterQualityDescription</a>"\>\</a\> [Groundwater Quality Description](groundwaterQualityDescription) | A normative quality description is an assesment based upon some guideline edited by a government or a quality standard. |  |
|  | \<a name="<a href="GroundwaterBodyPhysicalProperties" class="wikilink">GroundwaterBodyPhysicalProperties</a>"\>\</a\> [Groundwater Body Physical Properties](groundwaterBodyProperties) | A list of properties that characterize the groundwater body |  |
|  | \<a name="<a href="GroundwaterChemistry" class="wikilink">GroundwaterChemistry</a>"\>\</a\> [Groundwater Chemistry](groundwaterChemistry) | The characterisation of the chemical composition of the groundwater, both natural and man-made. |  |
|  | \<a name="<a href="GroundwaterBiology" class="wikilink">GroundwaterBiology</a>"\>\</a\> [Groundwater Biology](groundwaterBiology) | The characterisation of the biological composition of the groundwater, both natural and man-made. | Covers both Stygofauna and Microbiological components of groundwater. |
| **Groundwater Quantities** |  |  |  |
|  | \<a name="<a href="RechargeLocation" class="wikilink">RechargeLocation</a>"\>\</a\>Recharge Location | An area representing the hydrogeologic unit which contributes water to an aquifer, either by direct infiltration or by runoff and subsequent infiltration. IGH0685 |  |
|  | \<a name="<a href="DischargeLocation" class="wikilink">DischargeLocation</a>"\>\</a\>Discharge Location | Groundwater discharge is the removal of water from the saturated zone of a drainage basin across the watertable surface, together with the associated flow toward the water table in the saturated zone. In discharge areas the groundwater flow direction is upward and hydraulic head in the aquifer systems increases with depth. Two principal types of discharge can be differentiated and recognised in the field: point (focal) discharge (springs, seeps, streams and lakes) and diffuse discharge (evaporation from shallow water tables and biological discharge). (taken from \<a href="<http://www.publish.csiro.au/pid/413.htm>" rel="nofollow" target="\_blank" title="Salama 1998"\>Salama R.B.(ed.) 1998\</a\>). |  |
|  | \<a name="<a href="ZoneOfContribution" class="wikilink">ZoneOfContribution</a>"\>\</a\>Zone of Contribution | The area surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site. - <span class="twiki-macro RED"></span> **add reference** %ENDCOLOR%(taken from wiki discussion) |  |
|  | \<a name="<a href="GroundwaterBody" class="wikilink">GroundwaterBody</a>"\>\</a\>Groundwater Body | A distinct body of groundwater that may be within a container such as an aquifer, system of aquifers, or water well. - **%RED%add reference%ENDCOLOR%** (taken from wiki discussion) |  |
|  | \<a name="<a href="HydrogeologicVoidSpace" class="wikilink">HydrogeologicVoidSpace</a>"\>\</a\>Hydrogeologic Void space | Spaces in the rock body - **%RED%need more precise definition<span class="twiki-macro ENDCOLOR"></span>**(new feature) |  |
|  | \<a name="<a href="WaterBudget" class="wikilink">WaterBudget</a>"\>\</a\>Water Budget | An accounting of the inflow, outflow, and storage changes of water in a hydrologic unit - **%RED%better definition required ??<span class="twiki-macro ENDCOLOR"></span>** | (as a property of a HGU) |
| **Management Areas** |  |  |  |
|  | \<a name="<a href="GroundwaterManagementArea" class="wikilink">GroundwaterManagementArea</a>"\>\</a\>Groundwater Management Area | Management Restriction Or Regulation Zone - <span class="twiki-macro RED"></span> **need more precise definition** %ENDCOLOR%(taken from wiki discussion) |  |
| **Groundwater Ecosystem** |  |  |  |
|  | \<a name="<a href="GroundwaterDependentEcosystem" class="wikilink">GroundwaterDependentEcosystem</a>"\>\</a\>Groundwater Dependant Ecosystem | Natural ecosystems that require access to groundwater to meet all or some of their water requirements on a permanent or intermittent basis, so as to maintain their communities of plants and animals, ecosystem processes and ecosystem services. Source: \<a href="<http://nwc.gov.au/__data/assets/pdf_file/0006/19905/GDE-toolbox-part-1.pdf>" rel="nofollow" target="\_top"\>Richardson, S., et al., (2011). Australian groundwater-dependent ecosystem toolbox part 1: assessment framework, Waterlines report, National Water Commission, Canberra\</a\> | (test the relevancy of the feature while modeling) |
| **Groundwater Sampling Features and Wells** |  |  |  |
|  | \<a name="<a href="WaterWell" class="wikilink">WaterWell</a>"\>\</a\>Water Well | A shaft or hole sunk, dug or drilled into the Earth to extract water. IGH1379 |  |
|  | \<a name="Spring"\>\</a\>Spring | Any natural situation where groundwater flows to the surface of the earth. Thus, a spring is a site where the aquifer surface meets the ground surface. - <span class="twiki-macro RED"></span> **need more precise definition** %ENDCOLOR%(taken from wiki discussion) |  |
|  | \<a name="<a href="WellLog" class="wikilink">WellLog</a>"\>\</a\>Well Log | Recording of the geologic units found along the water well (GWML 1). |  |
|  | \<a name="<a href="MonitoringSite" class="wikilink">MonitoringSite</a>"\>\</a\>Monitoring Site | Observation well used to watch for the advent of an anticipated condition, generally undesirable, such as the advance of the salt-water front in a coastal area where salt-water encroachment is occurring, or the movement of a pollutant injected into a disposal well. IGH0806 |  |
|  | \<a name="<a href="WellYield" class="wikilink">WellYield</a>"\>\</a\>Well Yield | Estimated or calculated yield from a well - **%RED%need more precise definition<span class="twiki-macro ENDCOLOR"></span>**(new feature) | As a property of a water well? |

-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 25 Jun 2013

- TOPICINFO{author="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" comment="reprev" date="1385077141" format="1.1" reprev="9" version="11"}

<!-- -->

- TOPICPARENT{name="<a href="Gwml2ConsolFeatureList" class="wikilink">Gwml2ConsolFeatureList</a>"}
