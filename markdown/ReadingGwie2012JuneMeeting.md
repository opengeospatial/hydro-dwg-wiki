# Reading GW Workshop minutes

## Scoping discussion

What are the interests of different parties

- **%BLUE%Harmonize OGC/INT'L GW Model%ENDCOLOR%**
  - <span class="twiki-macro BLUE"></span> **GW Use case** <span class="twiki-macro ENDCOLOR"></span>
- **%BLUE%Link to surface water feature and Observation%ENDCOLOR%**
  - **%BLUE%GW/SW use cases%ENDCOLOR%**

RT: INSPIRE aims at being consistent with International standard.

Consensus to work together.

DB : Authoritative model

JJS : INSPIRE must sure they can implement it.

BB: we still have conceptual differences.

Goal for today: come to a plan to address those issues

After lunch: concrete step to decide what to do.

Strategies : define use cases and discuss conceptual differences.

Main UC: share GW data between agency. INSPIRE is basic infrastructure to be extended to specific use (core entities), GWML is more scientific (geology)

BW: Important UC is propagating data to public.

DB: Need central model for federating.

RT,BB: Difference between clients (user, statistician, science, policies)

BB: Group of people need more detailed, while other need details. Must determine

BB: what is the scope, data exchange, data delivery and reporting (summary).

RA: What is the governance ? WMO ?

RA: What aspect is naming (and having convention about identifying things)

PS demands clarification about "reporting".

BB For some UC, only a small set is of interest. Example : national reporting -\> aquifer summary: recharge, dischage only. Fewer features in reporting scenarii

Looking at BW ppt.

TN: INSPIRE was connection between Geology and Hydrology. Suggests that we bring in more experts (IAH).

BB,DB: Themes \* <span class="twiki-macro BLUE"></span> **Rock system** <span class="twiki-macro ENDCOLOR"></span> \* <span class="twiki-macro BLUE"></span> **Groundwater System (water dynamic, flows, etc.)** <span class="twiki-macro ENDCOLOR"></span> \* <span class="twiki-macro BLUE"></span> **Wells and abstraction artefacts** <span class="twiki-macro ENDCOLOR"></span> \* <span class="twiki-macro BLUE"></span> **Related Observations** <span class="twiki-macro ENDCOLOR"></span> \* <span class="twiki-macro BLUE"></span> **Water budget (Recharge and Discharge)Reservoirs** <span class="twiki-macro ENDCOLOR"></span>

- Total water budget and subsurface flows (inter aquifers) \* \* <span class="twiki-macro BLUE"></span> **Water Body (quality, volume of material). Piezometric surface is a property of Water Body** <span class="twiki-macro ENDCOLOR"></span> \* <span class="twiki-macro BLUE"></span> **Water management units** <span class="twiki-macro ENDCOLOR"></span>

BB: For strictly environmental reason, Water Budget, Economic reasons : Reservoir

BW: Water budget fits to hydrologic model in INSPIRE.

TN: Connect GW and Surface water to prepare a budget.

BB: two aspect - flow from surface to subsurface. What about one aquifer to another ? Where is this handled in INSPIRE ?

BB: Next question . Do we want to include everything ?

SC: Whatever you do, modularize alongs those scopes.

PS: What about reporting unit (non physical limits)

BB: Do we model all of modularise. Figure out what are the main packaging.

DB: Water budget not in a HG specific.

RA : <a href="WaterML" class="wikilink">WaterML</a> profile ?

BB: Priority on wich one are core. Discuss now or later.

PS: relates to use case.

DB : defer, defer

RA: Capture the use cases to drive the modules.

BB: next step is to define use cases.

## Conceptual issues

<span class="twiki-macro BLUE"></span> **Open issue about <a href="GeologicUnit" class="wikilink">GeologicUnit</a>** <span class="twiki-macro ENDCOLOR"></span>

Different organisation for <a href="AquiferSystem" class="wikilink">AquiferSystem</a>, but semantically the same

