# **<a href="GW2IE" class="wikilink">GW2IE</a> Meeting 24 -- Wed 01 Oct 2014 -- Report**

## **Agenda**

- HDWG / HIC update
- Report update
- Use-case implementation planning

### Issues discussed at informal Sep 18 Meeting

- \<span style="background-color: transparent;"\>Dominic Lowe pointed out some issues regarding schema imports (superfluous import statements). **Action**: Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> will check XSD and fix issues (**%GREEN%Done%ENDCOLOR%**)\</span\>
- \<span style="background-color: transparent;"\>Dominic Lowe also raised concern about nucleus package importing other packages and confusion around naming. **Action**: To be discussed\</span\>
- \<span style="background-color: transparent;"\>'nil' values can be represented different ways, using xsi:nil or using xlink:href (as proposed by OGC 12-110 - spec not adopted): **Decision** : use the xlink:href approach\</span\>
- \<span style="background-color: transparent;"\>Schematron file contains all the expressable rules in a single file for each package. It has been discussed if it was necessary to list rules one by one in the conformance class section instead of just saying "must validate with schematron file" only once (pretty much what we do with XSD). **Decision**: Have a single statement about schematron validation for all tests and add an explanation in the core conformance class.\</span\>
- \<span style="background-color: transparent;"\>Data Record encoding as proposed in the GWML2 spec might be too restrictive for log, some logs can be made of free text instead of Category. We also don't address numerical logs (geophysic). **Action**: Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> will propose more flexible Data Record encoding as example for the group to discuss. (see <a href="GwmlSweDataRecord" class="wikilink">GwmlSweDataRecord</a>) (**%GREEN%Done%ENDCOLOR%**)\</span\>
- \<span style="background-color: transparent;"\>Pump (installed pump) is missing from construction: **Action**: Discuss with group.\</span\>

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 18 Sep 2014

## **Participants**

- Click here for the [Doodle poll](http://doodle.com/x745ezfve989nbpu)

## **Results**

## **Connection Instructions**

- Times:

|  |  |  |  |  |  |  |
|----|----|----|----|----|----|----|
|  | **Ottawa** | **Madison** | **London** | **Paris** | **Melbourne** | **Auckland** |
| **Time** | 8:00 | 7:00 | 1:00 | 2:00 | 22:00 | 23:59 |

- **Screen sharing (Webex):**
  - **\***IMPORTANT-- APPLET MUST BE INSTALLED FIRST:\*****
    - go to <https://pwgsc-nh.webex.com/mw0306ld/mywebex/default.do?siteurl=pwgsc-nh>
    - on the left menu click on **Support**and **Downloads**
    - install **Meeting Center Application**
  - **Meeting Topic:**<a href="GW2IE" class="wikilink">GW2IE</a> Telecon
  - **Meeting Number**: 551 852 914
  - **Meeting Password**: ogc
  - **Meeting** **URL**: click below, then enter name, email, password, and click "**Join Now"**:
    - <https://pwgsc-nh.webex.com/pwgsc-nh/j.php?MTID=mda0aca88acedc2cbaff480a95e127c0f>
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

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="reprev" date="1412169563" format="1.1" reprev="1" version="5"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
