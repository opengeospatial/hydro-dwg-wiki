# **<a href="GW2IE" class="wikilink">GW2IE</a> Meeting 24 -- Wed 26 Nov 2014 -- Report**

## **Agenda**

- Technical Issues
  - 'Nucleus' package name: change to "GWML-Main" (Francois)
  - 'Data Record' -- examples online (Francois)
  - Consider proposals (logical model):
    - mandatory properties: (Bruce)
    - Pump: (Eric)
    - well test: (Sylvain, Eric)
    - unit properties: (Eric)
  - other:
    - identify remaining issues (from logical model issues page) (Bruce)

## **Participants**

- Click here for the [Doodle poll](http://doodle.com/x745ezfve989nbpu)

## **Results**

- Technical Issues
  - 'Nucleus' package name: change to "GWML-Main"
    - done
    - add changes to final report (**Francois**)
    - change version to 2.0.1 (**Francois**) -- DONE (F.L 27 nov. 2014)
  - 'Data Record' -- examples online
    - make example consistent with Eric's and add to others on wiki (**Bruce**)
    - add to final report: requirements, conformance classes, instance examples (**Eric**)
  - Namespaces and URIs:
    - change stubs of urls/urns in report to variable (**Eric**)
    - register gwml.org, groundwaterml.org (**Bruce**) \[Done 27/11/14\]
    - gwml.org and groundwaterml.org to be used for resolvable URIs; others continue to use opengis.net
  - Consider proposals (logical model):
    - Mandatory properties:
      - do not alter (override) cardinalities of imported schemas
      - change all cardinalities of GWML2 Logical Model to 0... (**Francois**) -- DONE (F.L. 27 nov. 2014)
      - generate new UML (Logical) 2.1.0 (**Francois**) -- DONE (F.L. 27 NOV. 2014) A 2.0.1 branch was created
      - generate new XSD (Physical) 2.1 (**Francois**) -- DONE (F.L. 28 NOV. 2014)\<br /\>
        - namespace to remain as www.opengis...
        - change domain to gwml.org, groundwaterml.org
      - revise final report (**Francois**)
    - Pump: (**Eric**)
      - defer to next meeting
    - Well test: (**Sylvain**, **Eric**)
      - defer to next meeting
    - Unit properties: (**Eric**)
      - replace coverage example with interleaved variation (**Eric**)
      - Doodle poll to vote on option (**Boyan**)
  - other:
    - identify remaining issues (from logical model issues page) (**Bruce**)
      - collarElevation to be re-considered; see requirements class 9.6 (**Eric**, **Bruce**)
      - Updated [Logical Model Wiki](GWML2-UML-Model) to distinguish resolved and outstanding issues (**Bruce**) \[Done 27/11/14\]

## **Connection Instructions**

- Times:

| Ottawa | Madison | London | Paris | Melbourne     | Auckland      |
|:-------|:--------|:-------|:------|:--------------|:--------------|
| 15:00  | 14:00   | 20:00  | 21:00 | 7:00 next day | 9:00 next day |

- **Screen sharing (Webex):**
  - **\***IMPORTANT-- APPLET MUST BE INSTALLED FIRST:\*****
    - go to <https://pwgsc-nh.webex.com/mw0306ld/mywebex/default.do?siteurl=pwgsc-nh>
    - on the left menu click on **Support**and **Downloads**
    - install **Meeting Center Application**
  - **Meeting Topic:**<a href="GW2IE" class="wikilink">GW2IE</a> Telecon
  - **Meeting Number**: 551 047 979
  - **Meeting Password**: ogc
  - **Meeting** **URL**: click below, then enter name, email, password, and click "**Join Now"**:
    - <https://pwgsc-nh.webex.com/pwgsc-nh/j.php?MTID=mfa0a3ee92664cdb3bdbb9184f9d609fb>

<!-- -->

- **Teleconference:**
  - Dial your local number (see table below) and the use the passcode **167731**

| Line                       | Dial-in \#      | Passcode         |
|:---------------------------|:----------------|:-----------------|
| FreeConferenceCall.com \#2 | +1 209-255-1000 | passcode: 167731 |

\| **<a href="FreeConferenceCall" class="wikilink">FreeConferenceCall</a>.com \#2** \|\|

| Country | Dial-in \# |
|:---|:---|
| Australia\* | 03 867 20100 |
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

- TOPICINFO{author="<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a>" comment="reprev" date="1417208580" format="1.1" reprev="6" version="10"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
