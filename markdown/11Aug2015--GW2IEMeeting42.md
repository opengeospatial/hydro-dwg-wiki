# **<a href="GW2IE" class="wikilink">GW2IE</a> Meeting 42 -- Tues 11 August 2015**

## **Agenda**

- Meetings update:
  - OGC TC Sept Nottingham / HDWG Orleans
    - RDA registration fee?
- Server update:
  - www.gwml.org, www.groundwaterml.org, www.resource.gwml.org
- Schema update
  - Model issue: association classes in logical model / schema
- Instances update
- Report update:
  - Conceptual / logical model: see list below
  - Requirements / conformance classes: see list below
  - Use-cases
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

## **Results**

- Meetings update:
  - OGC TC Sept Nottingham / HDWG Orleans: RDA registration fee waiver for guests? (**Sylvain**)
- Server update: done
- Schema update: done
- Instances update: done except the following deferred to SWG:
  - <a href="GW_ConstituentRelation" class="wikilink">GW_ConstituentRelation</a>, <a href="GW_DIvide" class="wikilink">GW_DIvide</a>, <a href="GW_FluidBodyProperty" class="wikilink">GW_FluidBodyProperty</a>, <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>, <a href="GW_" class="wikilink">GW_</a>(Unit/Void)Vulnerability
- Report update:
  - Conceptual / logical model: see list below
  - Requirements / conformance classes: see list below
  - Use-cases
    - Separate docs on SVN to be created for each use case (**Sylvain**)
- Timeline check
  - Aug 17: all sections complete except use-cases; start review of requirements & conformance classes (**Sylvain**)
  - Aug 25: all sections complete; start final review
  - Sept 1: public release

## Conceptual and Logical model documentation issues

- P 9: GeoSciML version----leave as 3.2
- P 19: ANS: full name---removed
- P 21: URL for requirement tests---replace with reference to Annex A (requirements)
- P 65: missing dependency (AquiferTest---WaterML2)---not needed
- P75: missing def: bholeCoreInterval: <a href="GM_Envelope" class="wikilink">GM_Envelope</a>\[0…\*\]---done
- P78, 85: missing def: casingSlit association---to be supplied (**Eric**)--done
- P78, 85: missing def: casingLeft association---to be supplied (**Eric**)--done
- P 98: References:---to be supplied (**Francois**)
  - \[1\] Lohman et al 1972
  - \[2\] ASCE, 1985
  - \[3\] IGH0556
  - \[4\] IGH1379
  - \[5\] Heath 1983
  - \[6\] ANS, 1980

## Requirements and Conformance Issues

- 9.1.3 Clarify HTTP URI meaning (Any HTTP URI or Open Linked Data HTTP URI)
  - issue. parametrised HTTP URI (<http://resource.gwml.org/voc?term=x&lang=f&f=RDF>) cannot be used as an identifier string (parameter order can change) - so can hardly be used as a token in a query
  - RESOLVED: LOD approach to be sued
- 9.2.1. HTTP URN to identify geologicUnitType. Extend <a href="GeoSciML" class="wikilink">GeoSciML</a> vocab instead of having our own vocab. Also, version number of vocab versus version number of spec (should they change at each revision of the spec ?) \* RESOLVED: use Hydrogeological Unit from <a href="GeoSciML" class="wikilink">GeoSciML</a> if available, otherwise use another <a href="GeoSciML" class="wikilink">GeoSciML</a> term or unknown
- 9.3 Issue raised by Sylvain . Linking OM <a href="FeatureOfInterest" class="wikilink">FeatureOfInterest</a> to constituent (maybe the issue was just naming the constituent 'Arsenic' ?) - more logical to have foi being the sample itself (so, the <a href="SamplingFeature" class="wikilink">SamplingFeature</a>). \* RESOLVED: documentation to be updated for O&M encoding; larger issue deferred to SWG;
- Offline discussion:
  - 9.8 (/req/gwml2-well-gu/log-category) how to name observedProperty (use the identifier of the clause to document the intend or use the identifier of a formal swe definition of the property - I've used the former for <a href="NamedValue" class="wikilink">NamedValue</a> - not sure about the rest)
  - 10.5 (/req/xsd-gwml-well/waterwell-CRS-uom) : it says that the uom of the CRS of the elevation must match the uom of the shape. Isn't the unit part of the CRS definition (and then clause 10.5.1 saying that Z CRS of elevation must match Z of shape saying the same thing ?) (ditto monitoring)
  - 10.8 (/req/xsd-gwml-well-gu/log-category and /req/xsd-gwml-well-gu/log-observed-property) : Requires these both to be "<http://resource.gwml.org/def/gwml/2.0/observedProperty/geologicunit>" How do we specify the geologicUnitType?
    - RESOLVED: see above
  - /conf/gwml2-core/observed-property (A.2.1) : Says that all Observation's observedProperty must be GWML 2.1 properties. (I don't think I wrote this because I always been against the idea in O&M). It's a conformance test but there are no requirement matching it.
  - /req/gwml2-core listed in conformance classes (while not in requirement) - discussions started by email : needs conclusion.
  - No requirements for <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> in either Section 9 or 10. -- done
    - DocumentCitation to be removed (**Boyan**)
    - document role to be added to <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> as have datatype = <a href="AnyType" class="wikilink">AnyType</a> (**Boyan**)
    - report update (**Boyan**)
    - logical UML update (**Francois**)
    - schema update (**Eric**) -- done

## **Participants**

- Click here for the [Doodle Poll](http://doodle.com/s57cqeksr2ndgrge)

## **Connection Instructions**

| Ottawa | Madison | London | Paris | Melbourne | Auckland |
|:-------|:--------|:-------|:------|:----------|:---------|
| 8:00   | 7:00    | 13:00  | 14:00 | 22:00     | 23:59    |

- Screen sharing (Webex):
  - pass: ogc
  - url: <https://pwgsc-nh.webex.com/pwgsc-nh/j.php?MTID=mdae70f1c4c50b5f02da893cdcb2c8665>

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

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="reprev" date="1439396069" format="1.1" reprev="8" version="9"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
