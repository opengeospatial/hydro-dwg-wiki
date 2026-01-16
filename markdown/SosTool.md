# SOS tool discussion

## Parsing results from services

This is from 2010 Feb 04 meeting.

Nathan pointed out that NRCan and USGS service are different because they use different prefixes (wml: versus wml2:), which causes problems to the parsing tool. In principle, different prefixes are not important as long as the prefix refers to the same namespace and namespaces compliant parser should manage this transparently.

Action is to check if the namespaces from NRCan and USGS are indeed the same (they must). **DONE** (see below)

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 04 Feb 2010

The XML Dom method to use is getElementsByTagNameNS("namespaceURI", "localName")

Reading up, it appears that some common javascript libraries do not handle namespaces well (aka JQuery) One suggestion is sarissa <http://dev.abiss.gr/sarissa/>

-- Main.<a href="DavidValentine" class="wikilink">DavidValentine</a> - 05 Feb 2010

I checked both services and they indeed have the same namespaces

USGS has xmlns:wml2="<http://www.wron.net.au/waterml2>

```
<om:ObservationCollection 
  xmlns:gml="http://www.opengis.net/gml" 
  xmlns:om="http://www.opengis.net/om/1.0" 
  xmlns:sa="http://www.opengis.net/sampling/1.0" 
  xmlns:swe="http://www.opengis.net/swe/1.0.1" 
  xmlns:xlink="http://www.w3.org/1999/xlink" 
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
  xmlns:wml2="http://www.wron.net.au/waterml2" 
  xsi:schemaLocation="http://www.opengis.net/om/1.0 http://schemas.opengis.net/om/1.0.0/om.xsd">
  <om:member>
    <wml2:WaterMonitoringObservation>
      <om:samplingTime>
        <gml:TimePeriod>
          <gml:beginPosition>1947-04-15T00:00:00+00:00</gml:beginPosition>
          <gml:endPosition>1999-08-18T00:00:00+00:00</gml:endPosition>
```

NRCan has xmlns:wml="<http://www.wron.net.au/waterml2>"

```
<?xml version="1.0" encoding="UTF-8"?>
<om:ObservationCollection 
  xmlns:wml="http://www.wron.net.au/waterml2" 
  xmlns:proc="urn:x-ngwd:lcnp" 
  xmlns:xlink="http://www.w3.org/1999/xlink" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:gml="http://www.opengis.net/gml" 
  xmlns:sa="http://www.opengis.net/sampling/1.0" 
  xmlns:gwml="http://www.nrcan.gc.ca/xml/gwml/1" 
  xmlns:sql="http://apache.org/cocoon/SQL/2.0" 
  xmlns:om="http://www.opengis.net/om/1.0" 
  xmlns:swe="http://www.opengis.net/swe/1.0.1" 
  xmlns:fn="http://www.w3.org/2005/xpath-functions" 
  xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0">
  <om:member>
    <wml:WaterMonitoringObservation gml:id="ont.ww..1">
      <om:samplingTime>
        <gml:TimeInstant>
          <gml:timePosition/>
        </gml:TimeInstant>
```

The way namespaces association to prefix work is that a prefix is scoped by the tag that declares it and all the child tags below. If a new declaration for the same namespace, but different prefix appears in the child tags, it overrides the previous declaration

As David pointed out, the parser you are using is probably not namespace aware.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 05 Feb 2010 verbatim

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" date="1265376994" format="1.1" reprev="1.3" version="1.3"}
