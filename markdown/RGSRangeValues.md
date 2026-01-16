# RGS Range Values

This page is for the collection of details that describe the range values concept, further child detail pages may be added if necessary.

\<table align="left" border="1" cellpadding="0" cellspacing="1" style="border: \#72b4fc 1px solid;"\> \<tbody\> \<tr\>\<th\>Activity register ID\</th\> \<td\> **Activity register description** \<br /\>\<a href="<https://docs.google.com/spreadsheet/ccc?key=0ArdtTd_VTBTZdGVCZnM3czk1c1NzbVBONWd6Z3dyZHc>" rel="nofollow" target="\_top"\><https://docs.google.com/spreadsheet/ccc?key=0ArdtTd_VTBTZdGVCZnM3czk1c1NzbVBONWd6Z3dyZHc>\</a\>\</td\> \<th\>Responce\</th\>\</tr\> \<tr\> \<td\>rgs-4\</td\> \<td\>The inclusion of user specified user information that varies across the Y scale of a conversion is in scope. This would be used to give further information for the conversion. e.g. Control/Chanel/<a href="OverBankFlow" class="wikilink">OverBankFlow</a> Assessment of other sensor application range\</td\> \<td\>Range value tables provide this functionality\</td\> \</tr\> \<tr\> \<td\>rgs-6\</td\> \<td\>Ratings may have the equation that is the source system definition of the rating. This may be supplied using rgs-4.\</td\> \<td\>Range value tables provide this functionality\</td\> \</tr\> \<tr\> \<td\>rgs-20\</td\> \<td\>Conversions can specify Y scale range validated range (within rating), extrapolated range, beyond extrapolation.\</td\> \<td\>Range value tables provide this functionality\</td\> \</tr\> \<tr\> \<td\>rgs-21\</td\> \<td\>There is a need for defining an input range purpose. An input range purpose should be a controlled vocabulary, the semantic meaning of each input range purpose should be defined against the vocabulary. Input range contents may vary over time, so should be referenced by periods of applicability.\</td\> \<td\> \</td\> \</tr\> \<tr\> \<td\>rgs-25\</td\> \<td\>Specific methods for the communication of uncertainty information are not currently agreed across the domain. This is an area of current domain development. The standard should be sufficiently extensible to enable incorporation when a direction is available.\</td\> \<td\>Range values may have a role in provising this functionality.\</td\> \</tr\> \<tr\> \<td\>rgs-37 (proposed)\</td\> \<td\>A range value may refer to to a specific value, rather than a range. An example is references to flood extent polygons, the flood extent relates to a specific Y scale value and is not valid for a ranged of Y values (the range is vary narrow).\</td\> \<td\> \</td\> \</tr\> \<tr\> \<td\> .\</td\> \<td\> \</td\> \<td\> \</td\> \</tr\> \<tr\> \<td\> .\</td\> \<td\> \</td\> \<td\> \</td\> \</tr\> \<tr\> \<td\> .\</td\> \<td\> \</td\> \<td\> \</td\> \</tr\> \</tbody\> \</table\>

## 

## 

## **\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>\<br /\>Purpose**

Range tables are a data structure that is similar to a conversion table except that the value applies across a broad input range and the content describes a state or condition that varies with the input range, rather than a conversion.

Range tables may carry information that relates to, or adds value to, a conversion table. E.g. Information describing the rating construction method.\<br /\>A range table may carry information that is of value in it own right. E.g. Stage V. over bank flow condition (confined to channel, over bank flow).\<br /\>Whilst a range value table may contain information that can be derived by analysis of ratings and gaugings, consensus is that general usage would be that a range table contains information that is new. That is, information that can not be derived from analysis of other info contain in the RGS WML2 document. This is only a usage recommendation or convention, it could not be enforced in schema.

## **Table name vocabulary**

The strength of a range table is achieved though having the definition of its content clearly defined. In a conversion table the is a clear purpose of converting from one parameter to the second parameter. In a range table this is not the case, the table only has the input parameter, the name of the table defines the purpose of the data. This understanding of the definition then enables the user to make good use of the data contained in the table (hopefully). There is an expectation that range table will be used for purposes that we are not aware of e.g. rgs-25.

*There a need (**rgs-21**) to have a <a href="WaterML2" class="wikilink">WaterML2</a> vocabulary that defines a set of standard range tables? Users would no doubt need to be able to extend the vocabulary.*

## **Encode with conversion points?**

Encoding a range value with a conversion table will most likely result in many IV values not having range values. This means that logic is required to extract the range information from the structure. The telecon of 20/9 recommended that table should be encoded on their own and that a XML table structure would only contain a single range table. Multiple table structures would be required for multiple ranges.

## **Encoding**

Is there a need for the encoding to be suitable for use with a style sheet to enable the information to presented in HTML?

## **Range table content typing**

Is there a need to type the content of a range value, would the typing be best completed in the definition of the range name. e.g. Mannings N table contains numbers.

## **Range table concepts**

Below are a number of white board slide on range table concepts, these include:

- A Site / WML2 document may one or contain many different named ranges
- Range tables have a period of applicability

## \_\_Conversion tables : concepts for reference\_\_

\<img alt="" src="%ATTACHURL%/<a href="RangeValues" class="wikilink">RangeValues</a>.v2_2.png" /\>

\<img alt="" src="%ATTACHURL%/<a href="RangeValues" class="wikilink">RangeValues</a>.v2_3.png" /\>

## \_\_Range tables concepts.\_\_

rgs-20 : rating method.

\<img alt="" src="%ATTACHURL%/<a href="RangeValues" class="wikilink">RangeValues</a>.v2_5.png" /\>

\<img alt="" src="%ATTACHURL%/<a href="RangeValues" class="wikilink">RangeValues</a>.v2_6.png" /\>

rgs-6 - Table equations

\<img alt="" src="%ATTACHURL%/<a href="RangeValues" class="wikilink">RangeValues</a>.v2_7.png" /\>

-- Main.<a href="PaulSheahan" class="wikilink">PaulSheahan</a> - 22 Sep 2012

- TOPICINFO{author="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" comment="save topic" date="1352177693" format="1.1" reprev="3" version="3"}

<!-- -->

- TOPICPARENT{name="<a href="WaterML2Part2" class="wikilink">WaterML2Part2</a>"}

<!-- -->

- FILEATTACHMENT{name="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_1.png" attachment="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_1.png" attr="" comment="" date="1348349849" path="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_1.png" size="44781" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_2.png" attachment="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_2.png" attr="" comment="" date="1348349865" path="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_2.png" size="70995" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_3.png" attachment="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_3.png" attr="" comment="" date="1348349885" path="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_3.png" size="60568" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_4.png" attachment="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_4.png" attr="" comment="" date="1348349900" path="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_4.png" size="25558" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_5.png" attachment="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_5.png" attr="" comment="" date="1348349912" path="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_5.png" size="69790" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_6.png" attachment="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_6.png" attr="" comment="" date="1348349925" path="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_6.png" size="68577" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_7.png" attachment="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_7.png" attr="" comment="" date="1348349953" path="<a href="RangeValues" class="wikilink">RangeValues</a>.v2_7.png" size="49477" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="Range_Values" class="wikilink">Range_Values</a>.v2.pdf" attachment="<a href="Range_Values" class="wikilink">Range_Values</a>.v2.pdf" attr="" comment="" date="1348349982" path="Range Values.v2.pdf" size="467134" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}