Some conceptual differences for <a href="GroundwaterBody" class="wikilink">GroundwaterBody</a> between <a href="HY_Feature" class="wikilink">HY_Feature</a> and GWML

Wells are O&M support of observation for GWML while INSPIRE have a link to INSPIRE monitoring model.

<span class="twiki-macro BLUE"></span> **INSPIRE division along active and inactive make lots of sense because of the impact on gw flow.** <span class="twiki-macro ENDCOLOR"></span>

Well in <a href="HY_Feature" class="wikilink">HY_Feature</a> is more closely related to INSPIRE concept of a well.

JM: Lots of properties from <a href="GeologicUnit" class="wikilink">GeologicUnit</a> are not necessary for <a href="HydroGeologicUnit" class="wikilink">HydroGeologicUnit</a> and did not want to bring all this extra properties

BB: lots of <a href="GeologicUnit" class="wikilink">GeologicUnit</a> are not mandatory

JL: INSPIRE version of <a href="GeologicUnit" class="wikilink">GeologicUnit</a> is much simplified

BB: Need a deeper discussion of address this issue.

TN: Longer discussion needed but Skype is bad.

DB: support for borehole is a big requirement. overlap between hydrogeology and geology is very close in borehole context.

RT: different understanding of <a href="GeoSciML" class="wikilink">GeoSciML</a>.

SC: <a href="GeoSciML" class="wikilink">GeoSciML</a> requires a lot of rationalisation, even from geologists.

RT: maybe clarify the definition of what is a <a href="GeologicUnit" class="wikilink">GeologicUnit</a>

JL: The issue of excessive properties in <a href="GeoSciML" class="wikilink">GeoSciML</a> is not as pressing in INSPIRE since the model is simplified.

## Next steps

General agreement to proceed under OGC, we need to draf a document (a proposal to do this work under OGC under the Experiment venue with the goal to come to a specification).

People interested to bring all those aspect under a single model under OGC.

RT: yes. INSPIRE should be based on global standard and not create a "competing" model. Organisally wide ,JRC involment will be clarified

BW: same, good oppotunity to bring.

EB: obvious need for transborder

PS: interested as an observer.

SC: supportive. Since <a href="GeoSciML" class="wikilink">GeoSciML</a> and this initiative will be under OGC. Will look at package

DB: on board. need as common as possible with Canada, and within states. Mission critical for full monitoring network

JJS: yes, BRGM is interest, would involve Hydrogeologist.

BGS: keen in INSPIRE conformance. like to have hydrogeologist involved

ID: WMO support. willing to provide sampled feature and linkage to surface water.

BB: need to do this for mission critical context.

TN: Best solution to connect to global standard. fully agree

JM: Yes, of course. Hope to participate to global. But university not part of OGC, work done under Polish Association for Spatial Information.

Can this work can be carried by non-OGC members.

SC: OGC membership is 500\$. Local government 200\$

TN: speak with IAH to seek interest.

**%BLUE%Draft GWIE 2 document%ENDCOLOR%**

**%BLUE%Need dates and clarification. When clarification,%ENDCOLOR%**

**%BLUE%Process is IE -\> Eng. report -\> RFC -\> SWIG (not if no comment)%ENDCOLOR%**

**%BLUE%target 1yr, so end at September 1st. 2013 (to be confirmed)%ENDCOLOR%**

**%BLUE%Finalise document by August 1st%ENDCOLOR%**

**%BLUE%Start activities in September 2012%ENDCOLOR%**

**%BLUE%(some face to face and regular remote meetings)%ENDCOLOR%**

**%BLUE%more participant can join (contact Boyan Brodaric)%ENDCOLOR%**

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 28 Jun 2012

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="reprev" date="1340893633" format="1.1" reprev="2" version="2"}

<!-- -->

- TOPICPARENT{name="28June2012--<a href="ReadingWorkshop" class="wikilink">ReadingWorkshop</a>"}
