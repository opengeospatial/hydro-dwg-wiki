# **<a href="GW2IE" class="wikilink">GW2IE</a> Meeting 16** **-- Wed 16 Apr 2014 -- Conceptual Model**

## **Agenda**

- Welcome
- OGC status update
- Work Items
  - Conceptual model development
    - metadata attributes (review changes)
    - names (review changes)
    - fluid body constituents (review draft)
    - INSPIRE compatibility (update)
    - flow systems

## **Participants**

- Click here for the [Doodle poll](http://doodle.com/c9iuua4idgmsgiek)

## **Results**

- Fluid Body:
  - added abstract <a href="GW_Constituent" class="wikilink">GW_Constituent</a>, with Material, Chemical, Biologic specializations
  - moved gwMixture to association class, to denote how a constituent composes a fluid body (e.g. solution, suspension, emulsion, precipitate)
  - added <a href="GW_ConstituentRelation" class="wikilink">GW_ConstituentRelation</a>, to denote relations between constituents, e.g. clay coating silt, clay composed of clay minerals, etc.
    - has properties for relation type and mechanism causing the relation, e.g. adsorption, etc.
  - added gwState, to denote the physical state e.g. solid, liquid, gas
- Flow
  - moved <a href="GW_InFlow" class="wikilink">GW_InFlow</a> and <a href="GW_OutFlow" class="wikilink">GW_OutFlow</a> to specialize <a href="GW_InterFlow" class="wikilink">GW_InterFlow</a>
    - recognizes that one of the in/out containers is not mandatory, e.g. the destination (not source) container is needed for inflow
  - relations to <a href="GW_Flow" class="wikilink">GW_Flow</a>
    - remains as homework -- see <a href="CM_0" class="wikilink">CM_0</a>.29 meeting 16 revisions (page 3) for summary and comments/questions

## **Connection Instructions**

- Times:

|              |                 |                 |                 |                 |
|--------------|-----------------|-----------------|-----------------|-----------------|
|              | **17 Mar 2014** | **03 Apr 2014** | **16 Apr 2014** | **23 Apr 2014** |
| **NA-Ott**   | 08:00           | 08:00           | 08:00           | 08:00           |
| **NA-WI**    | 07:00           | 07:00           | 07:00           | 07:00           |
| **EU-Lon**   | 12:00           | 13:00           | 13:00           | 13:00           |
| **EU-Paris** | 13:00           | 14:00           | 14:00           | 14:00           |
| **AU-Mel**   | 23:00           | 23:00           | 22:00           | 22:00           |
| **NZ**       | 01:00           | 01:00           | 00:00           | 00:00           |

- **Screen sharing (Webex):**
  - **\***IMPORTANT-- APPLET MUST BE INSTALLED FIRST:\*****
    - go to <https://pwgsc-nh.webex.com/mw0306ld/mywebex/default.do?siteurl=pwgsc-nh>
    - on the left menu click on **Support**and **Downloads**
    - install **Meeting Center Application**
  - **Meeting Topic:**<a href="GW2IE" class="wikilink">GW2IE</a> Telecon
  - **Meeting Number**: 555 739 812
  - **Meeting Password**: ogc
  - **Meeting** **URL**: click below, then enter name, email, password, and click "**Join Now"**:
    - <https://pwgsc-nh.webex.com/pwgsc-nh/j.php?MTID=m18ac82e93fcf366c433608ff99c85d4a>
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

- TOPICINFO{author="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" comment="reprev" date="1397666252" format="1.1" reprev="1" version="4"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
