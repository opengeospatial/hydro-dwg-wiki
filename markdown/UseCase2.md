# **Use Case 2 -- Policy**

## Participants

- \<p\>R.Tomas (Lead), Chris Schubert, Andrej Abramic (all EC-JRC), Tomasz Nalecz (Polish Geological Institute), Alexander Kmoch (GNS / <a href="Z_GIS" class="wikilink">Z_GIS</a>), Sylvain Grellet (BRGM),\</p\>

## Abstract

The Water Framework Directive 20000/60/EC (WFD) requires all EU member states to achieve and preserve good status for all European waters, including groundwaters. Process to achieve WFD requirements includes definition and delineation of water bodies as management units, environmental monitoring, status assessment and finally developing river basin management plans.

This use case describes process steps and interactions necessary for delivering data required to assess the groundwater bodies and thus fulfill the related EU reporting obligation. The activity includes: collection and evaluation of the geological and hydrogeological characteristics, as well as quantitative and qualitative monitoring of defined chemical and physical indicators and finally groundwater body overall status assessment.

Delineation on WFD groundwater bodies, in many cases, is not done accordingly to their natural boundaries but usually follows administrative units.

In order to better demonstrate interoperability the use case description covers also a cross border scenario. It defines the additional step of synchronizing of the collected information by two different member state water authorities. This integrating approach facilitates, promoted by WFD facilitates a coordinated assessment and planning of potential future measures.

## Discussion Page

- For discussion about this use case please add comments to [this page](UseCase2Discussion).

## Objective

The provision of WFD required data and information on the trans-boundary groundwater body.

## Actors

- \<p\>1\<sup\>st\</sup\> Member State water authority,\</p\>
- \<p\>2\<sup\>nd\</sup\> Member State water authority\</p\>
- \<p\>...\</p\>

## Actions

- Step 1: Discovering and collecting initial information on hydrogeological, geological, chemical and physical data about the each groundwater body
- Step 2: Preprocessing, syntactical and semantically transformation of the input information.
- Step 3: Assessment of required output,
- Step 4: Delivering of groundwater module for WFD reports

## Entities (Features, Observations, Properties)

The overview of the main entities necessary for this Use case. For the detailed description of the required WFD-Groundwater bodies properties see the following document\<u\>.\</u\>

- <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>, e.g. in NZ used as groundwater management zones
- <a href="WFD_Management" class="wikilink">WFD_Management</a> Area
  - general characteristics
- WFD River Basin District:
  - general: id, national code, parent river basin districts, name and area measurement
- <a href="WFD_Ground" class="wikilink">WFD_Ground</a> Water Body (GWB)
  - general: id (RBC-code), national code, name, location, protected area association
  - pressures: pressure types
  - impacts: impact types
  - other impact: further pressure description, other impact description
  - trend reversal: reversal trend, free text
  - trend upward: upward trend, free text
  - hydrogeological characteristics: GW layer, area, depth, thickness, depth range, geological formation, capacity, link surface water, link eco system
  - quantitative status: quantitative status value, comment
  - chemical status (qualitative): chemical status value, comment
  - protected area status (optional): protected area code (unique), type of protection, Type of association, status value

## Web Clients

|  |  |  |  |
|----|----|----|----|
| \<span\>\<a href="<a href="UseCase1" class="wikilink">UseCase1</a>?sortcol=0;table=1;up=0#sorted_table" title="Sort by this column"\>**Web Service** \</a\>\</span\> | \<span\>\<a href="<a href="UseCase1" class="wikilink">UseCase1</a>?sortcol=1;table=1;up=0#sorted_table" title="Sort by this column"\>**Input Database** \</a\>\</span\> | \<span\>\<a href="<a href="UseCase1" class="wikilink">UseCase1</a>?sortcol=2;table=1;up=0#sorted_table" title="Sort by this column"\>**Output Schema** \</a\>\</span\> | \<span\>\<a href="<a href="UseCase1" class="wikilink">UseCase1</a>?sortcol=3;table=1;up=0#sorted_table" title="Sort by this column"\>**Implementer** \</a\>\</span\> |
| WMS | gw management area | n/a | GNS |
| WFS | gw management area | GWML2 | GNS |
| WMS | gw managaement area | GWML2 | BRGM |
| Older ideas |  |  |  |
| WMS | geological unit characteristics | N/A |  |
| WFS | geological unit characteristics | <a href="GeoSciML" class="wikilink">GeoSciML</a> ? GWML2 (WFD) |  |
| WMS | hydrogeological characteristics | N/A |  |
| WFS | hydrogeological characteristics | GWML2 (WFD) |  |
| CSW | Metadata | Metdadata schema (WFD) |  |
| WFS-SOS ? | chemical monitoring data | O&M ? GWML2 (WFD) |  |
| WFS–SOS ? | physical monitoring data | O&M ? GWML2 (WFD) |  |
| WFS–SOS ? | biological monitoring data ? | O&M ? GWML2 (WFD) |  |
| WFS ? | Final reporting data set | WFD delivery format |  |

-- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 02 Jul 2015

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 24 Oct 2012

- <a href="GW2IE" class="wikilink">GW2IE</a> \_WFD_Policy_INSPIRE_Extract Summary: \<br /\> \<img alt="<a href="GW2IE_WFD_Policy_INSPIRE_Extract_Summary" class="wikilink">GW2IE_WFD_Policy_INSPIRE_Extract_Summary</a>.png" height="2310" src="%ATTACHURLPATH%/<a href="GW2IE_WFD_Policy_INSPIRE_Extract_Summary" class="wikilink">GW2IE_WFD_Policy_INSPIRE_Extract_Summary</a>.png" width="1255" /\>

<!-- -->

