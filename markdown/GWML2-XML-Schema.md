# **GWML2 XML Schema**

## **Packages**

1.  Version 2.0
    - \<a href="<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2.xsd>" title="Integrating schema (gwml2.xsd)"\>Integrating schema (gwml2.xsd)\</a\>
    - [Main (units / aquifers, fluid bodies, voids)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-main.xsd)
    - [Constituent (water quality)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-constituent.xsd)
    - [Flow (groundwater flow)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-flow.xsd)
    - [Well (water wells, monitoring sites, springs)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-well.xsd)
    - [WellConstruction (water well construction)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-wellconstruction.xsd)
2.  Version 2.1
    - \<a href="<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2.xsd>" title="Integrating schema (gwml2.xsd)"\>Integrating schema (gwml2.xsd)\</a\>
    - [Main (units / aquifers, fluid bodies, voids)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-main.xsd)
    - [Constituent (water quality)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-constituent.xsd)
    - [Flow (groundwater flow)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-flow.xsd)
    - [Well (water wells, monitoring sites, springs)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-well.xsd)
    - [WellConstruction (water well construction)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-wellconstruction.xsd)
3.  Version 2.2
    - \<a href="<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2.xsd>" title="Integrating schema (gwml2.xsd)"\>Integrating schema (gwml2.xsd)\</a\>
    - [Main (units / aquifers, fluid bodies, voids)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-main.xsd)
    - [Constituent (water quality)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-constituent.xsd)
    - [Flow (groundwater flow)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-flow.xsd)
    - [Well (water wells, monitoring sites, springs)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-well.xsd)
    - [WellConstruction (water well construction)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-wellconstruction.xsd)

### Schematron (and XSLT validation tools generated from them)

Schematron files are located here:

<https://xp-dev.com/svn/gwml2/Documents/schematron/>

sch file turned into XSLT that generate SVRL (rule test results)

- [xml-rules.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/xml-rules.xslt) Must be passed by all instances
- [gwml2-well.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-well.xslt) specific for wells
- [gwml2-well-vertical.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-well-vertical.xslt) specific for vertical wells
- [gwml2-well-gu.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-well-gu.xslt) Geologic unit logs
- [gwml2-well-em.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-well-em.xslt) Earth material logs
- [gwml2-construction.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-construction.xslt) Well construction

The schemas are validating - July 15th 2014 **FL**

Attached modified version of GWML2 Nucleus schema ( [gwml2-nucleus.xsd](%ATTACHURL%/gwml2-nucleus.xsd)) with <a href="GW_UnitVoidProperty" class="wikilink">GW_UnitVoidProperty</a>, <a href="GW_UnitFluidProperty" class="wikilink">GW_UnitFluidProperty</a> and <a href="GW_Mixture" class="wikilink">GW_Mixture</a> association classes correctly encoded. -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 18 Aug 2014

# **Instance documents**

## **Development**

| Package | Class | Developer |
|:---|:---|:---|
| **Nucleus** | <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> | Eric (NRCan), Bruce (NGIS) ... |
|  | <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a> | Bruce (<a href="FedUni" class="wikilink">FedUni</a>, NGIS), Sylvain (BRGM) |
|  | \<span style="line-height: 22px; background-color: transparent;"\><a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>\</span\> | Sylvain (BRGM), Alex (GNS) |
| **Constituent** | <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a> | Bruce (<a href="FedUni" class="wikilink">FedUni</a>) |
| **Flow** | <a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a> | Alex (GNS) in <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> |
| **Well** | <a href="GW_Well" class="wikilink">GW_Well</a> | Eric (NRCan), Alex (GNS), Bruce (NGIS, <a href="FedUni" class="wikilink">FedUni</a>), Sylvain (BRGM) ... |
|  | <a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a> | Sylvain (BRGM), Alex (NZ), ... |
| **Well Construction** | <a href="GW_WellConstruction" class="wikilink">GW_WellConstruction</a> | Eric (NRCan), Bruce (NGIS, <a href="FedUni" class="wikilink">FedUni</a>)... |

