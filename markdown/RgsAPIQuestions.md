## Open questions

<span class="twiki-macro TOC"></span>

### **Get rating periods**

Q: I guess we need to discuss how “rating/conversion groups” will be defined. For the IE are we only dealing with stage-discharge rating groups? I assume we want to return a collection of conversionPeriods?

\<u\>Discussion: \</u\>

### **Get rating table X, Y, Z**

Q: How will clients actually get rating IDs?

\<u\>Discussion:\</u\> I've added the identifier (id) property to the JSON encoding. So you can now lookup the ID directly from rating objects. E.g.

```
 
```

\<pre\>**GET** /rgs-api/v1/conversion/548/\</pre\> \<pre\> "id": 548, "paramFrom": "100.00", "paramTo": "141", "conversionperiod_set": \[ "\<a href='<http://waterml2.csiro.au/rgs-api/v1/conversion-period/434/>' rel='nofollow'\><http://waterml2.csiro.au/rgs-api/v1/conversion-period/434/>\</a\>" \], "monitoringPoint": "\<a href='<http://waterml2.csiro.au/rgs-api/v1/monitoring-point/419015/>' rel='nofollow'\><http://waterml2.csiro.au/rgs-api/v1/monitoring-point/419015/>\</a\>", "points": \[ ... \]\</pre\>

\<span style="background-color: transparent;"\> I've also now added the query to retrieve via multiple identifiers. E.g.\</span\>

```
GET http://waterml2.csiro.au/rgs-api/v1/conversion/?id=549,548,547
```

Will return three ratings corresponding to the IDs passing in.

### **Has the latest rating changed since this date?**

Q: Seems like we should be returning a Boolean value. Maybe we should reword the query to return the last modified data of the latest rating?

\<u\>Discussion:\</u\>Yes this could be a boolean. We discussed this a bit earlier. The idea behind returning a dates was to try and avoid two calls, as the subsequent call from 'has this changed' could often be when did this change? But perhaps not..

### **Has the rating period changed since this date?**

Q: I’m a little confused as to what this does.

\<u\>Discussion:\</u\> I think Paul added this one with the intention of checking if the applicable period for a rating has changed. Not sure if this applies to a change in all the periods or a change of an individual rating period?

### **Have these ratings X, Y, Z changed since this date?**

Q: I think we’re missing rating IDs in parameters?

\<u\>Discussion:\</u\> Yes we were, but they are in there now. Still haven't implemented this query yet.

