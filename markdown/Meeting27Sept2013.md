\<h1 id="zen-page-title"\> [2013-09-27 - US & UK IE Meeting](https://wiki.csiro.au/pages/viewpage.action?pageId=612370399) \<a data-animation-speed="300" data-appearance-delay="500" href="https://wiki.csiro.au/pages/viewpage.action?pageId=612370399#" title="Edit the title of this page"\> \</a\>\</h1\>

updated Sep 27, 2013 by [Taylor, Peter (CCI, Hobart)](https://wiki.csiro.au/display/~tay345) \<h2 id="id-2013-09-27-US&UKIEMeeting-Attendees"\>Attendees\</h2\>

- Paul Sheahan, Dave Briar, Dave Valentine, Matt Fry, Brian Gouge, Stu Hamilton, Mike Perryman, Ed Clark (NWS), Mike Correman,

\<h2 id="id-2013-09-27-US&UKIEMeeting-Newactionitems"\>New action items\</h2\> \<h3 id="id-2013-09-27-US&UKIEMeeting-Meetingnotes"\>Meeting notes\</h3\>

- 3 agencies to be involved
- Introductions.
- Ed Clark: working on interoperability IWRSS, obtaining rating tables from GS,
- Mike: OFHD - senior software engineer,
- Service call: return what has changed since date time. Too hard to know in advance how long it would be valid for.
- Hard when having forward looking forecast. More when was the last time should you use it.
- Reject 44. Yes to 43.
- Option of getting a shift corrected rating. If you need to solve for any time other than the shift corrected time, you need to know how to do it. Either base rating and shift table, or the shift corrected rating.
- Would it be expanded shift adjusted? Expanded shift corrected. Base and shifts available separately. Only lasts for a short period. Becomes invalid quite quickly.
  - Need to check this in the model.
- DB: not sure we covered: corrections file. Correction to the raw stage data. Datum shifts, land shifts etc. Input-output pairs. No specific metadata, but may use extension going forward.
- Simple transforms of data: exclude index velocities; stage fall. RGS46 is the way we need to go, in addition to 45.
  - Can supply the data for chains, but not how to apply them.
- Can pro-rate a shift at a constant rate. Rate of pro-ration is calculated over the period. Shift stops as soon as rating table period stops.
- What to USGS do: query to get your date table, query to get shift tables,
- Shift needs to be tied to specific rating. Conforms to Stu's conceptual model.
  - Although implications for the processing: forward looking, what is the start of the next conversion period
- PT and PS to work through it.
- US scenario: Army corp of engineers: get ratings, potentially gaugings (measurements, site visits), no sections (no formal place online for these). Both moving into Aquarius; all falling in line.
- UK: publication for assessment of quality and metadata analysis. Ratings but no table, but range-values.

-- Main.<a href="PaulSheahan" class="wikilink">PaulSheahan</a> - 03 Oct 2013

- TOPICINFO{author="<a href="PaulSheahan" class="wikilink">PaulSheahan</a>" date="1380843297" format="1.1" version="1"}

<!-- -->

- TOPICPARENT{name="<a href="WaterML2Part2" class="wikilink">WaterML2Part2</a>"}
