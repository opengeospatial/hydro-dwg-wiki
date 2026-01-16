# Agenda

- Decision points - review
- Range values
- Possible scenarios and examples from organisations. What type of metadata do people want to see represented?
- UML walkthrough and examples

# Attendees

- Paul Sheahan, Matt Fry, Peter Taylor

# Meeting notes

## Decision points review

Schedule has been posted here: <http://external.opengis.org/twiki_public/pub/HydrologyDWG/WaterML2Part2/RGS_schedule_0.2.pdf>.

All the decision points with dates in the spreadsheet have passed (e.g. rgs-36), so please review and post any questions. RGS register: <https://docs.google.com/spreadsheet/ccc?key=0ArdtTd_VTBTZdGVCZnM3czk1c1NzbVBONWd6Z3dyZHc#gid=0>

## Range values

Paul has posted some notes here: <http://external.opengis.org/twiki_public/pub/HydrologyDWG/Meeting180912/classification_ranges.pdf> on possible implementations of range values.

What types of range values will we be looking at including? What could be included in an international vocabulary? Top of bank, modularity, etc. ACTION: Elicit examples from the group. Some contained in Matt's example.

Range values as used for expression equations. These ranges may be different than the other range types. How a limb was derived. Theoretical, derived from gaugings etc. Do ranges that share the same key points get included in the same table? What is the direction of the metadata represented at each key point? E.g. minor flood from 0.5 onwards.

PT: do we need the ability to have ranges that relate specifically to the independent variable and/or dependent variable? E.g. values only associated with discharge.

PS: potentially harder to reverse our the actual metadata based on the business rules. So might be better to separate the tables rather than create too much logic within the single table.

Paul to extend some of the diagrams with construction methods and separation of tables. PT to model using some different approaches.

Matt: may be useful to be able to associate the gaugings to ranges within the curve, e.g. what gaugings were used in development of the limb.

PS: possible to extend the range values for locally defined cases. How this relates to profiles of the model/schema.

PT: move actions/decisions from meeting notes into register.

## Scenarios

PS: examples of existing formats to work through. E.g. some XML instance examples from <a href="HydroML" class="wikilink">HydroML</a>.

Could everyone provide some XML examples of actual curves using formats form their local systems?

Next meeting needs to consider upcoming DST changes.

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 16 Sep 2012

- TOPICINFO{author="<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" comment="save topic" date="1348011978" format="1.1" reprev="3" version="3"}

<!-- -->

- TOPICPARENT{name="<a href="WaterML2Part2" class="wikilink">WaterML2Part2</a>"}

<!-- -->

- FILEATTACHMENT{name="classification_ranges.pdf" attachment="classification_ranges.pdf" attr="" comment="Range values" date="1348005401" path="D:\Paul\Projects\OGC\\<a href="WaterML2" class="wikilink">WaterML2</a>\Ratings and Gaugings\2012\08\31\classification ranges.pdf" size="306765" user="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" version="1"}
