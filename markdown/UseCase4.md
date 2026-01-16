# **Use Case 4 -- Scientific**

## Participants

- \<p\>J.Lucido (lead), Dave Blodgett (USGS), [Janusz Michalak](Main.JanuszMichalak) (PTIP & Warsaw University), Alex Kmoch (GNS / <a href="Z_GIS" class="wikilink">Z_GIS</a>)\</p\>

## Discussion Page

- For discussion about this use case please add comments to [this page](GWIE2UC4DiscussionPage).

## Abstract

This use case involves the delivery of information required to help determine the flow of groundwater within a particular terrain, likely for input into a computational flow modeling software, and model results. It involves the delivery of hydrogeologic and geophysical properties associated with hydrogeologic units (such as key aquifer properties), the delivery of observations related to those units, well characteristics (driller's log), information about the related water bodies and in some cases water use information.

## Objective

%RED%Included in [GW2IE](GroundwaterInteroperabilityExperiment2) Use Case\<br /\><span class="twiki-macro ENDCOLOR"></span>

%BLUE%Full Groundwater Flow Modeling Use Case<span class="twiki-macro ENDCOLOR"></span>

- %RED%Delivery of data for use in groundwater flow modeling software (e.g. MODFLOW, FEFLOW or ASPAR)<span class="twiki-macro ENDCOLOR"></span>
  - %RED%Data necessary for groundwater flow models: (May decide to incorporate only some of these data types)<span class="twiki-macro ENDCOLOR"></span>
    - %BLUE%Data to complete Soil-Water Balance Model (hydrology & terrestrial info: precipitation, temperature, land cover, land use, evapotransporation, runoff)<span class="twiki-macro ENDCOLOR"></span>
    - %RED%Water body characteristics & observations<span class="twiki-macro ENDCOLOR"></span> (%BLUE%stream flow<span class="twiki-macro ENDCOLOR"></span>, %RED%gw levels,<span class="twiki-macro ENDCOLOR"></span> %BLUE%sw levels)<span class="twiki-macro ENDCOLOR"></span>
    - %RED%Water use<span class="twiki-macro ENDCOLOR"></span> (%RED%pumping rates<span class="twiki-macro ENDCOLOR"></span>,<span class="twiki-macro BLUE"></span> diversion schedules<span class="twiki-macro ENDCOLOR"></span>)
    - %RED%Geophysical analysis (well construction, rock lithology and fractures, permeability and porosity, and water quality)<span class="twiki-macro ENDCOLOR"></span>
- %BLUE%Delivery of groundwater flow model output<span class="twiki-macro ENDCOLOR"></span>
  - %BLUE%Coverage of heads & fluxes<span class="twiki-macro ENDCOLOR"></span>
  - %BLUE%Time series of flow and/or water level at points (wells & springs)<span class="twiki-macro ENDCOLOR"></span>

## Actors

- Groundwater modelers
- Hydrogeologists

## Actions

- %RED%Discovering, searching, displaying, analyzing and downloading characteristics for all groundwater bodies in a study area<span class="twiki-macro ENDCOLOR"></span>
- %RED%Collecting geological, hydrogeological, physical and use/consumption data about each groundwater body<span class="twiki-macro ENDCOLOR"></span>
- %BLUE%Completing a soil-water balance<span class="twiki-macro ENDCOLOR"></span>
- %BLUE%Completing spatial and temporal analyses<span class="twiki-macro ENDCOLOR"></span>
- %BLUE%Calculating heads & fluxes in space and time<span class="twiki-macro ENDCOLOR"></span>
- %BLUE%Calculating timeseries of flow or water level at points where data was collected (wells & springs)<span class="twiki-macro ENDCOLOR"></span>
- %BLUE%Visualization of gw flow and storage in time and space<span class="twiki-macro ENDCOLOR"></span>

## Entities (Features, Observations, Properties)

Entities depend on type of model and the discretion of modelers and scientists. They include all or a subset of the following

- water wells:
  - \_general\_: id, source, location, elevation, length, water level, well purpose
  - \_well construction\_: drill date, well casing intervals, sealing component intervals, screen intervals
  - \_logs\_: depth interval, lithologies, porosity, hydraulic conductivity
  - \_water quantity\_: storage, water levels
- aquifers:
  - \_general\_: name, area,
  - \_geology\_: formations, lithologies
  - \_properties\_: confinement, media, water storage, sediment thickness, aquifer thickness, porosity, conductivity
  - \_water balance\_: aquifer recharge, aquifer discharge
  - \_water use\_: yield, usage type

## Web Clients

There are many potential clients for receiving this information including, but not limited to: GSC Client, US NGWMN client, US state or local agency websites

<span class="twiki-macro TABLE" tableborder="2" tablebordercolor="#D3D3D3" tableframe="below">cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline" </span>\<br /\>

| Web Service | Input Database | Output Schema | Implementer |
|:---|:---|:---|:---|
| WMS | wells, aquifers? | N/A | USGS & others? |
| WFS | hydrogeology & geology | GWML2--wells, aquifers | USGS & others? |
| SOS | well & aquifer observations | <a href="WaterML2" class="wikilink">WaterML2</a> --water levels, storage | USGS & others? |
| WPS | WFS (GWML2), SOS (<a href="WaterML2" class="wikilink">WaterML2</a>.) ... WCS (DEM ..) | a basic MODFLOW grid or computed values, e.g. zone budget, DRASTIC vulnerability values? | GNS |

-- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 02 Jul 2015

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 24 Oct 2012

For discussion about this use case please add comments to [this page](GWIE2UC4DiscussionPage). Documents for discussion are listed below.

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 20 Nov 2012

- [UseCaseForFlowModel_Intro.docx](%ATTACHURL%/UseCaseForFlowModel_Intro.docx): Introduction to [GW2IE](GroundwaterInteroperabilityExperiment2) UC4: Scientific -- data for groundwater flow models (initial draft version)
- [UseCaseforFlowModel_P_Wojda.doc](%ATTACHURL%/UseCaseforFlowModel_P_Wojda.doc): Hydrogeological data model use case for INSPIRE prepared by Piotr Wojda (start point for development)

-- Main.<a href="JessicaLucido" class="wikilink">JessicaLucido</a> - 20 Nov 2012

-- Main.<a href="DavidBlodgett" class="wikilink">DavidBlodgett</a> and Main.<a href="JessicaLucido" class="wikilink">JessicaLucido</a> - 21 Nov 2012

- TOPICINFO{author="<a href="AlexKmoch" class="wikilink">AlexKmoch</a>" comment="save topic" date="1435813288" format="1.1" reprev="12" version="12"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}

<!-- -->

- FILEATTACHMENT{name="<a href="UseCaseForFlowModel_Intro" class="wikilink">UseCaseForFlowModel_Intro</a>.docx" attachment="<a href="UseCaseForFlowModel_Intro" class="wikilink">UseCaseForFlowModel_Intro</a>.docx" attr="" comment="Introduction to <a href="GW2IE" class="wikilink">GW2IE</a>? UC4: Scientific -- data for groundwater flow models (initial draft version)" date="1353416150" path="<a href="UseCaseForFlowModel_Intro" class="wikilink">UseCaseForFlowModel_Intro</a>.docx" size="288363" user="<a href="JessicaLucido" class="wikilink">JessicaLucido</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="UseCaseforFlowModel_P_Wojda" class="wikilink">UseCaseforFlowModel_P_Wojda</a>.doc" attachment="<a href="UseCaseforFlowModel_P_Wojda" class="wikilink">UseCaseforFlowModel_P_Wojda</a>.doc" attr="" comment="Hydrogeological data model use case for INSPIRE prepared by Piotr Wojda (start point for development)" date="1353416224" path="<a href="UseCaseforFlowModel_P_Wojda" class="wikilink">UseCaseforFlowModel_P_Wojda</a>.doc" size="137216" user="<a href="JessicaLucido" class="wikilink">JessicaLucido</a>" version="1"}
