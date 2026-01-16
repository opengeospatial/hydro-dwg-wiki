# API queries

This page is a consolidated list of user queries for the API to be used in the IE. The list of initial queries is on this page: <a href="UserRequirements" class="wikilink">UserRequirements</a>. I have combined some calls and slightly altered long the lines of the comments.

## Core requirements

|  |  |  |  |
|----|----|----|----|
| **\<span style="color: \#483d8b;"\>Query\</span\>** | **\<span style="color: \#483d8b;"\>Parameters\</span\>** | **\<span style="color: \#483d8b;"\>Returns\</span\>** | **\<span style="color: \#483d8b;"\>Comments\</span\>** |
| **Ratings** |  |  |  |
| Get latest rating | MP ID | Single rating |  |
| Get latest rating and shift | MP ID | Single shifted rating | US only |
| Get rating periods | MP ID, rating group ID | Collection of rating periods | Rating group ID from earlier call to list param combos. |
| Get rating table X, Y, Z | MP ID, rating IDs | Collection of rating tables |  |
| Has the latest rating changed since this date? | MP ID, Date | Last change date? |  |
| Has the rating period changed since this date? | MP ID, Date | Last change date? | \<p\><span class="twiki-macro MAROON"></span>?PAS - Which rating are we talking about?%ENDCOLOR%\</p\> \<p\>PAS - Probably drop? the main req. was fast checking that copy of the lastest rating is still current, so an operational system could scan to see it was using the latest tables.\</p\> |
| Have these ratings X, Y, Z changed since this date | MP ID, Date | Collection of change dates to rating IDs |  |
| List all the paramFrom/To combinations | MP ID | Collection of paramFrom/To combinations (i.e. rating groups) |  |
|  |  |  |  |
| **Gaugings** |  |  |  |
| Get the latest gauging | MP ID | Single gauging observation |  |
| Get gauging X, Y, Z | MP ID, gauging IDS | Collection of gauging observations |  |
| Get gaugings since this date | MP ID, date | Collection of gauging observations | Changed from 'have there been any gaugings since this date?' |
| Get all From/To combinations | MP ID | Collection of paramFrom/To combinations |  |
|  |  |  |  |
| **Sections** |  |  |  |
| Get cross-section X, Y, Z | MP ID, section ID | Collection of cross-sections |  |
| Get cross-section after this date | MP ID, date | Collection of cross-sections |  |
| Get all cross-section identifers | MP ID | Collection of cross-sections IDs/references |  |
|  |  |  |  |
| **Range values** |  |  |  |
| Get all range periods | MP ID | Collection of range periods | Return should contain ID/reference to actual range table. |
| Get range table X, Y | MP ID, RT IDs | Collection of range tables |  |

## Nice to have

| Query | Parameters | Returns | Comments |
|:---|:---|:---|:---|
| **Ratings** |  |  |  |
| List all ratings | MP ID | Collection of ratings | I feel this should be part of core, with restriction on result size (e.g. via [pagination](https://developers.google.com/analytics/devguides/reporting/core/v3/reference#paging)) |
|  |  |  |  |
| **Gaugings** |  |  |  |
| Get all gaugings | MP ID | Collection of gauging observations |  |
| List all gaugings with filter | MP ID, filters | Collection of gauging observations | \<p\>Filters captures the general filtering use case (e.g. by method, person, range x-y etc)\</p\> \<ul\> \<li\>Give me a list of gaugings in period X and stage range Y\</li\> \<li\>Give me a list of gaugings not used in conversion X\</li\> \</ul\> |
| List gaugings for rating X since date Y | MP ID, rating ID, date | Collection of gaugings observations | Is this the gaugings used in calibration/validation or just if it's used in rating X? |
|  |  |  |  |
| **Sections** |  |  |  |
| Get all cross-sections | MP ID | Collection of cross-sections |  |
| Get all cross-sections with filter | MP ID, filter | Collection of cross-sections | \<p\>Filter captures number of model-based queries, for example:\</p\> \<ul\> \<li\>List of sections, Type X completed in period Y\</li\> \<li\>List cross sections completed in period X\</li\> \</ul\> |
| Get all types of cross-section available | MP ID | Collection of cross-section types |  |
| **Range values** |  |  |  |
| Get all range tables | MP ID | Collection of range tables |  |
| Get all changes to range periods after this date | MP ID, date | Collection of range table periods |  |
| Get all changes to range tables since this date | MP ID, date | Collection of range tables |  |
|  |  |  |  |

## Currently out of scope

None.

## New requirements (not discussed in meeting)

### Monitoring points

- \<span style="background-color: transparent;"\>Get all monitoring points (with paging or some other mechanism to handle large sets)\</span\>
- \<span style="background-color: transparent;"\>Spatial query (e.g. BBOX) of monitoring points (not likely but worth listing)\</span\>
- \<span style="background-color: transparent;"\>Describe a phenomenon by identifier \</span\>

# General API principles

From the above requirements, there are some general patterns that fall out:

1.  There must be a base query that can discover the available IDs/references for rating/gaugings/range values/sections at a specific MP.
2.  When requesting full collections of objects, don't encode the objects fully, just return IDs and/or references to them. (I have some reservations about this; the API may become too 'chatty' without a full collection encoding)
3.  Complex filters are not supported in the core API. Some basic ones (such as date time queries) have been promoted to core requirements where necessary. Others may also get 'promoted' as testing progresses.
4.  All queries are done on a specific monitoring point.

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 04 Nov 2013

- TOPICINFO{author="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" comment="save topic" date="1395781570" format="1.1" reprev="3" version="3"}

<!-- -->

- TOPICPARENT{name="<a href="ApplicationProgrammingInterfaceDevelopment" class="wikilink">ApplicationProgrammingInterfaceDevelopment</a>"}
