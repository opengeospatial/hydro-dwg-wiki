# **<a href="GW2IE" class="wikilink">GW2IE</a> Meeting 41 -- Thurs 30 July 2015**

## **Agenda**

- Meetings update:
  - OGC TC Sept Nottingham:
    - HDWG session Thurs 17 Sept 2015
    - SWG proposal: TC Plenary (Thurs 17 Sept 2015)
- Server update
  - Static page active (www.gwml.org)
  - www.resource.gwml.org to be implemented
- Schema update
  - Logical schema: missing defs
  - Model issue
    - Chemical results are modelled as Observations with <a href="GW_Constituent" class="wikilink">GW_Constituent</a> as featureOfInterest. But constituent don't have navigable link back to <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>, therfore a chemical result cannot point back to <a href="FluidBody" class="wikilink">FluidBody</a> (unless it goes directly to <a href="FluidBody" class="wikilink">FluidBody</a>, missing the constituent). Looks like it's <a href="SamplingFeature" class="wikilink">SamplingFeature</a> all over again.
    - <a href="GW_UnitFluidProperty" class="wikilink">GW_UnitFluidProperty</a> and <a href="GW_UnitVoidProperty" class="wikilink">GW_UnitVoidProperty</a> : force 1..1 because association with a missing end does not make sense or 0..1 to follow the blanket rule of all optional ?
- Instances update (\*All)
  - namespaces: end char? (/ \#)
- Report update:
  - Conceptual / logical model
  - Requirements / conformance classes
  - Use-case template
- Use-case roundtable
- Timeline check
- <a href="HY_Features" class="wikilink">HY_Features</a> groundwater

## **Participants**

- Click here for the [Doodle Poll](http://doodle.com/s57cqeksr2ndgrge)

## **Results**

- Meetings update:
  - OGC TC Sept Nottingham:
    - HDWG session (Thurs 17 Sept 2015, am) -- setup vote to approve GW SWG (**Boyan**)
    - SWG proposal: TC Plenary (Thurs 17 Sept 2015, pm)
- Server update: (**Jessica**)
  - www.groundwaterml.org: to be implemented asap, re-direct to www.gwml.org
  - www.resource.gwml.org: to be implemented, long-term
- Schema update
  - Logical schema: missing defs -- deferred until Sept.
  - Model issue
    - Chemical result cannot point back to <a href="FluidBody" class="wikilink">FluidBody</a>: no schema change needed, will use O&M and document in report (**Eric**).
    - Association classes: 1:1 cardinality at ends, but can refer to unknown entity
- Instances update (\*All)
  - namespaces: end char? (/ \#): deferred to GW SWG.
- Report update:
  - Conceptual / logical model: draft report ready.
  - Requirements / conformance classes: to be completed by next meeting.
  - Use-case template: proposal accepted (as per latest draft report)
- Timeline check
  - Aug 6:
    - review complete: sections 1-8 (**Jessica**, **Peter**, others)
  - Aug 11 (next meeting):
    - final draft complete: sections 1-8 (**Boyan**)
    - draft complete: sections 9-10-A (**Eric**, **Bruce**)
  - Aug 17:
    - review complete: sections 9-10-A (**Alex**, **Sylvain**)
  - Aug 25 (last meeting):
    - final draft complete: sections 9-10-A (**Eric**, **Bruce**)
    - final draft complete: section B, use-cases (Leads 1-5: **Eric**, **Sylvain**, **Peter**, **Jessica**, **Sylvain**)
  - Sept 1:
    - public release
- <a href="HY_Features" class="wikilink">HY_Features</a> groundwater: to continue mapping for Sept

## **Connection Instructions**

| Ottawa | Madison | London | Paris | Melbourne | Auckland |
|:-------|:--------|:-------|:------|:----------|:---------|
| 8:00   | 7:00    | 13:00  | 14:00 | 22:00     | 23:59    |

- Screen sharing (Webex):
  - pass: ogc
  - url: <https://pwgsc-nh.webex.com/pwgsc-nh/j.php?MTID=mc1f39aa86f9d0a69df80c65fe67e4842>

<!-- -->

- Teleconference:
  - Dial local number (see below) and passcode = **616269**

| Country        | Conference Number     |
|:---------------|:----------------------|
| Australia      | +61 (0) 3 8672 0180   |
| Austria        | +43 (0) 1 2650500     |
| Belgium        | +32 (0) 3 294 11 60   |
| Canada         | +1 559-546-1300       |
| France         | +33 (0) 1 80 14 11 00 |
| Germany        | +49 (0) 228 5343020   |
| Italy          | +39 055 464 0570      |
| Netherlands    | +31 (0) 20 322 3000   |
| Poland         | +48 22 116 80 20      |
| United Kingdom | +44 (0) 330 606 0182  |
| United States  | +1 760-569-7100       |

- TOPICINFO{author="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" comment="save topic" date="1438270613" format="1.1" reprev="3" version="6"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
