# Requirements for the GML encoding of the <a href="GroundWaterML2" class="wikilink">GroundWaterML2</a>.0-Core Logical Model

## Requirements

A draft of the <a href="GroundwaterML2" class="wikilink">GroundwaterML2</a>.0-Core GML encoding requirements as specified using the OGC template is attached at: [GroundWaterML2-Requirements.docx](%ATTACHURL%/GroundWaterML2-Requirements.docx).

These are summarised in the following UML diagram:

\<img alt="Requirements-GWML2-Core.jpg" height="770" src="%ATTACHURL%/Requirements-GWML2-Core.jpg" title="Requirements-GWML2-Core.jpg" width="781" /\>

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 07 Jul 2014

### Defining the Requirements Classes

The **requirements classes** and corresponding **conformance classes**need to be structured such that a conformant implementation need only implement those classes that are necessary. So for example a service implementation delivering a <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> feature will need to meet its requirement class in addition to those that that class is dependent on. This means it may not need to provide information on the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> (optional in the UML), but will need to provide, in-line or by reference, a <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> (mandatory in the UML). The content of data types such as '<a href="OM_Measurement" class="wikilink">OM_Measurement</a>' and '<a href="MD_Metadata" class="wikilink">MD_Metadata</a>' may also be specified, either as Requirements or Recommendations.

Components that connect to the implementation therefore have a precise specification of the implementation and can develop their application to match.

## Discussion points:

#### What are Requirements vs Recommendations?

1.  The proposed **pattern**is:
    - the use of Terms from a standard GWML2 vocabulary are "Recommendations";
    - where the data type refers to an observation the "Requirement" is that the result will be one of either a swe:Quantity or a swe:<a href="QuantityRange" class="wikilink">QuantityRange</a>; \* What are the requirements classes required "such that a conformant implementation need only implement those classes that are necessary"?

#### What are the Requirements Classes groupings?

The proposed Requirement Classes are to enable the following as independent implementations:

- For **GWML2-Core**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> (<a href="GW_Basin" class="wikilink">GW_Basin</a>, <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a>, <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>, <a href="GW_ConfiningBed" class="wikilink">GW_ConfiningBed</a>); 1. <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a> (initial suggestion in Vienna was that this should be in-line with <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>, but mandatory association with <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> means that it must also be in-line with that, or have independent identity). 1. <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>, <a href="GW_Constituent" class="wikilink">GW_Constituent</a>, <a href="GW_BodySurface" class="wikilink">GW_BodySurface</a> 1. <a href="GW_Divide" class="wikilink">GW_Divide</a>, <a href="GW_BodySurface" class="wikilink">GW_BodySurface</a>, <a href="GW_FlowSystem" class="wikilink">GW_FlowSystem</a>, <a href="GW_Flow" class="wikilink">GW_Flow</a> 1. <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>, <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>
- For **GWML2-Constituent**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of <a href="GW_Constituent" class="wikilink">GW_Constituent</a> (<a href="GW_BiologicalConstituent" class="wikilink">GW_BiologicalConstituent</a>, <a href="GW_MaterialConstituent" class="wikilink">GW_MaterialConstituent</a>, <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a>);
- For **GWML2-Flow**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of <a href="GW_Flow" class="wikilink">GW_Flow</a> (<a href="GW_InterFlow" class="wikilink">GW_InterFlow</a>, <a href="GW_Discharge" class="wikilink">GW_Discharge</a>, <a href="GW_Recharge" class="wikilink">GW_Recharge</a>, <a href="GW_IntraFlow" class="wikilink">GW_IntraFlow</a>);
- For **GWML2-Well**, Requirement Classes are suggested to enable any of the following to be configured: 1. <a href="GW_Well" class="wikilink">GW_Well</a>, Borehole, <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>; 1. <a href="GW_Well" class="wikilink">GW_Well</a> 1. <a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a> 1. <a href="GW_Spring" class="wikilink">GW_Spring</a>, <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>
- For **GWML2-<a href="GeologyLog" class="wikilink">GeologyLog</a>**, Requirement Classes are suggested to enable any of the following to be configured: 1. \<span style="background-color: transparent;"\><a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a>, <a href="GeologicFeature" class="wikilink">GeologicFeature</a>,\</span\>
- For **GWML2-<a href="WellConstruction" class="wikilink">WellConstruction</a>**, Requirement Classes are suggested to enable any of the following to be configured: 1. Borehole, <a href="BoreCollar" class="wikilink">BoreCollar</a> 1. Types of <a href="WellConstruction" class="wikilink">WellConstruction</a> (Screen, Filtration, Casing, Sealing), types of <a href="ConstructionComponent" class="wikilink">ConstructionComponent</a> (<a href="ScreenComponent" class="wikilink">ScreenComponent</a>, <a href="FiltrationComponent" class="wikilink">FiltrationComponent</a>, <a href="CasingComponent" class="wikilink">CasingComponent</a>, <a href="SealingComponent" class="wikilink">SealingComponent</a>), Borehole, <a href="BoreCollar" class="wikilink">BoreCollar</a>

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 07 Jul 2014