## **Examples**

Instance documents are located in SVN, : <https://xp-dev.com/svn/gwml2/Documents/instance/> examples below might be out of date

1.  Nucleus package
    - [Aquifer System](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/instances/app_ext_zone.xml): based on [GIN unit](%ATTACHURL%/app_ext_zone.pdf). \[Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 10 Jun 2014\]
    - [GW_Aquifer](%ATTACHURL%/BRGM_Aquifer_light.xml) : based [BDLISA](http://reseau.eaufrance.fr/geotraitements/bdlisa/files/entite/107AK01.pdf) \[Main.<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a> - 08 Aug 2014\]
    - [GW_ManagementArea](%ATTACHURL%/BRGM_ManagementArea_light.xml) : based on EU Water Framework Directive Ground Water Body \[Main.<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a> - 08 Aug 2014\]
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_ManagementArea_GNS_uc2.xml>" target="\_blank" title="<a href="GW_ManagementArea_GNS_uc2" class="wikilink">GW_ManagementArea_GNS_uc2</a>.xml"\><a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>\</a\> : incl water budget, resembling (ground) water management zone (often congruent with catchments) used in NZ -- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 02 Jul 2015
    - [GWML2-GW_Aquifer-FedUni.xml](%ATTACHURL%/GWML2-GW_Aquifer-FedUni.xml) : <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a> example and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014
2.  Well package
    - [Water well](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/instances/ab.ww.402557.xml) based on [ab.ww.402557](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/wfs/gin?REQUEST=GetFeature&INFO_FORMAT=text/html&FID=ab.ww.402557) ( [GWML 1](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/wfs/gin?REQUEST=GetFeature&INFO_FORMAT=text/xml&FID=ab.ww.402557)) - includes construction. \[Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 10 Jun 2014\]
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_Well_GNS_uc1.xml>" target="\_blank" title="<a href="GW_Well_GNS_uc1" class="wikilink">GW_Well_GNS_uc1</a>.xml"\><a href="GW_Well" class="wikilink">GW_Well</a>\</a\> in the Horowhenua area (with geology log) -- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 02 Jul 2015
    - [GW_Well](%ATTACHURL%/BRGM_Well_light.xml) based on national [BSS Eau](http://www.ades.eaufrance.fr/FichePtEau.aspx?code=01846X0361/P1&type_pt_eau=2) \[Main.<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a> - 08 Aug 2014\]
    - [GWML2-GW_Well-FedUni.xml](%ATTACHURL%/GWML2-GW_Well-FedUni.xml) - GWML2 <a href="GW_Well" class="wikilink">GW_Well</a> example and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_MonitoringSite_GNS_uc1.xml>" target="\_blank" title="<a href="GW_MonitoringSite_GNS_uc1" class="wikilink">GW_MonitoringSite_GNS_uc1</a>.xml"\><a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a>\</a\> monitoring well, NZ -- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> -- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 02 Jul 2015
    - [GWML2-GW_MonitoringSite-FedUni.xml](%ATTACHURL%/GWML2-GW_MonitoringSite-FedUni.xml) : <a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a> example and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_Spring_GNS_uc1.xml>" target="\_blank" title="<a href="GW_Spring_GNS_uc1" class="wikilink">GW_Spring_GNS_uc1</a>.xml"\><a href="GW_Spring" class="wikilink">GW_Spring</a>\</a\> Te Waikoropupu Springs (Pupu Springs, NZ) -- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> -- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 02 Jul 2015
    - [GWML2-Spring-FedUni.xml](%ATTACHURL%/GWML2-Spring-FedUni.xml) : <a href="GW_Spring" class="wikilink">GW_Spring</a> example and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014
    - [GWML2-GeologyLog-FedUni.xml](%ATTACHURL%/GWML2-GeologyLog-FedUni.xml) <a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> example and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014
    - \<p\> <a href="DataRecord" class="wikilink">DataRecord</a> definitions : [EarthMaterial](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/instances/earthMaterial.xml) and [GeologicUnit](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/instances/geologicUnit.xm) (According to clause 8.2.1 of OGC 08-094-r1 / SWE Common Data Model)\</p\>
3.  Well Construction package
    - [GWML2-Borehole-FedUni.xml](%ATTACHURL%/GWML2-Borehole-FedUni.xml) GWML2 Borehole example and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014
4.  Constituent package
    - [GWML2-GW_Constituent-FedUni.xml](%ATTACHURL%/GWML2-GW_Constituent-FedUni.xml) : example and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014
5.  Flow package
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_ManagementArea_GNS_uc2.xml>" target="\_blank" title="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a> in <a href="GW_ManagementArea_GNS_uc2" class="wikilink">GW_ManagementArea_GNS_uc2</a>.xml"\><a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>\</a\> work in progress (includes <a href="GW_Recharge" class="wikilink">GW_Recharge</a> example) -- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> -- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 02 Jul 2015
    - [GWML2-GW_InterFlow_FedUni.xml](%ATTACHURL%/GWML2-GW_InterFlow_FedUni.xml): Example <a href="GW_Discharge" class="wikilink">GW_Discharge</a>, <a href="GW_Recharge" class="wikilink">GW_Recharge</a> based on January 1993 Lake Murdeduke data, <a href="FedUni" class="wikilink">FedUni</a> -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 08 Aug 2014

- [BRGM_Aquifer_light.xml](%ATTACHURL%/BRGM_Aquifer_light.xml): Aquifer from national BD LISA (Base de Données des Limites des Systèmes Aquifères) database

<!-- -->

- [BRGM_ManagementArea_light.xml](%ATTACHURL%/BRGM_ManagementArea_light.xml): BRGM <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> based on EU Water Framework Directive Ground Water Body

<!-- -->

- [BRGM_Well_light.xml](%ATTACHURL%/BRGM_Well_light.xml): BRGM from French national BSS (Banque Nationale du Sous-Sol) includes piezometer, construction, link to the Aquifer described above. 1. Related Examples
  - [GWML2-OM_Observation-FedUni.xml](%ATTACHURL%/GWML2-OM_Observation-FedUni.xml) : <a href="OM_Observation" class="wikilink">OM_Observation</a> water well example observations and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014
  - [GWML2-SF_Specimen-FedUni.xml](%ATTACHURL%/GWML2-SF_Specimen-FedUni.xml) : <a href="SF_Specimen" class="wikilink">SF_Specimen</a> water well example specimen and mapping comments for Federation University database (with other contained features byReference) -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Sep 2014

<!-- -->

- TOPICINFO{author="<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a>" comment="save topic" date="1486574894" format="1.1" reprev="31" version="34"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}

<!-- -->

- FILEATTACHMENT{name="app_ext_zone.pdf" attachment="app_ext_zone.pdf" attr="" comment="Instance example for Hydrogeologic units" date="1402401228" path="app_ext_zone.pdf" size="204521" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="GW_InterFlow_FedUni" class="wikilink">GW_InterFlow_FedUni</a>.xml" attachment="GWML2-<a href="GW_InterFlow_FedUni" class="wikilink">GW_InterFlow_FedUni</a>.xml" attr="" comment="Example <a href="GW_Discharge" class="wikilink">GW_Discharge</a>, <a href="GW_Recharge" class="wikilink">GW_Recharge</a> based on January 1993 Lake Murdeduke data, <a href="FedUni" class="wikilink">FedUni</a>" date="1407475537" path="GWML2-<a href="GW_InterFlow_FedUni" class="wikilink">GW_InterFlow_FedUni</a>.xml" size="6601" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="BRGM_Aquifer_light" class="wikilink">BRGM_Aquifer_light</a>.xml" attachment="<a href="BRGM_Aquifer_light" class="wikilink">BRGM_Aquifer_light</a>.xml" attr="" comment="Aquifer from national BD LISA (Base de Données des Limites des Systèmes Aquifères) database" date="1407530480" path="<a href="BRGM_Aquifer_light" class="wikilink">BRGM_Aquifer_light</a>.xml" size="3784" user="<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="BRGM_ManagementArea_light" class="wikilink">BRGM_ManagementArea_light</a>.xml" attachment="<a href="BRGM_ManagementArea_light" class="wikilink">BRGM_ManagementArea_light</a>.xml" attr="" comment="BRGM <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> based on EU Water Framework Directive Ground Water Body" date="1407530547" path="<a href="BRGM_ManagementArea_light" class="wikilink">BRGM_ManagementArea_light</a>.xml" size="1859" user="<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="BRGM_Well_light" class="wikilink">BRGM_Well_light</a>.xml" attachment="<a href="BRGM_Well_light" class="wikilink">BRGM_Well_light</a>.xml" attr="" comment="BRGM from French national BSS (Banque Nationale du Sous-Sol) includes piezometer, construction, link to the Aquifer described above." date="1407530592" path="<a href="BRGM_Well_light" class="wikilink">BRGM_Well_light</a>.xml" size="8861" user="<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="gwml2-nucleus.xsd" attachment="gwml2-nucleus.xsd" attr="" comment="Revised xsd to fix association classes" date="1408327742" path="gwml2-nucleus.xsd" size="35547" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="GW_Well" class="wikilink">GW_Well</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-<a href="GW_Well" class="wikilink">GW_Well</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="<a href="GW_Well" class="wikilink">GW_Well</a> with other features byReference" date="1409784233" path="GWML2-<a href="GW_Well" class="wikilink">GW_Well</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="24267" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-Borehole-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-Borehole-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="<a href="FedUni" class="wikilink">FedUni</a> GWML2 Borehole mapping example" date="1409784859" path="GWML2-Borehole-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="20008" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-<a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="GWML2 <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a> Federation university mapping" date="1409785048" path="GWML2-<a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="35815" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-<a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="<a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a> Federation University example" date="1409785392" path="GWML2-<a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="7726" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-Spring-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-Spring-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="<a href="GW_Spring" class="wikilink">GW_Spring</a> Federation University example" date="1409785546" path="GWML2-Spring-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="7776" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="GW_Constituent" class="wikilink">GW_Constituent</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-<a href="GW_Constituent" class="wikilink">GW_Constituent</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="<a href="GW_Constituent" class="wikilink">GW_Constituent</a> Federation University example" date="1409785858" path="GWML2-<a href="GW_Constituent" class="wikilink">GW_Constituent</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="11495" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="GeologyLog" class="wikilink">GeologyLog</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-<a href="GeologyLog" class="wikilink">GeologyLog</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="<a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> Federation University example (with <a href="FoI" class="wikilink">FoI</a> = <a href="GW_Well" class="wikilink">GW_Well</a>)" date="1409795477" path="GWML2-<a href="GeologyLog" class="wikilink">GeologyLog</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="20968" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="2"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="OM_Observation" class="wikilink">OM_Observation</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-<a href="OM_Observation" class="wikilink">OM_Observation</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="<a href="OM_Observation" class="wikilink">OM_Observation</a> Federation University borehole observation example" date="1409786117" path="GWML2-<a href="OM_Observation" class="wikilink">OM_Observation</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="31232" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="SF_Specimen" class="wikilink">SF_Specimen</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attachment="GWML2-<a href="SF_Specimen" class="wikilink">SF_Specimen</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" attr="" comment="<a href="SF_Specimen" class="wikilink">SF_Specimen</a> Federation university borehole example" date="1409786203" path="GWML2-<a href="SF_Specimen" class="wikilink">SF_Specimen</a>-<a href="FedUni" class="wikilink">FedUni</a>.xml" size="8409" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}
