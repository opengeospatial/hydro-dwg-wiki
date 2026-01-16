1.  **Conversion tables (from and to, rather than stage-discharge)**
    1.  rgs-1
    2.  Handling vocabs as a meta issue
2.  **Multi-input variables (stage, index velocity -\> discharge, cross sectional area)**
    1.  If not included then ensure current version is capable of extension
    2.  How you define the function
    3.  Information on how to use various conversions together to achieve an output -- the workflow or processing information. Chained conversion/transformation. Transfer function.
    4.  Calibration information for development of the function.
    5.  rgs-2
3.  **Which gaugings were used for which ratings**
    1.  Which werenÂ’t used and why.
    2.  Critical piece for uncertainty analysis.
    3.  At least need Â“relevantÂ” gaugings to the rating curve.
    4.  rgs-3
4.  **Segments**
    1.  There is a need for modification of meta-elements of the rating model on a piecewise basis.
    2.  Could be modeled as a way of handling changing metadata across a rating
    3.  rgs-4
    4.  rgs-20
    5.  rgs-21
5.  **Loop ratings; backwater flow**
    1.  Relate the rating to rising limb, steady state, falling limb
    2.  Tidal influence
    3.  Difficult and not useful?
    4.  Technology (i.e. index velocity) has overtaken the issue..
    5.  \<a href="â—‹ <https://publicwiki.deltares.nl/display/HYMOS/01+Fitting+of+rating+curve>" target="\_blank"\>Fitting of ratings curves - reference\</a\>
    6.  rgs-8
6.  **Equations**
    1.  free form - <a href="MathML" class="wikilink">MathML</a>
    2.  predetermined form
    3.  Inverse equations
    4.  Provide a high resolution, linear table form of the equation
        1.  rgs-5
        2.  rgs-6
        3.  rgs-7
    5.  Reverse lookup equations
        1.  Just a query for the opposite direction conversion?
        2.  Reverse lookup of point tables was noted to be statistically invalid, however it is very common practice.
        3.  Suggestion that an equation could also optionally include the inverse equation.
        4.  Up to the data provider whether it is exposed
        5.  rgs-9
7.  **Different family of tables for different purposes**
    1.  Archive / Operational
    2.  Supported through collections
8.  **What is the primary key?**
    1.  Site / Point / <a href="ParameterFrom" class="wikilink">ParameterFrom</a> / <a href="ParameterTo" class="wikilink">ParameterTo</a>
    2.  rgs-10
9.  **Datum**
    1.  Time series in different datum to rating?
    2.  Majority of cases will be in local datum; rarer to be in a national/ordnance datum
    3.  rgs-11
10. **Method of curve development**
    1.  Simple type (code) for the method use
    2.  Reference to more detailed
11. \*Versions, curve history and shifts DB1 vs DB2 -\> hug\*
    1.  Change date for changes against a rating
    2.  Versions can be supplied in a document, but would not be referenced by a period of application.
    3.  USGS techniques in handling ratings. Corrections to raw stage data.
    4.  rgs-12
12. **Period of application**
    1.  Transitions (phase) change
        1.  rgs-13
        2.  Method or process for smoothing - common or org. based method vocabulary
    2.  Start and end dates. Make the end date optional for specifying null periods -- need a null reason. Overlap should be checked for?
    3.  rgs-14
    4.  rgs-15
    5.  The use of end dates may be an ongoing discussion !
13. **Quality codes**
    1.  general and profiled vocabularies are required
    2.  Quality codes per input/x range and per table point
    3.  rgs-16
14. **Limits**
    1.  y range for specifying validated range (within rating), extrapolated range, beyond extrapolation
    2.  In scope
    3.  rgs-20
15. **Point interpolation**
    1.  Resolution will be determined by the data provider
    2.  Expanded rating tables should be acceptable to the community
    3.  rgs-5
    4.  rgs-21
16. **Cross sections**
    1.  Details of the control feature
    2.  Photographs of control, site photo
    3.  Significant levels (e.g. flood warning levels) zero flow, bank full,
        1.  rgs-5
        2.  rgs-21
    4.  <a href="ArcHydro" class="wikilink">ArcHydro</a> has a model that may be useful
17. **Responsible parties**
18. **Approval level**
    1.  Lifecycle of development
    2.  Locked down curve once it’s been used
    3.  Approved before data can be archived
    4.  Review cycle, dates of review, random reviews, reviewed on trigger (e.g. legal)
    5.  Need a vocabulary
    6.  Agree in scope
    7.  rgs-22
19. **Engineered structures**
    1.  Gates
    2.  Dynamic (gates etc) vs. static structures
    3.  Pipe ratings (urban water)
    4.  3D ratings may be out of scope
    5.  State of the engineered structure (gate position, angle)
    6.  Beaver dams
    7.  Very specific for particular circumstances -- the need for an interoperable format would be minimal
    8.  rgs-23
20. **What is the difference between data transfer and methods of applying the data. process / work flow.**
    1.  Does this require a high level statement of delineation between data and data functions(use)
    2.  Chaining, process workflows is likely out of scope
    3.  Link to the product/system/method used to develop the rating
    4.  rgs-24
21. **Uncertainty**
    1.  Can an input range be used to communicate various aspects of uncertainty information?
    2.  Providing robust link to the used gaugings with associated metadata *should*be enough
    3.  Allow extension points, potential to use <a href="UncertML" class="wikilink">UncertML</a> and determine if would suit
    4.  Confidence levels for points in rating?
    5.  Gauging deviations
        1.  Kisters has some examples
    6.  rgs-25
22. **Provenance**
    1.  Communication of sufficient information to enable the user to manage provenance if they choose to.
    2.  Adherence to standards to ensure credibility of the data. Potentially a filter or query?
        1.  ISO19115 conformance tests
    3.  Hooks to allow sufficient provenance to be inserted. Probably (ideally) by reference.

-- Main.<a href="PaulSheahan" class="wikilink">PaulSheahan</a> - 06 Jul 2012

- TOPICINFO{author="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" comment="reprev" date="1341563956" format="1.1" reprev="1" version="1"}

<!-- -->

- TOPICPARENT{name="<a href="RatingsUseCases" class="wikilink">RatingsUseCases</a>"}
