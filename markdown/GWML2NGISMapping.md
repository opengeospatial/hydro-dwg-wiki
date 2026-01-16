# Australian National Groundwater Information System (NGIS) to GWML2 Mapping

## Background

This page contains various mappings between the Australian National Groundwater Information System (NGIS) standard, as implemented in the Bureau of Meteorology's database, and <a href="GroundWaterML2" class="wikilink">GroundWaterML2</a> (GWML2). The mappings are presented as UML, as annotated instance examples (XML), and as an excel spreadsheet ( [NGIS_GWML_Mapping.xlsx](https://wiki.csiro.au/download/attachments/671386283/NGIS_GWML_Mapping.xlsx?version=1&modificationDate=1412307902717&api=v2)). The UML diagrams are based on the methodology outlined at \<a href="<https://wiki.csiro.au/display/SIRF/ModelMapping>" target="\_blank"\><a href="ModelMapping" class="wikilink">ModelMapping</a>\</a\>. The actual UML model contains more information than can be shown in the diagrams.

The mappings were appropriate and valid against GWML2.0 as at 1 October 2014. Subsequent changes to GWML2 have not been incorporated into the mappings presented here.

## GWML2:<a href="GW_Well" class="wikilink">GW_Well</a>

The GWML2 <a href="GW_Well" class="wikilink">GW_Well</a> is "A shaft or hole sunk, dug or drilled into the Earth to extract water.", which equates to the NGIS <a href="NGIS_Bore" class="wikilink">NGIS_Bore</a> feature.

The <a href="GW_Well" class="wikilink">GW_Well</a> feature has associations with its construction components (gwWellConstruction:Borehole), groundwater fluid (gwWellBody:<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>), hydrogeological unit (gwWellUnit:<a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>) and geology log (gwWellGeology:<a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a>).

These are all shown as separate mappings here, but some (such as gwWellConstruction:Borehole, gwWellBody:<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>, and gwWellGeology:<a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a>) are likely to be included in-line with the <a href="GW_Well" class="wikilink">GW_Well</a> feature when deployed.

[NGIS-GW_Well-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_Well-Mapping.jpg?version=1&modificationDate=1412299101057&api=v2) (UML mapping of <a href="NGIS_Bore" class="wikilink">NGIS_Bore</a> to <a href="GW_Well" class="wikilink">GW_Well</a>)

[GW_Well_NGIS_uc5-mapping.xml](%ATTACHURL%/GW_Well_NGIS_uc5-mapping.xml) (annotated XML instance of <a href="GW_Well" class="wikilink">GW_Well</a> and Borehole populated from NGIS data)

\<h2 id="Mappings:<a href="NGIStoGWML2" class="wikilink">NGIStoGWML2</a>-GWML2:Borehole"\>GWML2:Borehole\</h2\>

GWML2 Borehole captures data relating to the construction components of the <a href="GW_Well" class="wikilink">GW_Well</a>, such as collar, headworks, screens, casings, filters and seals. These components are specified via the bholeConstruction:<a href="WellConstruction" class="wikilink">WellConstruction</a> feature.

Although shown here with a separate UML Mapping and XML instance document, and in a separate application schema in GWML2, it is anticipated that Borehole and <a href="WellConstruction" class="wikilink">WellConstruction</a> will be delivered in-line with <a href="GW_Well" class="wikilink">GW_Well</a> rather than by reference.

The NGIS UML mapping is shown in two parts for presentation purposes:

1.  The <a href="NGIS_ConstructionLog" class="wikilink">NGIS_ConstructionLog</a> to GWML2 Borehole mapping ( [NGIS-Borehole-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-Borehole-Mapping.jpg?version=1&modificationDate=1412299242533&api=v2));
2.  The <a href="NGIS_ConstructionLog" class="wikilink">NGIS_ConstructionLog</a> to GWML2 <a href="WellConstruction" class="wikilink">WellConstruction</a> components ( [NGIS-Borehole_Component-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-Borehole_Component-Mapping.jpg?version=1&modificationDate=1412299442463&api=v2));

