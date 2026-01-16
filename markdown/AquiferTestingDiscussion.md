# Aquifer Testing Discussion

We tried to see if we could implement the aquifer test (or pump test) in a pure O&M encoding. There are several requirements that need to be considered

- \<span style="background-color: transparent;"\>Test can involve more than one Well/Bore\</span\>
- \<span style="background-color: transparent;"\>Test generate intermediate data (drawdown curves) from which other parameters are derived \</span\>
- \<span style="background-color: transparent;"\>Some data are related to the process itself (discharge of the pump, interval of the test)\</span\>
- The parameters that are infered from the test must be somehow related to <a href="GW_UnitFluidProperty" class="wikilink">GW_UnitFluidProperty</a>, which is itself an association between a unit and the fluid body

Our first iteration gave this - it's **not** a model, it's a O&M pattern for aquifer testing.

- aquifertesting.png: \<br /\> \<img alt="aquifertesting.png" height="1038" src="%ATTACHURLPATH%/aquifertesting.png" width="1238" /\>

The aquifer test is modelled around a series of interelated Observations (<a href="OM_Observation" class="wikilink">OM_Observation</a> can be connected to each others using relatedObservation with roles. By defining a vocabulary of roles we can connect drawdown curves and their interpreted values (and vice-versa). Wells can also be organised in a network (if required) using <a href="SamplingComplex" class="wikilink">SamplingComplex</a> that can link wells together. Processes provide the data about the test itself, the Process onj the observation well would document how the water elevation were measures, while the Pumping well could document other variables (such as pump discharge).

As discussed, the process should document the properties of the pump (or pumping) that is relevant to the test (and not the pump itself), unless it's a proxy for a pumping parameters. We still have to deal with "well known procedure" which is just a name and detailed procedure where parameters of the procedure are important. The process variable could be described using <a href="SensorML" class="wikilink">SensorML</a> or \*FL, or Metadata, or, alternatively directly in Observation's <a href="NamedValues" class="wikilink">NamedValues</a>

|  |  |  |
|----|----|----|
| Model | Pro | Con |
| <a href="SensorML" class="wikilink">SensorML</a> | formal, no need to develop something | complex |
| \*FL | eleguant approach (ex-factory + dynamic) | not standard, about Sensor (bit streched) - see below |
| <a href="NamedValue" class="wikilink">NamedValue</a> | Simple | ad hoc overload of Observation parameters |
| Custom (develop our own) | No ambiguity, more constrained semantic | world of its own that it might be futile to attemp to define every possible cases |

<a href="NamedValue" class="wikilink">NamedValue</a>, although we tend to think is a way to attach a single value to an observation, it not limited (which is good or bad -because we can come up with our own unsuspected pattern that only make sense for GWML). But <a href="NamedValue" class="wikilink">NamedValue</a> CAN contain a full <a href="DataRecord" class="wikilink">DataRecord</a>, or any other SWE data structure we can think of.

In this pattern, we don't have a class that bundles the "aquifer test", it's a group of interconnected feature. One way to bundle a complete test is to use a single <a href="SamplingFeature" class="wikilink">SamplingFeature</a> (or a subtype) to represent the whole aquifer test (to be discussed)

- Aquifer Test: \<br /\> \<img alt="<a href="TestEvent" class="wikilink">TestEvent</a>.png" height="663" src="%ATTACHURLPATH%/<a href="TestEvent" class="wikilink">TestEvent</a>.png" width="762" /\>

encoded instance base on Peters's example

<https://xp-dev.com/svn/gwml2/Documents/instance/pumptest.xml>

The instance is organised as in the diagram below. Wells themselves were not encoded as they should technically be in some data store as external resources. The wells do not have a link back to the test (as it's normally modelled in O&M where the feature of interests don't 'know' about the observation made about them. It also allow the same well to play different roles in different test as the roles are assigned (scoped) by the test itself.

\<img alt="layout_pump_test.png" height="720" src="%ATTACHURLPATH%/layout_pump_test.png" width="960" /\>

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 24 Feb 2015

## Pump

Although "Pump" is an important part of the aquifer test, the real piece of information is the pumping (rate, method, etc..), not the device because there is a difference between a device capacity and its actual performance once used. When a device need to be documented, it's when it's part of the construction because we might be interested in its range of use.

\*FL (Starfish Fungus Language - OGC 11-058r1) proposed two way to document a Sensor (but it could be extended to a device)

- Its ex characteristic (parameter provider by the manifacturer)
- Its dynamic characteristics (setup actually used)

It's a bit far fetched, but a Installed Pump could be modelled as \*FL Sensor

Alternatively, we could duplicate the Observation (and <a href="SamplingFeature" class="wikilink">SamplingFeature</a>) soft property mechanism:

- Equipment.png: \<br /\> \<img alt="Equipment.png" height="275" src="%ATTACHURLPATH%/Equipment.png" width="782" /\>

%RED%Note<span class="twiki-macro ENDCOLOR"></span> : <a href="SF_SamplingFeature" class="wikilink">SF_SamplingFeature</a> has a hostedProcedure property ("*\<span style="background-color: transparent;"\>A common role for a spatial sampling feature is to host \</span\>\<span style="background-color: transparent;"\>instruments or procedures deployed repetitively or permanently. If present, \</span\>\<span style="background-color: transparent;"\>the association Platform shall link the <a href="SF_SpatialSamplingFeature" class="wikilink">SF_SpatialSamplingFeature</a> to an \</span\>\<span style="background-color: transparent;"\><a href="OM_Process" class="wikilink">OM_Process</a> deployed at it. The <a href="OM_Process" class="wikilink">OM_Process</a> has the role hostedProcedure with \</span\>*\<span style="background-color: transparent;"\> \_respect to the sampling feature\_.") - I was not aware of this.\</span\>

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="reprev" date="1424801113" format="1.1" reprev="4" version="4"}

<!-- -->

- TOPICPARENT{name="29Jan2015--<a href="GW2IEMeeting30" class="wikilink">GW2IEMeeting30</a>"}

<!-- -->

- FILEATTACHMENT{name="aquifertesting.png" attachment="aquifertesting.png" attr="" comment="" date="1423144723" path="aquifertesting.png" size="107241" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="TestEvent" class="wikilink">TestEvent</a>.png" attachment="<a href="TestEvent" class="wikilink">TestEvent</a>.png" attr="" comment="Aquifer Test" date="1423147050" path="<a href="TestEvent" class="wikilink">TestEvent</a>.png" size="61389" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="Equipment.png" attachment="Equipment.png" attr="" comment="" date="1423158604" path="Equipment.png" size="28313" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="2"}

<!-- -->

- FILEATTACHMENT{name="layout_pump_test.png" attachment="layout_pump_test.png" attr="" comment="layout of the pumping test instance" date="1424801051" path="layout_pump_test.png" size="87282" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}
