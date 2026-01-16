<span class="twiki-macro TOC"></span>

# <a href="WaterML2" class="wikilink">WaterML2</a> implementation of USGS Rating Shifts

# \<span style="background-color: transparent; line-height: 22px;"\>Pre-reading links\</span\>

- \<a href="<a href="RatingsShiftsQuebec" class="wikilink">RatingsShiftsQuebec</a>" target="\_blank"\>Rating Shifts - understanding the concepts\</a\>
- \<a href="<a href="RatingShiftsImplementationOptions" class="wikilink">RatingShiftsImplementationOptions</a>" target="\_blank"\>Implementation options investigation\</a\>
- \<a href="<a href="ClassDefinitionsAndGlossary" class="wikilink">ClassDefinitionsAndGlossary</a>" target="\_blank"\>Glossary of terms\</a\>

# A <a href="WaterML2" class="wikilink">WaterML2</a> Conversion is used to define a rating.

<a href="WaterML2" class="wikilink">WaterML2</a> stream discharge rating tables though a generalised 'conversion'. Below is a diagram of the conversion concept.

The conversion/ratings concept is quite straight forward:

- Rating tables enable the conversion from an observed property to a derived property.
- \<span style="background-color: transparent; line-height: 22px;"\>A rating curve is a curvilinear relationship defined by nodes with linear interpolation between nodes\</span\>
- Conversion have a start date of application.

The are more complex requirements that are also implemented, but the above points are the core concept.

\<img alt="RGS.Conversion.png" height="300" src="%ATTACHURL%/RGS.Conversion.png" title="RGS.Conversion.png" width="494" /\>

# USGS Rating shifts are a form of <a href="WaterML2" class="wikilink">WaterML2</a> conversion

In its simplest form, the USGS method of calculating flow involves adjusting the river level data prior to converting into derived flow. This is illustrated in the conversion chain diagram below.

\<img alt="Conversion.Shift.Flow.png" height="300" src="%ATTACHURL%/Conversion.Shift.Flow.png" title="Conversion.Shift.Flow.png" width="311" /\>

A <a href="WaterML2" class="wikilink">WaterML2</a> conversion can be used for implementing both the Rating Shift and the Discharge rating.

- \<span style="background-color: transparent; line-height: 22px;"\>For more information on how a <a href="WaterML2" class="wikilink">WaterML2</a> conversion can be applied to complete a rating shift see the document <a href="RatingsShiftsQuebec" class="wikilink">RatingsShiftsQuebec</a> \</span\>
- \<span style="background-color: transparent; line-height: 22px;"\>The definition of the work flow described above is not in scope for WML2.P2\</span\>

\<span style="background-color: transparent; color: \#333333; font-size: 24.44444465637207px; line-height: 1.1em;"\><a href="WaterML2" class="wikilink">WaterML2</a> Implementing multiple conversions\</span\>

It is common practice in information systems to define a single conversion period for each \<a href="bin.edit.<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="ParamterFrom" class="wikilink">ParamterFrom</a>?topicparent=<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="WaterML2RatingShiftsImplementationConcepts" class="wikilink">WaterML2RatingShiftsImplementationConcepts</a>" title="Create this topic"\><a href="ParamterFrom" class="wikilink">ParamterFrom</a>\</a\> and \<a href="bin.edit.<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="ParameterTo" class="wikilink">ParameterTo</a>?topicparent=<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="WaterML2RatingShiftsImplementationConcepts" class="wikilink">WaterML2RatingShiftsImplementationConcepts</a>" title="Create this topic"\><a href="ParameterTo" class="wikilink">ParameterTo</a>\</a\> (\<a href="bin.edit.<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="FromTo" class="wikilink">FromTo</a>?topicparent=<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="WaterML2RatingShiftsImplementationConcepts" class="wikilink">WaterML2RatingShiftsImplementationConcepts</a>" title="Create this topic"\><a href="FromTo" class="wikilink">FromTo</a>\</a\>) combinations for an monitoring point. The HDWG RGS group decided that this convention would not be followed for WML2.P2 ratings, see \<a href="<a href="RatingShiftsImplementationOptions" class="wikilink">RatingShiftsImplementationOptions</a>" target="\_blank"\>Implementation options investigation\</a\> for alternatives.