An XML instance of GWML2 Borehole with construction components based on the NGIS data is contained in the <a href="GW_Well" class="wikilink">GW_Well</a> instance example ( [GW_FluidBody-NGIS_uc5-mapping.xml](%ATTACHURL%/GW_FluidBody-NGIS_uc5-mapping.xml)). \<h2 id="Mappings:<a href="NGIStoGWML2" class="wikilink">NGIStoGWML2</a>-GWML2:<a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a>"\>GWML2:<a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a>\</h2\>

<a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> is a "specialization of the <a href="OM_Observation" class="wikilink">OM_Observation</a> class to allow defining the log start end depth for coverages."

For NGIS, two types of <a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> are provided:

1.  A lithology log based on <a href="NGIS_LithologyLog" class="wikilink">NGIS_LithologyLog</a> ( [NGIS_Lithology-GW_GeologyLog-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS_Lithology-GW_GeologyLog-Mapping.jpg?version=1&modificationDate=1412299932217&api=v2)). The result value for the lithology contains the <a href="MajorLithCode" class="wikilink">MajorLithCode</a>, <a href="MinorLithCode" class="wikilink">MinorLithCode</a> and Description properties;
2.  A stratigraphy log based on <a href="NGIS_BoreholeLog" class="wikilink">NGIS_BoreholeLog</a> ( [NGIS_Stratigraphy-GW_GeologyLog-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS_Stratigraphy-GW_GeologyLog-Mapping.jpg?version=1&modificationDate=1412299932177&api=v2)). The result value for the stratigraphic log is a reference (http-URI) to the appropriate <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a> unit based on the HGUNumber and the <a href="NGIS_BoreholeLog" class="wikilink">NGIS_BoreholeLog</a>:Description field.

An instance document containing examples of these is conyained in the <a href="GW_Well" class="wikilink">GW_Well</a> instance ( [GW_FluidBody-NGIS_uc5-mapping.xml](%ATTACHURL%/GW_FluidBody-NGIS_uc5-mapping.xml)).

## GWML2:<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>

"A distinct body of some fluid (liquid, gas) that fills the voids of a container such as an aquifer, system of aquifers, water well, etc; in hydrogeology this body is usually constituted from groundwater, but the model allows for other types of fillers e.g. petroleum."

For NGIS the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> information is obtained from properties (HGUTransmissivity, <a href="HGUHydraulicK" class="wikilink">HGUHydraulicK</a>, HGUStorage) contained within the <a href="NGIS_HydrogeologicUnit" class="wikilink">NGIS_HydrogeologicUnit</a> table. <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> is referenced from both the <a href="GW_Well" class="wikilink">GW_Well</a> (gwWellBody) and the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> (gwUnitFluidBody) features. <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> could be established as a an independent feature service or contained in-line in both of these features.

The UML NGIS to GWML2 mapping for <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> is [NGIS-GW_UnitFluid-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_UnitFluid-Mapping.jpg?version=1&modificationDate=1412299932207&api=v2) and an example instance at [GW_FluidBody-NGIS_uc5-mapping.xml](%ATTACHURL%/GW_FluidBody-NGIS_uc5-mapping.xml).

## GWML2:<a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>

The <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> is "Any soil or rock unit or zone which by virtue of its hydraulic properties has a distinct influence on the storage or movement of groundwater". In GWML2 it is an abstract feature, that is made concrete by the <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>, <a href="GW_ConfingBed" class="wikilink">GW_ConfingBed</a>, <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> and <a href="GW_Basin" class="wikilink">GW_Basin</a> classes.

Features in <a href="NGIS_HydrogeologicUnit" class="wikilink">NGIS_HydrogeologicUnit</a> will, depending on their properties, map to the <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>, <a href="GW_ConfiningBed" class="wikilink">GW_ConfiningBed</a>, <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> or <a href="GW_Basin" class="wikilink">GW_Basin</a>.

