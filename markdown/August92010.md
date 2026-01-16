## Telcon 9 August 9pm UTC

-- Main.<a href="JohnHalquist" class="wikilink">JohnHalquist</a> - 11 Aug 2010

## Agenda

- Update from participants on use cases
- Comments on UC2 Plan

## Attendees

Peter Gijsbers, John Halquist, Peter Fitch, Paul Sheahan

## Notes

## Update from <a href="BofM" class="wikilink">BofM</a>.au - Paul S.

<a href="BoM" class="wikilink">BoM</a> has WISKI from Kisters installed and intends to serve historical data from this server. <a href="BoM" class="wikilink">BoM</a>'s interest is to evaluate data volumes transmitted. No real-time data flow is planned at this time, but it should be capable of doing so. This effort is not engaged with the FEWS trial group. For its evaluation, <a href="BoM" class="wikilink">BoM</a> is not tied to FEWS as a client. They may also use other clients to evaluate performance and traffic volumes.

## Update from CSIRO - Peter F.

Peter F asked for a contact point for the FEWS group - Justin Robinson is the contact. The CSIRO-ICT group will put up a data service, some raw some QC'ed. Data may be availability may be ad hoc/event driven and thus provides a good opportunity to evaluate the combination with an sensor event service. The group in Tasmania also has a FEWS client to work with.

### Action items:

Paul Sheahan will contact Justin Robinson to get engagement of the forecasting group in a FEWS experiment.

CSIRO and <a href="BoM" class="wikilink">BoM</a> together will need to develop a plan that fits their needs. This will depend to some extent on the involvement (or not) of the forecasting division.

## Update from NWS - John H.

The NWS, Deltares and USGS held a conference call last week to discuss the plans for the US. USGS will be setting up both a Web Feature Service (based on Inspire) as well as a <a href="WaterML" class="wikilink">WaterML</a> Sensor Observation Service. It was agreed that these services would be provided for tributaries to the Mississippi River - \[possible locations: Chippewa, Wisconsin, Rock\] and for a tributary to the Great Lakes. The plan is to provide raw data (push and/or pull) but also an event service to notify of data updates.

There is strong interest in pursuing stage/discharge relationships (rating curves) within the <a href="WaterML" class="wikilink">WaterML</a> 2, so existing xml formats will be provided for evaluation and possible harmonization with other examples (i.e. WTDF, etc). There was consensus among the telecon participants that we wanted to see Rating curves move forward.

In addition, although not directly relevant to <a href="WaterML" class="wikilink">WaterML</a> 2, we discussed the creation of a gridded data service for NEXRAD data.

## Discussion of workplan

It was determined that the architecture portion of the plan should be extended with a set of sequence diagrams to illustrate the different test situations.

- A raw data feed being ingested on a schedule (i.e. push and/or pull)
- A quality controlled data feed where data changes are ingested, and using an event service to notify the need for an update

### Action item:

Peter G. will update this section of the workplan

- TOPICINFO{author="<a href="JohnHalquist" class="wikilink">JohnHalquist</a>" date="1281555320" format="1.1" reprev="1.1" version="1.1"}

<!-- -->

- TOPICPARENT{name="<a href="UseCase2ForecastingIngest" class="wikilink">UseCase2ForecastingIngest</a>"}
