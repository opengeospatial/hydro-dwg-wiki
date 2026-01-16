Ratings notes - Workshop

The workshop notes original can be found in google docs : \<a href="https://docs.google.com/document/d/1woYVOHNAEAZGgZ525h6y5hXVz1ivtJ9W-<a href="RdIMqNyD5A" class="wikilink">RdIMqNyD5A</a>/edit#" rel="nofollow" target="\_top"\>https://docs.google.com/document/d/1woYVOHNAEAZGgZ525h6y5hXVz1ivtJ9W-<a href="RdIMqNyD5A" class="wikilink">RdIMqNyD5A</a>/edit#\</a\>

The 'use case' and 'scope' section have been estrated into different Wiki page documents:

- \<a href="<a href="RatingsUseCases" class="wikilink">RatingsUseCases</a>" target="\_blank"\>Use Cases\</a\>
- \<a href="<a href="RatingsScope" class="wikilink">RatingsScope</a>" target="\_blank"\>Scope\</a\>

# Ratings

- Articulate organisation topic requirements
- Sharing of organisation models
- review of requirements to define scope
- Identify common elements from organisation inputs, consider how these can be used to meet the scope requirements
- identify core components v components for local extension
- Straw man modelling with EA and white board

# USGS - <a href="HydroML" class="wikilink">HydroML</a>

Conference call with Geoff ???

## Ratings

<a href="HydroML" class="wikilink">HydroML</a> started for the purpose of site visit information. Ratings was inserted for the <a href="GeoSat" class="wikilink">GeoSat</a> contract and was added along with elements for service based delivery

3 rating types

- Point pairs linear or logarithmic
- Standard equations
- Polynomial equations

Shift Curves are a part of each rating and are used a lot.

Have a separate structure for when ratings are in effect. A set of ratings are applied by using periods.

<a href="HydroML" class="wikilink">HydroML</a> is used to communicate ratings. GRSat has a middleware application where the requester nominates the ratings and shifts that the user wants to used. AI is used for ratings manipulation. Rating data is then supplied back to the system using <a href="HydroML" class="wikilink">HydroML</a>.

**Q:**DB1: How much of the <a href="HydroML" class="wikilink">HydroML</a> schema is designed around the NWIS table structure? (Level of abstraction from the NWIS table structure).

G? - Pretty generic, not tied with table structures.

**Q:** MN : Accommodation of weed growth, how do you implement upper and lower curves between weed affected times

G? - Would be completed using shifts

Rating lockdown:

Long term stations have many ratings. Ratings and periods can be changed retrospectively but is not common place.

<a href="HydroML" class="wikilink">HydroML</a> : <a href="RatingDate" class="wikilink">RatingDate</a> - a list of dates when a rating is in effect

Uses a list of start dates and the tables that apply.

<a href="HydroML" class="wikilink">HydroML</a> exports are considered to be stateless. If GRSat data is returned with a change then the data is written back to NWIS. Does not implement a ‘check out’ system for rating editing.

Shift Curves:

How is the knowledge / reasoning around implementing a shift being communicated to users? Comment fields are used to record the reasoning.

## Site Visit

Field computers / tablets record information and export the data using <a href="HydroML" class="wikilink">HydroML</a>. This data is then uploaded into NWIS.

## History Elements

All data carries indication of who modified or created the data and when.

# WDTF - BOM.AU

Conference call with Geoff ???

Version 2.0 will import <a href="WaterML2" class="wikilink">WaterML2</a>.0.

Difference between shifts and WDTF approach: use a new version.

Conversion of different parameters.

Three core concepts: define parameters, tables and periods.

1.  Define the param unit, vocabulary item.
2.  Define the mapping (e.g. level to flow)
3.  Define tables, point based, with comments and quality
4.  Define application periods
    1.  Start dates defined
    2.  Phased transitions

Cell bounds within <a href="NetCDF" class="wikilink">NetCDF</a> might be applicable.

**Revision history of individual curves**. Rating curve provenance as a use case. How do the rating curves get managed. Scope question. Overlapping and revisions to start dates.

Pro-rating, phase change.

Rating change revision cycle, development.

Aging code (state code, for transition through states of approval, revision etc.):

1.  curve is locked down, reviewed and approved.
2.  period of applicability
3.  Shift corrections

Question: Support for rating has finished.

How to handle extrapolation out the bounds of the table/curve? Should the x, y tuples support individual quality assertions?

Periods of verifications. How to use the rating. Applies for reverse ratings.

Question (SH): What about tideda?

# Aquatic Informatics

\_Stuart\_

Canadian perspective. End date on rating periods for winter; null period over winter freeze. Estimation of under ice flow uses different methods. Kisters does this with a null rating that will produce flow with a specific code and null values.

Often prefer not to put out ratings for ice affected periods to due expertise required to correctly make us of the rating. Discharge series gets cut off depending on the ice conditions.

Different methodologies are out of scope for stream flow reconstruction. Could be possible to communicate the reason why a period is a null rating.

Still may be run under icy conditions and discharge is flagged with appropriate quality flags.

Very few controlled sites and mostly remote access -- low visits (6-8 per year, 3-4 in winter): low level of gaugings for rating development. Leads to a more hydraulic approach to curve development, as opposed to statistical approach with more gauging points.

Banjo curves (lots of low gaugings, few high). Sharing of ratings curves

Use of flow data needs to be associated with appropriate analysis of the underlying rating (e.g. people using for climate change or hypthesis testing). For near real time data operations (e.g. flood forecasting) they will pull data themselves and use the most up to date curve.

Two core cases:

- Data scrutiny
- Time sensitive (floods, events)

The set of gaugings and ratings are important for proper interpretation of the data. Need to be able track and identify misinformation and disinformation (information resulting in incorrect inference).

Level of detail required for different purposes. E.g. for flood management -- do you just use the curve based on the current version. You have to have confidence you have the latest gaugings included in the rating.

Including which gaugings were is in the curve, potentially ones outside the applicable period.

Trust is implicit in the use of some ratings from particular organisations but in a more open situation it may be harder to know the underlying methods.

Base curve captures the key set of gaugings that have been used.

# Kisters

Michael N.

Source to target parameter. Each parameter can have multiple ratings, each rating multiple versions. Always one active version for the parameter rating. An updated rating version will backwards apply where as a new rating is created for a new period.

Store the used gaugings against the rating.

Transition is done by linear interpolation between the two curves.

In the exchange format do we handle version (and shifts) just as other ratings.

How to get the sweet spot with being able to track the provenance to sufficiently review the curve -- this will be the key to scope.

Specific dual rating method for handling things like weed growth, links to another input series that defines the factor. Used where there are a lot of regular gaugings (in order to capture the cyclic behaviour that forms the top and bottom curves).

Simulated, manual, gauging points may need to be handled (e.g. inserted from a physical model).

-- Main.<a href="PaulSheahan" class="wikilink">PaulSheahan</a> - 06 Jul 2012

- TOPICINFO{author="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" comment="reprev" date="1341564077" format="1.1" reprev="1" version="1"}

<!-- -->

- TOPICPARENT{name="<a href="WaterML2Part2" class="wikilink">WaterML2Part2</a>"}