It is anticipated that the NGIS WFS will deliver these features as separate features referenced from <a href="GW_Well" class="wikilink">GW_Well</a>, rather than in-line.

The NGIS to GWML2 UML mappings for common <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> properties is shown at [NGIS-HydrogeoUnit_Common-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-HydrogeoUnit_Common-Mapping.jpg?version=1&modificationDate=1412299442470&api=v2).

An XML instance document, containing instances of all four <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> concrete feature types is at ( [GW_HydrogeoUnit_NGIS_uc5-mapping.xml](%ATTACHURL%/GW_HydrogeoUnit_NGIS_uc5-mapping.xml))

### GWML2:<a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>

In GWML 2 a <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a> is "A body of ground that contains, or potentially contains or contained, sufficient saturated permeable material to yield significant quantities of water to wells and springs".

For NGIS this equates to the hydrogeologic unit (HGU) <a href="NGIS_HydrogeologicUnit" class="wikilink">NGIS_HydrogeologicUnit</a> entries where the <a href="HGUAquiferType" class="wikilink">HGUAquiferType</a> is not equal to "Aquitard".

The UML mapping between <a href="NGIS_HydrogeologicUnit" class="wikilink">NGIS_HydrogeologicUnit</a> and <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a> is [NGIS-GW_Aquifer-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_Aquifer-Mapping.jpg?version=1&modificationDate=1412299442480&api=v2).

### GWML2:<a href="GW_ConfiningBed" class="wikilink">GW_ConfiningBed</a>

A <a href="GW_ConfiningBed" class="wikilink">GW_ConfiningBed</a> is "A layer of rock having very low porosity and in consequence hydraulic conductivity that hampers the movement of water into and out of an aquifer".

For NGIS this is interpreted as a hydrogeologic unit (HGU) <a href="NGIS_HydrogeologicUnit" class="wikilink">NGIS_HydrogeologicUnit</a> entry where the <a href="HGUAquiferType" class="wikilink">HGUAquiferType</a> is equal to "Aquitard".

The UML mapping between <a href="NGIS_HydrogeologicUnit" class="wikilink">NGIS_HydrogeologicUnit</a> and <a href="GW_ConfiningBed" class="wikilink">GW_ConfiningBed</a> is [NGIS-GW_ConfiningBed-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_ConfiningBed-Mapping.jpg?version=2&modificationDate=1412636696943&api=v2)

### GWML2:<a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a>

"Aquifer system - A body of permeable and poorly permeable material that functions regionally as a water-yielding unit; it comprises two or more permeable beds separated at least locally by confining beds that impede groundwater movement but do not greatly affect the regional hydraulic continuity of the system; includes both saturated and unsaturated parts of permeable material."

For NGIS, <a href="GW_AquiferSystems" class="wikilink">GW_AquiferSystems</a> are considered to equate with hydrogeologic complex (HGC) and National Aquifer Framework HGC (<a href="NafHGC" class="wikilink">NafHGC</a>) entries in <a href="NGIS_HydrogeologicUnit" class="wikilink">NGIS_HydrogeologicUnit</a>.

The UML mapping between <a href="NGIS_HydrogeologicUnits" class="wikilink">NGIS_HydrogeologicUnits</a> and <a href="GW_AquiferSystems" class="wikilink">GW_AquiferSystems</a> is [NGIS\_-GW_AquiferSystem-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS_-GW_AquiferSystem-Mapping.jpg?version=1&modificationDate=1412299442437&api=v2).

### GWML2:<a href="GW_Basin" class="wikilink">GW_Basin</a>

"A large hydrogeologically defined body of ground typically consisting of hydraulically connected hydrogeological units, whose waters are flowing to a common or multiple outlets, and which is delimited by a groundwater divide."

For NGIS, <a href="GW_Basins" class="wikilink">GW_Basins</a> are considered to map to provinces (<a href="ProvName" class="wikilink">ProvName</a>) or National Aquifer Framework provences (<a href="NafProvName" class="wikilink">NafProvName</a>) entries in <a href="NGIS_HydrogeologicUnit" class="wikilink">NGIS_HydrogeologicUnit</a>.

