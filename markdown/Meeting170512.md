## Meeting 17th June, 2012

## Agenda

1.  Discuss domain scope of information model and requirements
2.  Form core use cases and exchange scenarios
3.  Prepare for Reading workshop

### Detailed topics

- Workshop attendance
  - Confirmation of numbers
  - Accommodation bookings
- Define scope objectives
  - Ratings
    - Stage shifts
    - Storage (level - area - volumes)
    - Only level and flow?
    - Point tables?
    - Equations?
    - Loop ratings (backwater)?
  - Gaugings
    - ADCP's
    - Observations or results
    - Synchronisation / Change
  - Sections (surveys)
    - Relates to <a href="HY_Features" class="wikilink">HY_Features</a> \* \*
      - More about the connectedness of features
    - What is the scope of the features model?
    - Relationship to the gaugings and calculations methods
    - Control cross sections (high flow, low flow controls) (anything in <a href="HY_Features" class="wikilink">HY_Features</a> also INSPIRE?)
- Methodology
  - Requirements
    - Lock down, when?
    - Prioritsation
    - Process to request requirements change
    - Requirements review process ?
  - Modelling
  - Objectives in the next 12 months
- Questions
  - How are requirements expressed
  - How are constraints expressed
  - Working communication tool
    - UML model ?
    - Accompanying word document
- WIRADA work plan for 2012-13 FY

## Attendees

Paul Sheahan, Peter Taylor, Dave Blodgett, Dave Valentine

## Notes

Paul and Pete T have a project proposal for July 2012-13 to develop parts of this work. Two core activities: ratings and gauings and model and developing methods to profile <a href="WaterML2" class="wikilink">WaterML2</a>. Timelines are written into the plan -- these will be presented at workshop.

### Scope

This is ancillary data that provides details of methods and conversions for producing data products. Mostly targetting knowledgable people want to this style of data and understand it. Flow as a data product - most people will be happy with it and don't require understanding of the conversion process.

<a href="DaveV" class="wikilink">DaveV</a>: related generally to temporally bounded attributes and metadata.

Dave B: An example usage from forecasting IE. NWS forecasting service manage their own rating curves. Pull data from gauges themselves then use their own curves for trasnformation (rather than an agencies). Goal of forecasting IE was to be able to share the curves so NWS people would develop more trust in it (PT paraphrasing)

Dealing with curves is easier than with individual gaugings. Fair bit of difference in the amount in of info that goes along with gaugings and will vary, especially across countries.

Paul S: similar situation in Aus. There are people getting in touch and wanting tables to investigate accuracy. The Bureau will use ratings where they only have stage.

USGS has pretty standard methods for gaugings etc. and thus can expect common types of metadata and vocabularies.

Dave V: some people got upset when USGS took rating curves offline (from CUAHSI and other areas). Could be a research use case as well.

Dave B: <a href="DelfFEWs" class="wikilink">DelfFEWs</a> doco relating to variations on rating equations. <https://publicwiki.deltares.nl/display/HYMOS/01+Fitting+of+rating+curve>.

US uses rating shifts as part of their ratings implementation.

**Open question:**﻿Do we include equations? Sections? See scope topics above -- these have been expanded.

**Capturing use cases/requirements:**

- Agency-agency transfer? Transfer between two knowledgable parties. NWIS example is similar. For providing forecasting.
- Software input/output: KISTERS and Aquatic Informatics.
- Plotting of the rating curve. Visualisation for informative purposes. What happens as stage increases (indication of quality)
- Hydrological research

### Workshop

**ACTION:** Propose workshop attendees develop their use cases (scenarios) and requirements to bring to workshop. Start with use cases and then unpack some requirements relating to them.

Paul to firm attendees for workshop. Peter G and John H participating? Anyone from the forecasting IE?

Lock down the top level (functional) requirements phase relatively early, but then interate over smaller parts. Defining the approach at the workshop. Not only a requirement development workshop?

Agile and iterative. Start with scoping and requirements discussion on day 1.

Then whiteboard and UML as a communication tool to capture core aspects of the model. Avoid spending too much time on the details of the UML approach -- capture the base level model. Pete T can tweak as needed.

Discussion about tools, handling the documentation, UML and schema artefacts. Keeping doco in the model for first phases of development.

**Objective:** strawman model by the end of the workshop. Develop a discussion paper for presentation at <a href="HydroDWG" class="wikilink">HydroDWG</a> TC (second half of year). Then review and process feedback. This is consistent with the Pete T and Paul's project proposal.

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 17 May 2012

- TOPICINFO{author="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" comment="save topic" date="1337653284" format="1.1" reprev="3" version="5"}

<!-- -->

- TOPICPARENT{name="<a href="WaterML2Part2" class="wikilink">WaterML2Part2</a>"}