- TOPICINFO{author="<a href="AlexKmoch" class="wikilink">AlexKmoch</a>" comment="reprev" date="1435813220" format="1.1" reprev="17" version="17"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}

<!-- -->

- FILEATTACHMENT{name="<a href="INSPIRE_HG_USE_CASES" class="wikilink">INSPIRE_HG_USE_CASES</a>.docx" attachment="<a href="INSPIRE_HG_USE_CASES" class="wikilink">INSPIRE_HG_USE_CASES</a>.docx" attr="" comment="Extract of the INSPIRE groundwater related Use cases" date="1352314725" path="<a href="INSPIRE_HG_USE_CASES" class="wikilink">INSPIRE_HG_USE_CASES</a>.docx" size="143300" user="<a href="RobertTomas" class="wikilink">RobertTomas</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="Groundwater_WFD_reporting__requirements" class="wikilink">Groundwater_WFD_reporting__requirements</a>.docx" attachment="<a href="Groundwater_WFD_reporting__requirements" class="wikilink">Groundwater_WFD_reporting__requirements</a>.docx" attr="" comment="Compilation of the EU Water Framework Policy (WFD) reporting requirements related to groundwater" date="1352314866" path="Groundwater WFD reporting requirements.docx" size="21030" user="<a href="RobertTomas" class="wikilink">RobertTomas</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWB_WFD_reporting_database_model_diagrams" class="wikilink">GWB_WFD_reporting_database_model_diagrams</a>.pdf" attachment="<a href="GWB_WFD_reporting_database_model_diagrams" class="wikilink">GWB_WFD_reporting_database_model_diagrams</a>.pdf" attr="" comment="The WFD-Groundwater Entity Relationship Diagram" date="1352314927" path="GWB WFD reporting database model diagrams.pdf" size="25720" user="<a href="RobertTomas" class="wikilink">RobertTomas</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="INSPIRE_Hydrogeology_Draft_Outline_v" class="wikilink">INSPIRE_Hydrogeology_Draft_Outline_v</a>.0.4_Doc.docx" attachment="<a href="INSPIRE_Hydrogeology_Draft_Outline_v" class="wikilink">INSPIRE_Hydrogeology_Draft_Outline_v</a>.0.4_Doc.docx" attr="" comment="by Janusz Michalak - WFD UML model (content similar to ER diagram" date="1352451782" path="<a href="INSPIRE_Hydrogeology_Draft_Outline_v" class="wikilink">INSPIRE_Hydrogeology_Draft_Outline_v</a>.0.4_Doc.docx" size="2083467" user="<a href="RobertTomas" class="wikilink">RobertTomas</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW2IE_WFD_Policy_INSPIRE" class="wikilink">GW2IE_WFD_Policy_INSPIRE</a>.xml" attachment="<a href="GW2IE_WFD_Policy_INSPIRE" class="wikilink">GW2IE_WFD_Policy_INSPIRE</a>.xml" attr="" comment="<a href="GW2IE_WFD_Policy_INSPIRE" class="wikilink">GW2IE_WFD_Policy_INSPIRE</a>" date="1355828330" path="E:\schubch\SVN\UML\EA XMI Exports\\<a href="GW2IE_WFD_Policy_INSPIRE" class="wikilink">GW2IE_WFD_Policy_INSPIRE</a>.xml" size="1088463" user="<a href="ChrisSchubert" class="wikilink">ChrisSchubert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="Policy_useCase_Extract_INSPIRE" class="wikilink">Policy_useCase_Extract_INSPIRE</a>.zip" attachment="<a href="Policy_useCase_Extract_INSPIRE" class="wikilink">Policy_useCase_Extract_INSPIRE</a>.zip" attr="" comment="<a href="GW2IE_WFD_Policy_INSPIRE_html" class="wikilink">GW2IE_WFD_Policy_INSPIRE_html</a>" date="1355828837" path="E:\schubch\2012\working_documents\GWMLIE2\\<a href="Policy_useCase_Extract_INSPIRE" class="wikilink">Policy_useCase_Extract_INSPIRE</a>.zip" size="1154373" user="<a href="ChrisSchubert" class="wikilink">ChrisSchubert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW2IE_WFD_Policy_INSPIRE_Extract_Summary" class="wikilink">GW2IE_WFD_Policy_INSPIRE_Extract_Summary</a>.png" attachment="<a href="GW2IE_WFD_Policy_INSPIRE_Extract_Summary" class="wikilink">GW2IE_WFD_Policy_INSPIRE_Extract_Summary</a>.png" attr="" comment="<a href="GW2IE_WFD_Policy_INSPIRE_Extract" class="wikilink">GW2IE_WFD_Policy_INSPIRE_Extract</a> Summary" date="1355833104" path="E:\schubch\2012\working_documents\GWMLIE2\\<a href="GW2IE_WFD_Policy_INSPIRE_Extract_Summary" class="wikilink">GW2IE_WFD_Policy_INSPIRE_Extract_Summary</a>.png" size="338318" user="<a href="ChrisSchubert" class="wikilink">ChrisSchubert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="Groundwater_Interoperability_Experiment_use_case_2_v0" class="wikilink">Groundwater_Interoperability_Experiment_use_case_2_v0</a>.2.docx" attachment="<a href="Groundwater_Interoperability_Experiment_use_case_2_v0" class="wikilink">Groundwater_Interoperability_Experiment_use_case_2_v0</a>.2.docx" attr="" comment="Summary of use case - policy, word document" date="1355833792" path="E:\schubch\2012\working_documents\GWMLIE2\Groundwater Interoperability Experiment use case 2_v0.2.docx" size="78140" user="<a href="ChrisSchubert" class="wikilink">ChrisSchubert</a>" version="1"}