The UML mapping between <a href="NGIS_HydrogeologicUnits" class="wikilink">NGIS_HydrogeologicUnits</a> and <a href="GW_Basin" class="wikilink">GW_Basin</a> is [NGIS-GW_Basin-Mapping.jpg.](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_Basin-Mapping.jpg?version=1&modificationDate=1412299932197&api=v2)

## GWML2:<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> (need to update based on May 2015 changes to GWML2).

"Area of ground identified for groundwater management purposes and can be delineated by human factors such as policy or regulation concerns, as well as hydrogeological or hydrological concerns. Does not necessarily align exactly with hydrogeoogical or hydrological boundaries."

Mapping between the NGIS database and <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> is based on initial NGIS schema and has not been validated using actual NGIS data. The UML for the mapping ( [NGIS_ManagementZone.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS_ManagementZone.jpg?version=1&modificationDate=1412903564767&api=v2)) has been created based on the NGIS online schema. A XML instance document based an anticipated data is at [GWML2-GW_ManagementArea-NGIS.xml](https://wiki.csiro.au/download/attachments/671386283/GWML2-GW_ManagementArea-NGIS.xml?version=1&modificationDate=1412307410570&api=v2).

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 21 May 2015

- TOPICINFO{author="<a href="BruceSimons" class="wikilink">BruceSimons</a>" comment="reprev" date="1432185244" format="1.1" reprev="2" version="2"}

<!-- -->

- TOPICPARENT{name="<a href="UseCase5Implementation" class="wikilink">UseCase5Implementation</a>"}

<!-- -->

- FILEATTACHMENT{name="<a href="NGIS_GWML_Mapping" class="wikilink">NGIS_GWML_Mapping</a>.xlsx" attachment="<a href="NGIS_GWML_Mapping" class="wikilink">NGIS_GWML_Mapping</a>.xlsx" attr="" comment="Mapping between NGIS and GWML2" date="1432170764" path="<a href="NGIS_GWML_Mapping" class="wikilink">NGIS_GWML_Mapping</a>.xlsx" size="23877" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>-<a href="NGIS_uc5" class="wikilink">NGIS_uc5</a>-mapping.xml" attachment="<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>-<a href="NGIS_uc5" class="wikilink">NGIS_uc5</a>-mapping.xml" attr="" comment="Mapping between NGIS and GWML2 for <a href="GW_Fluid" class="wikilink">GW_Fluid</a>" date="1432183814" path="<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>-<a href="NGIS_uc5" class="wikilink">NGIS_uc5</a>-mapping.xml" size="15157" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW_Well_NGIS_uc5" class="wikilink">GW_Well_NGIS_uc5</a>-mapping.xml" attachment="<a href="GW_Well_NGIS_uc5" class="wikilink">GW_Well_NGIS_uc5</a>-mapping.xml" attr="" comment="Mapping between NGIS and GWML2 for <a href="GW_Well" class="wikilink">GW_Well</a> and Borehole" date="1432184568" path="<a href="GW_Well_NGIS_uc5" class="wikilink">GW_Well_NGIS_uc5</a>-mapping.xml" size="160250" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW_HydrogeoUnit_NGIS_uc5" class="wikilink">GW_HydrogeoUnit_NGIS_uc5</a>-mapping.xml" attachment="<a href="GW_HydrogeoUnit_NGIS_uc5" class="wikilink">GW_HydrogeoUnit_NGIS_uc5</a>-mapping.xml" attr="" comment="Mapping between NGIS and GWML2 for <a href="GW_HydroGeoUnit" class="wikilink">GW_HydroGeoUnit</a>" date="1432185106" path="<a href="GW_HydrogeoUnit_NGIS_uc5" class="wikilink">GW_HydrogeoUnit_NGIS_uc5</a>-mapping.xml" size="67736" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}
