# **<a href="GW2IE" class="wikilink">GW2IE</a> Meeting 24 -- Wed 29 Oct 2014 -- Report**

## **Agenda**

- General update
  - AGU 2014
    - [Abstract](https://agu.confex.com/agu/fm14/preliminaryview.cgi/Paper30183)
  - Meeting start time shift
    - begin 1 hour earlier than below **starting Nov**: [vote here](http://doodle.com/vhe7ccc2irmkcy9k)
  - OGC approval process for GW2IE Report
    - can be approved anytime following post to pending docs, 3 week review, and poll of OGC TC and PC by Carl Reed
- Technical Issues
  - 'Nucleaus' package name: [vote here](http://doodle.com/y5278vv4bdce64t7)
  - 'Data Record' [proposed](GwmlSweDataRecord) encoding: [vote here](http://doodle.com/ihzp7q4793rhuitu)
  - add Pump entity: [vote here](http://doodle.com/kw7ct42yiv6b428a)
  - mandatory properties: eliminate ?
    - effect: data providers can serialize only those properties that contain data
  - unit properties: change to \[0...\*\] ?
    - to allow for non-synoptic properties i.e distributed spatially throughout the unit (permeability, transmissivity, etc.) (see proposal <a href="GwmlDistributedValues" class="wikilink">GwmlDistributedValues</a>)
    - synoptic (summary) properties identified by lack of location in the observation / measurement
- Report Update
- Use-case Update

## **Participants**

- Click here for the [Doodle poll](http://doodle.com/x745ezfve989nbpu)

## **Results**

- Meeting start time shift
  - begin 1 hour earlier on Nov 12 (see times below)
  - new poll for start times (morning AU-NZ, aft NA, evening EU)
- Technical Issues
  - 'Nucleaus' package name
    - Renamed: package to "GWML2-Main"
    - Francois to propagate changes to logical model, XML schema; instances to be adjusted by creators
    - Unchanged: package namespace (gwml2)
  - 'Data Record'
    - Accepted [proposed encoding](GwmlSweDataRecord)
    - Francois to propose solution to put online Data Record definitions
  - add Pump entity:
    - To be added: pump device to construction class
      - Proposal to be drafted for next meeting: ideas/examples to be sent to Eric (lead)
      - Possible attributes include: pump type (from vocab), pump model (free text), pump purpose (well test, other), capacity,...
    - To be added: well test class (procedure/process for conducting a pumping test)
      - Proposal to be drafted for next meeting: ideas/examples to be sent to Sylvain (lead)
      - Contains: inputs, results, methods, times
      - Potentially model as subclass of <a href="OM_Observation" class="wikilink">OM_Observation</a> or <a href="OM_Process" class="wikilink">OM_Process</a>; results as <a href="GW_FluidProperties" class="wikilink">GW_FluidProperties</a>.
      - Add as attribute to Well (to directly link a well test to a well... as a convenient short-cut)
  - mandatory properties: eliminate ?
    - new poll to be created
    - to be finalized next meeting
  - unit properties: change to \[0...\*\] ?
    - Bruce: current model suffices if every value considered to occur in a different fluid body part
      - pros: low-effort, solved without model changes
      - cons: clunky, not typical usage, bundled (as UnitFluidProperty as a whole)
  - need to discuss:
    - change strategy
    - FluidBody = liquid and/or **gas**?

## **Connection Instructions**

- Times:

|  |  |  |  |  |  |  |
|----|----|----|----|----|----|----|
|  | **Ottawa** | **Madison** | **London** | **Paris** | **Melbourne** | **Auckland** |
| **Oct 16** | 8:00 | 7:00 | 13:00 | 14:00 | 23:00 | 1:00 Oct 17 |
| **Oct 29** | 8:00 | 7:00 | 12:00 | 13:00 | 23:00 | 1:00 Oct 30 |
| **Nov 12** | 7:00 | 6:00 | 12:00 | 13:00 | 23:00 | 1:00 Nov 13 |
| **Nov 26** | ?? | ?? | ?? | ?? | ?? | ?? |
| **Dec 10** | ?? | ?? | ?? | ?? | ?? | ?? |

- **Screen sharing (Webex):**
  - **\***IMPORTANT-- APPLET MUST BE INSTALLED FIRST:\*****
    - go to <https://pwgsc-nh.webex.com/mw0306ld/mywebex/default.do?siteurl=pwgsc-nh>
    - on the left menu click on **Support**and **Downloads**
    - install **Meeting Center Application**
  - **Meeting Topic:**<a href="GW2IE" class="wikilink">GW2IE</a> Telecon
  - **Meeting Number**: 559 973 940
  - **Meeting Password**: ogc
  - **Meeting** **URL**: click below, then enter name, email, password, and click "**Join Now"**:
    - <https://pwgsc-nh.webex.com/pwgsc-nh/j.php?MTID=m26a075754e96e6e2355a0d444c56838b>

<!-- -->

- **Teleconference:**
  - Dial your local number (see table below) and the use the passcode **167731**

| Line                       | Dial-in \#      | Passcode         |
|:---------------------------|:----------------|:-----------------|
| FreeConferenceCall.com \#2 | +1 209-255-1000 | passcode: 167731 |

\| **<a href="FreeConferenceCall" class="wikilink">FreeConferenceCall</a>.com \#2** \|\|

| Country | Dial-in \# |
|:---|:---|
| Australia\* | +61 1300 051 796 |
| Austria | +43 (0) 1 2650551 |
| Belgium | +32 (0) 4 244 10 75 |
| Brazil | +55 21 2391-7690 |
| Bulgaria | +359 (0) 2 437 2631 |
| Canada**\*** | +1 559-670-1000 |
| Croatia | +385 (0) 1 8000 060 |
| Czech Republic | +420 225 989 155 |
| Denmark | +45 78 77 25 20 |
| Finland | +358 (0) 9 74790024 |
| France | +33 (0) 1 80 14 00 05 |
| GCC/Arabian Peninsula****\*** \| +973 1656 8350 \| \| Germany \| +49 (0) 9772 316000 \| \| Hungary \| +36 1 987 6880 \| \| Ireland \| +353 (0) 90 646 4160 \| \| Israel \| +972 (0) 76-599-0060 \| \| Italy \| +39 (0) 011 092 0915 \| \| Japan \| +81 (0) 3-5050-5100 \| \| Korea \| +82 (0) 70-7917-6590 \| \| Malaysia \| +60 (0) 11-1146 0060 \| \| Mexico \| +52 (0) 899 274 8400 \| \| Netherlands \| +31 (0) 20 322 3050 \| \| Norway \| +47 21 93 06 41 \| \| Poland \| +48 22 116 85 40 \| \| Portugal \| +351 210 051 182 \| \| Romania \| +40 (0) 31 780 7050 \| \| Slovenia \| +386 (0) 1 828 02 40 \| \| South Africa \| +27 (0) 87 825 0150 \| \| Spain \| +34 911 19 67 50 \| \| Sweden \| +46 (0) 8 124 107 00 \| \| Switzerland \| +41 (0) 44 595 90 80 \| \| Turkey \| +90 (0) 212 988 1710 \| \| United Kingdom\*** | +44 (0) 7848 432913 |
| United States | +1 209-255-1000 |

\* NOTE Australia: This number is not accessible when calling from outside of Australia.

\*\* NOTE UK: this is a mobile dial-in number. Please check with your phone provider for mobile calling rates.

****\***** NOTE CANADA: This is a U.S. dial in number.

\*\*\*\*This dial-in number is located in Bahrain.

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 17 Sep 2014

- TOPICINFO{author="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" comment="reprev" date="1414597941" format="1.1" reprev="8" version="8"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
