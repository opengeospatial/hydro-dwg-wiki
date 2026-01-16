We've had a number of discussions on the naming of classes as well as coming up with a core glossary. Due to a few iterations on the model and the naming discussion, there still remains some inconsistencies in our naming.

Dom's recent pass on the model also noted:

> Modelling generic v specific types:
>
> While I understand the desire to create generic conversion/conversion observation types, should consideration be given to making the general types (Conversion/<a href="ConversionObservation" class="wikilink">ConversionObservation</a>) abstract classes and having concrete implementations of Ratings/Gaugings? It might make the end model and encodings more intuitive and domain-friendly if concrete classes called 'Rating', 'Gauging' exist.
>
> There are also a few inconsistencies with the general terminology Conversion/<a href="ConversionObservation" class="wikilink">ConversionObservation</a> versus Ratings/Gaugings. E.g. the Gaugings package should probably be called '<a href="ConversionObservations" class="wikilink">ConversionObservations</a>' and the documentation refers to 'gauging observation'. It makes the model a bit hard to read when there are these undefined terms that appear (although that could just be the gaps in my domain knowledge).

I agree with this. It would be good to revisit the naming, especially before we agree on a model version for the IE. \<h1 id="Clarifyingclassdefinitions-Standarddefinitions"\>Standard definitions\</h1\>

## WMO glossary

I've pulled out a number of relevant definitions from [WMO's glossary of hydrology](http://library.wmo.int/opac/index.php?lvl=notice_display&id=7394). These appear to be largely harmonised with the relevant ISO standards.

- **rating curve**syn. **rating table**(see also hysteresis (in stage–discharge relation), stage–discharge relation) - 1172. \_Curve showing the relation between stage and discharge of a stream at a hydrometric station. (TR)\_
- **stream gauging.** \_Set of operations for determining the discharge in a watercourse for an observed stage.\_
- **gauging section**syn. **measuring section**see also **gauging station.** \_Cross-section of an open channel in which measurements of depth and/or velocity are made. (ISO 772)\_
- **gauging station**see also **gauging section.** \_Location on a stream where measurements of water level and/or discharge are made systematically.\_
- **stream gauging.** \_Set of operations for determining the discharge in a watercourse for an observed stage.\_
- **streamflow.** \_General term for water flowing in a watercourse.\_
- **gauge height**syn. **stage level.** \_Height of a water surface above a gauge datum.\_
- **hydrological observing station.** \_Place where hydrological observations or climatological observations for hydrological observations purposes are made.\_
- **hydrometric station.** \_Station at which data on water in rivers, lakes or reservoirs are obtained on one or more of the following elements: stage, streamflow, sediment transport and deposition, water temperature and other physical properties of water, characteristics of ice cover and chemical properties of water.\_
- **water level**syn. **stage.***Elevation of the free water surface of a water body relative to a datum level.*
- \<p\> **1173 rating curve shift**. \<span style="background-color: transparent; line-height: 22px;"\>Change in the stage–discharge relation.\</span\>\</p\>

## ISO 772

- **1.41 stream gauging:**all of the operations necessary for the measurement of discharge.
- **1.92 rating:**relation between discharge and other variables, or the taking of observations and making of calculations needed to establish the relation.
- **1.93 calibration, rating**(of a station): establishment of a discharge relation with the measured variable(s).
- **2.60 rating curve:**graphical representation of a stage-discharge relation or rating

## USGS definitions

From: <http://ga.water.usgs.gov/edu/dictionary.html>.

- **gage height**--the height of the water surface above the gage datum (zero point). Gage height is often used interchangeably with the more general term, stage, although gage height is more appropriate when used with a gage reading.
- **gaging station**--a site on a stream, lake, reservoir or other body of water where observations and hydrologic data are obtained. The U.S. Geological Survey measures stream discharge at gaging stations.
- **rating curve**--A drawn curve showing the relation between gage height and discharge of a stream at a given gaging station.

## NSW Office of Water

From <http://waterinfo.nsw.gov.au/about/glossary.shtm>. Some definitions are sourced from the USGS glossary; I've only included ones not from there.

- **Rating table**:
  1.  In most contexts, a table showing the relation between the gauge height and the discharge of a stream at a given gauging station. Also referred to as discharge table.
  2.  Any table showing the relation between two mutually dependent quantities or variables over a given range of magnitude, e.g., a table showing the relationship between the stage in a reservoir and its volume. \_Nevada Division of Water <a href="Resources_" class="wikilink">Resources_</a>
- **Gauging station:**A *site on a stream, lake, reservoir or other body of water where observations and hydrologic data are obtained. Measurements of stream discharge at gauging stations.*
- **Gauge height:** \_The height of the water surface above the gauge datum (zero point). Gauge height is often used interchangeably with the more general term, stage, although gauge height is more appropriate when used with a gauge reading. Gauge heights are measured in metres (m).\_

## Bureau of Meteorology

Fairly recently released their National Industry Guidelines for hydrometric monitoring, which includes a glossary document available here: <http://www.bom.gov.au/water/standards/documents/WISBF_GL_100_00-2013.pdf>. \<h2 id="Clarifyingclassdefinitions-Comments"\> **Comments** \</h2\>

- I think we should follow these where possible, and if we deviate we should be explicit on the differences. Having an abstract conversion class, as Dom suggests, seems like a good option. Then we could have a <a href="RatingTable" class="wikilink">RatingTable</a> class in place of either <a href="ConversionTable" class="wikilink">ConversionTable</a>, or as a specialisation of <a href="ConversionTable" class="wikilink">ConversionTable</a> if we want to maintain an abstract separation of tables and equations. The question becomes: is a rating table specific to stage-discharge? Certainly they cover the majority of uses, but there are others like suspended-sediment rating tables.
- There are already aspects of the gaugings model that are specific to measuring discharge: <a href="FlowMeasure" class="wikilink">FlowMeasure</a> vocabulary, river state/conditions and parts of the <a href="ObservationArea" class="wikilink">ObservationArea</a> type (gauged section line etc.).
- **parameterFrom/parameterTo:**Current suggestions are to change the name to: **observedPropertyFrom/observedPropertyTo** or **phenomenonFrom/phenomenonTo**to harmonise with naming within O&M. Any suggestions/comments welcome..

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 10 Sep 2013

- TOPICINFO{author="<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" comment="reprev" date="1387759614" format="1.1" reprev="1" version="4"}

<!-- -->

- TOPICPARENT{name="<a href="WaterML2Part2" class="wikilink">WaterML2Part2</a>"}
