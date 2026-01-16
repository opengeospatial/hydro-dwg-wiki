# **<a href="GW2IE" class="wikilink">GW2IE</a> Meeting 34 -- Tues 17 Mar 2015**

## **Agenda**

- Updated Management Area (Sylvain, Bernhard)
  - [proposal](%PUBURL%/HydrologyDWG/GWML2-UML-Model/GWML2_ManagmentArea_proposal_draft1.docx)
- Aquifer testing documentation (Eric, Sylvain)
  - [document](https://xp-dev.com/svn/gwml2/Documents/GWML2_aquifer_test_extension.docx)
  - [disussion](AquiferTestingDiscussion)
  - question: should it be its own document (extension)? like [WCS](http://www.opengeospatial.org/standards/wcs)
- Domain name update (Jessica)

## **Participants**

- Click here for the [Doodle Poll](http://doodle.com/wqabq6hix6cqpgsu)

## **Results**

- Next Meetings
  - Poll to be circulated re: telecon (**Boyan**)
    - Poll for next meetings:... [click here](http://doodle.com/p88dddaqwnh6vhus)
    - Look into Germany phone line
  - Poll to be circulated re: Sept OGC TC / HDWG attendance (**Boyan**)
    - Poll for attendance at Sept OGC TC (Nottingham) / HDWG (Orleans):... [click here](http://doodle.com/4iynug2va8c4tu42)
- Management Area
  - accept Slyvain's and Bernhard's proposal with the following changes:
    - combine citations into one class, sterotype = 'Type'
      - is a stub for application specific implementation (e.g. INSPIRE)
    - change all cardinalities to optional: profiles to be used for application-specific deviations (e.g. INSPIRE)
    - remove lifespan properties: can be handed by general feature metadata
    - remove gwAreaMetadata: not required
    - move <a href="GW_Licence" class="wikilink">GW_Licence</a> into Well package
  - to do list for <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>:
    - Update definition (**Bruce**)
    - Update UML-LM (**Sylvain**)
    - Update UML-CM(**Boyan**)
    - Update XSD (**Francois**)
    - Update Doc:
      - DIagrams (**Boyan**)
      - Conformance/Requirements classes (**Eric**)
      - Instance Example (with others, in Appendix) (**Sylvain, Bernhard**)
        - contact JRC for recent INSPIRE work
        - demonstrate mapping to INSPIRE in instance example
- AquiferTest
  - to be discussed next meeting

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
  - **Meeting Number**: 554 664 367
  - **Meeting Password**: ogc
  - **Meeting** **URL**: click below, then enter name, email, password, and click "**Join Now"**:
    - <https://pwgsc-nh.webex.com/pwgsc-nh/j.php?MTID=m0fbc2f5fc9f5fe714ecc289fe9896012>

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

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 19 Jan 2015

- TOPICINFO{author="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" comment="reprev" date="1428946678" format="1.1" reprev="6" version="7"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
