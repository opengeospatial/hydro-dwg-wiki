# **<a href="GW2IE" class="wikilink">GW2IE</a> Meeting 24 -- Wed 12 Nov 2014 -- Report**

# Start Time = 7:00 Ottawa (see connection instructions below)

## **Agenda**

- Meeting start time shift
  - new poll re: start times (to begin Nov 26): [vote here](http://doodle.com/vwt6vkqmc5pdagda)
    - before voting review options listed next
  - possible start time options:

| Ottawa | Madison | London | Paris | Melbourne     | Auckland      |
|:-------|:--------|:-------|:------|:--------------|:--------------|
| 8:00   | 7:00    | 13:00  | 14:00 | 23:59         | 2:00 next day |
| 7:00   | 6:00    | 12:00  | 13:00 | 23:00         | 1:00 next day |
| 14:00  | 13:00   | 19:00  | 20:00 | 6:00 next day | 8:00 next day |
| 15:00  | 14:00   | 20:00  | 21:00 | 7:00 next day | 9:00 next day |

- Technical Issues
  - 'Nucleus' package name
    - name change update (GWML2-Main): Francois DONE (FL)\<br /\>
      - Required changes (nucleous to main) applied to the UML model (including tagged values)
      - Required changes applied to the schemas files (xsd)
      - Schema validated using XMLSpy
  - 'Data Record'
    - online posting update: Francois
  - mandatory properties:
    - new poll: [vote here](http://doodle.com/yaskf6fzh7tvcstp)
      - Keep mandatory: forces data provider to serialize all properties
      - Change to optional: allows data provider to serialize any subset
  - add Pump to construction class:
    - evaluate proposal: Eric
  - add well test:
    - evaluate proposal: Sylvain
  - unit properties:
    - Bruce: current model suffices if every value considered to occur in a different fluid body part
      - pros: low-effort, solved without model changes
      - cons: clunky, not typical usage, bundled (as UnitFluidProperty as a whole)
      - Examples of possible encodings: <a href="GwmlDistributedValues" class="wikilink">GwmlDistributedValues</a> (added multiple observation - <a href="SF_SpatialSamplingFeature" class="wikilink">SF_SpatialSamplingFeature</a> pattern ) -- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 12 Nov 2014
  - other:
    - change strategy
    - FluidBody = liquid and/or **gas**?

## **Participants**

- Click here for the [Doodle poll](http://doodle.com/x745ezfve989nbpu)

## **Results**

- **New meeting start time: 15:00 Ottawa**
  - Please note: meetings will start next day (Thurs) in Melbourne and Auckland

| Ottawa | Madison | London | Paris | Melbourne     | Auckland      |
|:-------|:--------|:-------|:------|:--------------|:--------------|
| 15:00  | 14:00   | 20:00  | 21:00 | 7:00 next day | 9:00 next day |

- Technical Issues
  - 'Nucleus' package name: change to "GWML-Main"
    - to be completed by next meeting (Francois)
  - 'Data Record' -- post examples online
    - to be completed by next meeting (Francois)
  - mandatory properties:
    - change to optional : [see poll](http://doodle.com/yaskf6fzh7tvcstp)
    - circulate proposal for changes, for next meeting (**Bruce**)
  - add Pump to construction class:
    - proposal to be completed for next meeting (**Eric**)
  - add well test:
    - option 1 selected:
      - no model change--use link to HydroGeounit from well, add wellTest as subclass of <a href="OM_Process" class="wikilink">OM_Process</a>
      - post additional well test parameters to wiki page created by **Sylvain** (**Peter, Jessica**)
      - option 1 proposal enhanced for final consideration next meeting (**Sylvain, Eric**)
  - unit properties:
    - two proposals to be completed for evaluation next meeting (**Eric**)
      - no model change, use <a href="Sampling_Site" class="wikilink">Sampling_Site</a> for location of property measurements
      - use Coverage to model multiple unit properties
  - other:
    - Confirmed: FluidBody has Liquid or Gas as either major or minor constituent
    - Schedule:
      - Jan-Mar (2015)... implementation (testing)
      - \<span style="background-color: transparent;"\>Mar- (2015).... revision of model and documentation\</span\>

## **Connection Instructions**

- Times:

|  |  |  |  |  |  |  |
|----|----|----|----|----|----|----|
|  | **Ottawa** | **Madison** | **London** | **Paris** | **Melbourne** | **Auckland** |
| **Nov 12** | 7:00 | 6:00 | 12:00 | 13:00 | 23:00 | 1:00 Nov 13 |

- **Screen sharing (Webex):**
  - **\***IMPORTANT-- APPLET MUST BE INSTALLED FIRST:\*****
    - go to <https://pwgsc-nh.webex.com/mw0306ld/mywebex/default.do?siteurl=pwgsc-nh>
    - on the left menu click on **Support**and **Downloads**
    - install **Meeting Center Application**
  - **Meeting Topic:**<a href="GW2IE" class="wikilink">GW2IE</a> Telecon
  - **Meeting Number**: 552 663 294
  - **Meeting Password**: ogc
  - **Meeting** **URL**: click below, then enter name, email, password, and click "**Join Now"**:
    - <https://pwgsc-nh.webex.com/pwgsc-nh/j.php?MTID=m1a5649b3d95fd49e8ebcf1d6683b9c6c>

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

-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 12 Nov 2014

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="reprev" date="1415820680" format="1.1" reprev="5" version="6"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