(two from Paul's client implementation)

\<span style="background-color: transparent;"\>Q: How to get a list of all the available parameter conversions for a site without requesting each table/conversion?\</span\>

\<u\>Discussion:\</u\> There are a number of different ways this could be implemented. One option is to present the paramFrom/To codes in the applicable period to allow the code to come from the conversion-group request.

e.g. <http://waterml2.csiro.au/rgs-api/v1/conversion-group/?monitoring-point=419009> returns all the conversion groups for a site, with expanded periods containing the parameter pairs. This approach can be tested, and other options expored.

\<span style="background-color: transparent;"\>Q: Need to represent identifiers as well as links\</span\>

\<u\>Discussion:\</u\> Have been added for conversions. Peter H raised the point that not al objects may have identifiers however (they may be just responses from queries/composition of multiple objects). Rating tables should contain ids, however, and these have been included.

## Handling and querying parameter codes

This issue cuts across a number of questions. How to represent the parameter identifiers, return the available parameter combinations and then query for specific parameter conversions?

**Option 1 - use internal codes**

Currently the implementation for the prototype API. If we just use internal codes, there is no way of knowing what they mean (e.g. you just get back '140' as a paramFrom). e.g.

```
"id": 8, 
    "fullConversion": false, 
    "monitoringPoint": "<a href='http://waterml2.csiro.au/rgs-api/v1/monitoring-point/419009/' rel='nofollow'>http://waterml2.csiro.au/rgs-api/v1/monitoring-point/419009/</a>", 
    "conversionPeriods": [
        {
            "paramFrom": "100.00", 
            "paramTo": "141", 
            "periodStart": "1998-07-27", 
            "periodEnd": null, 
            "applicableConversion": "<a href='http://waterml2.csiro.au/rgs-api/v1/conversion/440/' rel='nofollow'>http://waterml2.csiro.au/rgs-api/v1/conversion/440/</a>"
```

We would have to provide a lookup for what these codes describe (option 3).

**Option 2 - use external codes**

Currently implemented in prototype for Conversions only. This provides a URL to an external vocabulary service. e.g.

```
id": 548, 
    "paramFrom": "<a href='http://neiivocab.bom.gov.au/std/water/xml/wio0.2/property/wdtf-parameters/WaterCourseLevel_m' rel='nofollow'>http://neiivocab.bom.gov.au/std/water/xml/wio0.2/property/wdtf-parameters/WaterCourseLevel_m</a>", 
    "paramTo": "<a href='http://neiivocab.bom.gov.au/std/water/xml/wio0.2/property/wdtf-parameters/WaterCourseDischarge_m3s' rel='nofollow'>http://neiivocab.bom.gov.au/std/water/xml/wio0.2/property/wdtf-parameters/WaterCourseDischarge_m3s</a>", 
    "conversionperiod_set": [
        "<a href='http://waterml2.csiro.au/rgs-api/v1/conversion-period/434/' rel='nofollow'>http://waterml2.csiro.au/rgs-api/v1/conversion-period/434/</a>"
    ], 
    "monitoringPoint": "<a href='http://waterml2.csiro.au/rgs-api/v1/monitoring-point/419015/' rel='nofollow'>http://waterml2.csiro.au/rgs-api/v1/monitoring-point/419015/</a>", 
    "points": [
```

This allows one to retrieve the description of the vocabulary term. However, using this identifier for queries, e.g. to ask for all ratings that convert from stage-discharge, would require a parameterised URL that contains two full URLs in the queries. Whilst possible - is this desirable?

**Option 3 - provide parameter type description within the API**

This option would provide a /parameter resource in the REST API that could provide basic info on the parameter, with at least:

- ID - the service identifier to use for the parameter in subsequent queries for specific rating types
- Definiton URL - a full URL to a vocabualry service definiton
- Description - perhaps a basic text description of the parameter.

These would allow queries within the API, plus resolution to an external definiton.

### Flow of API calls

How to make the first set of discovery calls? E.g. to get the monitoring point identifiers for subsequent calls? At the moment the prototype API returns a paged set of results (which is ALL the available monitoring points).

Potential options (can be a combination of these):

- Use the paging approach;
- Provide some query into the monitoring point collections, e.g.
  - Text search across the name. /monitoring-point?name=mysite
  - Geospatial (near lat/lon, BBOX, polygon etc.)
- Other monitoring point properties (monitoring type etc.)

### Changed since query

There is a get ratings that have changed within the last X hours. In Dave B's implementation, this returns a list of conversion groups, with links to the appropriate tables. Do want the same query to work directly on conversions? i.e so you can ask directly for all ratings tables that have changed in the last X hours and get the full tables back?

E.g.

<http://waterml2.csiro.au:82/rgs-api/v1/conversion/?changesSince=2> \<- Get all tables that have changed in the last 2 hours.

<http://waterml2.csiro.au:82/rgs-api/v1/conversion-group/?changesSince=2> \<- Get all groups that have changed in the last 2 hours.

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 19 Mar 2014

- TOPICINFO{author="<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" comment="reprev" date="1397699987" format="1.1" reprev="3" version="5"}

<!-- -->

- TOPICPARENT{name="<a href="ApplicationProgrammingInterfaceDevelopment" class="wikilink">ApplicationProgrammingInterfaceDevelopment</a>"}
