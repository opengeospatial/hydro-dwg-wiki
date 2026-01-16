# Intro

A list of endpoints offering surface water information and/or observations based on existing systems in countries from around of the world.

These open OGC services can be incorporated into web-based information systems providing dynamic access to time-series surface water level and discharge data encoded as WaterML2: Part 1.

## Australia - <a href="BoM" class="wikilink">BoM</a> - Water Data Online

WaterML2: Part 1 service

- SOS access point: <http://www.bom.gov.au/waterdata/services?service=SOS&version=2.0&request=GetCapabilities>

Example queries:

- getFeatureOfInterest - Station(s) by geographic area: <http://www.bom.gov.au/waterdata/services?service=SOS&request=getfeatureofinterest&datasource=0&version=2.0&spatialFilter=sams:shape,-27.5,153.5,-27.4,153.6>
- getDataAvailability - Parameters and periods of record for a Station: <http://www.bom.gov.au/waterdata/services?service=SOS&version=2.0&request=getdataavailability&featureofinterest=http://bom.gov.au/waterdata/services/stations/410713>
- getObservation - Parameters, periods of record and last observation in the time series for a Station: <http://www.bom.gov.au/waterdata/services?service=SOS&version=2.0&request=getobservation&featureofinterest=http://bom.gov.au/waterdata/services/stations/410713>
- getObservation - Continuous time series <a href="Pat2_C_B_1" class="wikilink">Pat2_C_B_1</a> (merged provisional and validated data) for Rainfall measured at station 41001701 (Numeralla @ Chakola) for the time period 1 January to 1 February 2012: <http://www.bom.gov.au/waterdata/services?service=SOS&request=getobservation&datasource=0&version=2.0&featureofinterest=http://bom.gov.au/waterdata/services/stations/41001701&procedure=http://bom.gov.au/waterdata/services/tstypes/Pat2_C_B_1&observedProperty=http://bom.gov.au/waterdata/services/parameters/Rainfall&temporalFilter=om:phenomenonTime,2012-01-01T00:00:00Z/2012-02-01T00:00:00Z>
- getObservation - Returns the same data for a range of years (2014-2017): <http://www.bom.gov.au/waterdata/services?service=SOS&request=getobservation&datasource=0&version=2.0&featureofinterest=http://bom.gov.au/waterdata/services/stations/41001701&procedure=http://bom.gov.au/waterdata/services/tstypes/Pat2_C_Std_QaQc_1&temporalFilter=om:phenomenonTime,2014/2017>

More information on the Bureau of Meteorology's Water Data Online SOS2 services is available here: <http://www.bom.gov.au/waterdata/wiski-web-public/Guide%20to%20Sensor%20Observation%20Services%20(SOS2)%20for%20Water%20Data%20%20Online%20v1.0.1.pdf>.

-- [Main](Main.TonyBoston)- 29 Apr 2019

- TOPICINFO{author="<a href="TonyBoston" class="wikilink">TonyBoston</a>" comment="save topic" date="1557038586" format="1.1" reprev="2" version="3"}

<!-- -->

- TOPICPARENT{name="<a href="WebHome" class="wikilink">WebHome</a>"}