#### <a href="OM_Measurement" class="wikilink">OM_Measurement</a> result

Do we want to specify that the <a href="OM_Measurement" class="wikilink">OM_Measurement</a>:result must be a swe:Quantity or swe:<a href="QuantityRange" class="wikilink">QuantityRange</a> for every <a href="OM_Measurement" class="wikilink">OM_Measurement</a> property?

This will require over-riding the O&M requirement that specifies it must be a gml:<a href="MeasureType" class="wikilink">MeasureType</a>:

**<http://www.opengis.net/spec/OMXML/2.0/req/measurement/result-measure>**The XML element om:result SHALL have a value that matches the content model defined by gml:<a href="MeasureType" class="wikilink">MeasureType</a>.

If we use swe:Quantity and swe:<a href="QuantityRange" class="wikilink">QuantityRange</a>, is it one or the other or both, and do we specifically preclude gml:<a href="MeasureType" class="wikilink">MeasureType</a>?

## Requirements Documentation

- [GroundWaterML2-Requirements.docx](%ATTACHURL%/GroundWaterML2-Requirements.docx): Draft documentation of the <a href="GroundWaterML2" class="wikilink">GroundWaterML2</a>.0-Core XML encoding requirements, contained within an OGC Implementation Standard template.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 07 Jul 2014

- TOPICINFO{author="<a href="BruceSimons" class="wikilink">BruceSimons</a>" comment="save topic" date="1404884974" format="1.1" reprev="5" version="6"}

<!-- -->

- TOPICPARENT{name="GWML2-UML-Model"}

<!-- -->

- FILEATTACHMENT{name="<a href="GroundWaterML2" class="wikilink">GroundWaterML2</a>-Requirements.docx" attachment="<a href="GroundWaterML2" class="wikilink">GroundWaterML2</a>-Requirements.docx" attr="" comment="Added <a href="WaterWell" class="wikilink">WaterWell</a> and <a href="GeologicLog" class="wikilink">GeologicLog</a> RC" date="1404734132" path="<a href="GroundWaterML2" class="wikilink">GroundWaterML2</a>-Requirements.docx" size="488955" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="3"}

<!-- -->

- FILEATTACHMENT{name="Requirements-GWML2-Core.jpg" attachment="Requirements-GWML2-Core.jpg" attr="" comment="GWML2 core requirement classes UML" date="1404704627" path="Requirements-GWML2-Core.jpg" size="78538" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="2"}

<!-- -->

- FILEATTACHMENT{name="GWML2-Core-<a href="Specification_xmi" class="wikilink">Specification_xmi</a>.xml" attachment="GWML2-Core-<a href="Specification_xmi" class="wikilink">Specification_xmi</a>.xml" attr="" comment="UML xmi for GWML2-Core requirements classes" date="1403502569" path="GWML2-Core-<a href="Specification_xmi" class="wikilink">Specification_xmi</a>.xml" size="132211" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="Requirements-GWML2-<a href="Core_stereotypes" class="wikilink">Core_stereotypes</a>-only.jpg" attachment="Requirements-GWML2-<a href="Core_stereotypes" class="wikilink">Core_stereotypes</a>-only.jpg" attr="" comment="responsibilities hidden for clarification" date="1403666977" path="Requirements-GWML2-<a href="Core_stereotypes" class="wikilink">Core_stereotypes</a>-only.jpg" size="78850" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}
