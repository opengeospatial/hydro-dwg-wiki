# Requirements Discussion

(Issues and desicions about GWML requirements)

### Requirements class: observations (<a href="OM_Measurement" class="wikilink">OM_Measurement</a>)

- \<span style="background-color: transparent;"\> featureOfInterest: There are two categories of use of Observation. The first is the common use, stand alone observation that can be linked to using <a href="SamplingFeature" class="wikilink">SamplingFeature</a> -\> relatedObservation , and the other, less common, as a value type of a feature, eg: <a href="GW_HydrogeologicUnit" class="wikilink">GW_HydrogeologicUnit</a>.gwUnitProperty OR a <a href="DataType" class="wikilink">DataType</a> (<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>) or a association type (<a href="GW_UnitVoidProperty" class="wikilink">GW_UnitVoidProperty</a>.gwPorosity) Should we have those requirements:\</span\>
  - \<span style="background-color: transparent;"\>When an Observation is related to a <a href="SamplingFeature" class="wikilink">SamplingFeature</a>, the foi SHALL be the <a href="SamplingFeature" class="wikilink">SamplingFeature</a> \</span\>
  - \<span style="background-color: transparent;"\>When an Observation is a feature's property, the FOI SHALL be that property\</span\>
  - \<span style="background-color: transparent;"\>When an Observation is a <a href="DataType" class="wikilink">DataType</a> property, the FOI SHALL be the feature that uses that <a href="DataType" class="wikilink">DataType</a> . Now, the only case we have is <a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>, which is not linked to any context, just a collection of in and out interflows - with the understanding that the context of the budget should be derived from this. Shouldn't there be some context feature (a Watershed or something ?\</span\>
  - \<span style="background-color: transparent;"\>When the Observation is the propery of an association type, the FOI SHALL be the participant in this association that is a Feature. If both are, can be either one.\</span\>

### Requirement classes (<a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> and Construction)

I really wish <a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> and Construction be independant of <a href="WaterWell" class="wikilink">WaterWell</a> , so they could both be used outside the context of GWML. The onyl thing that "prevents" this so far is that both contain feature that are positionned relative to well's origin (so the well is a sort of CRS). Right now, it's implicit. <a href="GeologyLog" class="wikilink">GeologyLog</a> does not have any property that explicitly specify what is the origin point of fromDepth and toDepth. Ditto for <a href="ConstructionComponent" class="wikilink">ConstructionComponent</a>. But technically it should be specified that's its the owner feature reference elevation. For <a href="GW_Well" class="wikilink">GW_Well</a>, it's gwWellReferenceElevation. Options are

- Bring <a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a> and Constructions in the same package (making a dependency between construction and wells cannot be done, because this cause circular reference).
- Put Elevation in its own package, so <a href="GeologicLog" class="wikilink">GeologicLog</a> and Construction can reuse it. Ideally, it should be a type (or a feature) with it's own identity, so <a href="GeologyLog" class="wikilink">GeologyLog</a> and Construction could point to the same **instance** of Elevation.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 14 Jul 2014

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="save topic" date="1405348280" format="1.1" reprev="1" version="1"}

<!-- -->

- TOPICPARENT{name="GWML2-XML-Schema"}