The WML2.P2 implementation will allow a \<a href="bin.edit.<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="ConversionPeriod" class="wikilink">ConversionPeriod</a>?topicparent=<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="WaterML2RatingShiftsImplementationConcepts" class="wikilink">WaterML2RatingShiftsImplementationConcepts</a>" title="Create this topic"\><a href="ConversionPeriod" class="wikilink">ConversionPeriod</a>\</a\> to define the period of application for multiple \<a href="bin.edit.<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="FromTo" class="wikilink">FromTo</a>?topicparent=<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="WaterML2RatingShiftsImplementationConcepts" class="wikilink">WaterML2RatingShiftsImplementationConcepts</a>" title="Create this topic"\><a href="FromTo" class="wikilink">FromTo</a>\</a\> combinations. This approach has been taken to simplify the usage of WML2.P2 document in the application to USGS rating shifts methods.

Points to note:

- A <a href="WaterML2" class="wikilink">WaterML2</a>.P2 Conversion period with multiple \<a href="bin.edit.<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="FromTo" class="wikilink">FromTo</a>?topicparent=<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="WaterML2RatingShiftsImplementationConcepts" class="wikilink">WaterML2RatingShiftsImplementationConcepts</a>" title="Create this topic"\><a href="FromTo" class="wikilink">FromTo</a>\</a\> combinations can always be disaggregated to enable storage into system that do not support multiple combinations.
- Where a work flow required knowledge of several conversions concurrently, (e.g. USGS Rating shifts) this method supports concise delivery of the data with the ability to understand all conversions in data order without having to traverse multiple data structures.
- The is Nil impact on a the use of a single \<a href="bin.edit.<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="FromTo" class="wikilink">FromTo</a>?topicparent=<a href="HydrologyDWG" class="wikilink">HydrologyDWG</a>.<a href="WaterML2RatingShiftsImplementationConcepts" class="wikilink">WaterML2RatingShiftsImplementationConcepts</a>" title="Create this topic"\><a href="FromTo" class="wikilink">FromTo</a>\</a\> combination

\<img alt="<a href="ConversionGroup" class="wikilink">ConversionGroup</a>.<a href="TwoConversions" class="wikilink">TwoConversions</a>.png" src="%ATTACHURL%/<a href="ConversionGroup" class="wikilink">ConversionGroup</a>.<a href="TwoConversions" class="wikilink">TwoConversions</a>.png" style="background-color: transparent; line-height: 22px;" title="<a href="ConversionGroup" class="wikilink">ConversionGroup</a>.<a href="TwoConversions" class="wikilink">TwoConversions</a>.png" /\>

-- Main.<a href="PaulSheahan" class="wikilink">PaulSheahan</a> - 21 Nov 2013

- TOPICINFO{author="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" comment="reprev" date="1385090625" format="1.1" reprev="2" version="2"}

<!-- -->

- TOPICPARENT{name="<a href="RatingShifts" class="wikilink">RatingShifts</a>"}

<!-- -->

- FILEATTACHMENT{name="RGS.Conversion.png" attachment="RGS.Conversion.png" attr="" comment="" date="1385082728" path="RGS.Conversion.png" size="54443" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="Conversion.Shift.Flow.png" attachment="Conversion.Shift.Flow.png" attr="" comment="" date="1385084160" path="Conversion.Shift.Flow.png" size="108178" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="ConversionGroup" class="wikilink">ConversionGroup</a>.<a href="TwoConversions" class="wikilink">TwoConversions</a>.png" attachment="<a href="ConversionGroup" class="wikilink">ConversionGroup</a>.<a href="TwoConversions" class="wikilink">TwoConversions</a>.png" attr="" comment="" date="1385090256" path="<a href="ConversionGroup" class="wikilink">ConversionGroup</a>.<a href="TwoConversions" class="wikilink">TwoConversions</a>.png" size="83251" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}
