# <a href="SamplingFeature" class="wikilink">SamplingFeature</a> Discussion

## What should be the featureOfInterest of an Observation

There was a lot of discussion around the featureOfInterest (foi) of an Observation. The foi of an Observation is **any** feature, which obviously includes any <a href="SamplingFeature" class="wikilink">SamplingFeature</a>. There are several arguments for and against using <a href="SamplingFeature" class="wikilink">SamplingFeature</a>, but it's beyond the point for this small note. I just realised that there is a gotcha in using either options (foi is the real feature and foi is a <a href="SamplingFeature" class="wikilink">SamplingFeature</a>).

Let's consider this example. We have a Water well that "samples" 3 features: It samples the Aquifer, it also samples the Geologic unit, and it also samples the <a href="WaterBody" class="wikilink">WaterBody</a> (Note we can argue that aquifer and water body are the same thing, but it's not important for this example). At this well (which is a sampling feature), we have 2 Observation. One for Salinity and the other for Porosity. Obviously, salinity is a property of the water and porosity is a property of <a href="GeologicUnit" class="wikilink">GeologicUnit</a> (red lines on the first figure).

Now, if we try to encode all this into O&M and Sampling, we have 2 options

First, use the Well as a foi (foi is a <a href="SamplingFeature" class="wikilink">SamplingFeature</a>). The way to traverse from Observation to feature we are observing is to traverse from Observation/featureOfInterest/<a href="SamplingFeature" class="wikilink">SamplingFeature</a>/sampledFeature/Feature

- foi is a sampling feature: \<br /\> \<img alt="fois.png" height="720" src="%ATTACHURLPATH%/fois.png" width="960" /\>

Now, since we only have one <a href="SamplingFeature" class="wikilink">SamplingFeature</a>, I can't traverse from Observation to the feature because I don't know **which** feature is associated with which Observation.

OK, now let's try the other option. foi is the feature.

\* foi is a feature: \<br /\> \<img alt="foif.png" height="720" src="%ATTACHURLPATH%/foif.png" width="960" /\>

In this case, I can't traverse from the observation to the <a href="SamplingFeature" class="wikilink">SamplingFeature</a> at all. sampledFeature is unidirectional (bidirectional links are enemy of interoperability, dixit Simon Cox) There seems to be no way to connect those entities for a complete story.

Maybe linking the Observation to **both** <a href="SamplingFeature" class="wikilink">SamplingFeature</a> and the real feature ? Am I missing anything ?

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 15 Jan 2010

Ok see what you mean; not sure I have the exact answer to this but see what comes out.

The first approach is the most appropriate from what I can tell, but as you say the problem is the existence of two sampledFeatures. I think what we need to separate out is the intent of each observation. The observed property of the observation must be a property of the domain feature, so if you split these into two observations and use the samplingFeatureRelation to describe the 'real world' relationships of the three way aquifer-waterbody-geologic unit relationship it might work. Here is an attempt:

%ATTACHURL%/<a href="FeatureOfInterestDiscussion" class="wikilink">FeatureOfInterestDiscussion</a>.jpg

I've created the sampling points as the measuring locations within the well, depending on the measurement process they could be more complex geometries. These sampling features contain the intent of each observation. The samplingFeatureRelation role describes the nature of the relationship. I have host well here but there may be something else may be more appropriate.

This allows the observation to be understood in context and the more complex feature relations to exist and be traversed, but the relations hold the semantics of how the real world features relate - not sure if this too much of a hidden contract in the design?

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 04 Feb 2010

"The observed property of the observation must be a property of the domain feature". I always had a problem with this rule. It essentially prevent observation to be made on features outside a given domain, unless you are lucky. Actually, this rule contradicts Simon rules (funny, I believe they are both from him) that bidirectional links are enemies of interoperabily. Having a rule that forces a property to exist in a feature to make an observation is just the same kind of contraint than having an explicit link from that feature to a domain specific Observation. This rule would actually prevent an GWML observation on permeability of a Rock because <a href="GeoSciML" class="wikilink">GeoSciML</a> did not implement this property. I don't think it's right.

What you are proposing is to create sub sampling features for each observation. I think it's a lot of mechanic and it adds to user headaches to query that thing. Actually, wouldn't be easier to add a property to Observation (or subtype Observation) so it has both featureOfInterest (the real feature) and relatedSamplingFeature

- Observation that has no feature of interest means that we don't know yet (or will never know) what is the foi
- Observation that has no related sampling feature are "casual" observations
- <a href="SamplingFeatures" class="wikilink">SamplingFeatures</a> keep their birectional link with Observation, so you can traverse <a href="SamplingFeature" class="wikilink">SamplingFeature</a> to featureOfInterest

Actually, this is essentially what you proposed, but using <a href="SamplingFeatureRelation" class="wikilink">SamplingFeatureRelation</a> instead of an extra property. You <a href="SamplingPoint" class="wikilink">SamplingPoint</a> gives you a branching to point directly to the feature (ie, <a href="WaterBody" class="wikilink">WaterBody</a>) and the <a href="SamplingFeature" class="wikilink">SamplingFeature</a> (the Well).

Is this reasonable ?

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 04 Feb 2010

A recent idea I had to resolve this is to bind the sampling-feature into the procedure. It requires a definition of an observation process that allows this, but it is a wild-card in O&M v2. For example:

- Sampling Feature is part of the observation protocol: \<br /\> \<img alt="<a href="SamplingFeatureExample" class="wikilink">SamplingFeatureExample</a>.png" src="%ATTACHURLPATH%/<a href="SamplingFeatureExample" class="wikilink">SamplingFeatureExample</a>.png" /\>

-- Main.<a href="SimonCox" class="wikilink">SimonCox</a> - 05 Feb 2010

OK, therefore, we can

- traverse from Observation to the <a href="SamplingFeature" class="wikilink">SamplingFeature</a> with Observation/procedure/<a href="OM_Process" class="wikilink">OM_Process</a>/samplingRegime/<a href="SamplingFeature" class="wikilink">SamplingFeature</a>
- traverse from <a href="SamplingFeature" class="wikilink">SamplingFeature</a> to Observation using relatedObservation (I added them on your diagram)
- traverse from <a href="SamplingFeature" class="wikilink">SamplingFeature</a> to the real feature with <a href="SamplingFeature" class="wikilink">SamplingFeature</a> /relatedObservation/Observation/featureOfInterest/Feature or <a href="SamplingFeature" class="wikilink">SamplingFeature</a> /sampledFeature/Feature. The "real feature" from either path could be different, most probably, the observation path would lead to a part of the feature pointed by sampledFeature.

Should this become a 'best practice' ? Observation should always point to the real feature (featureOfInterest) while link to <a href="SamplingFeature" class="wikilink">SamplingFeature</a> should alway go through a <a href="OM_Process" class="wikilink">OM_Process</a> ?

- O&M full story: \<br /\> \<img alt="om_sf_2.png" height="611" src="%ATTACHURLPATH%/om_sf_2.png" width="625" /\>

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 08 Feb 2010

So you find this approach useful? I've had push-back from some others, particularly in the fluid earth community where I guess the sampling-feature is more central to their practice, and the domain-feature generally taken as a given. I carefully removed one sentence from ISO 19156 draft that appeared to disallow this approach, so either strategy is now 'legal', so we are definitely in 'best practice' territory.

-- Main.<a href="SimonCox" class="wikilink">SimonCox</a> - 09 Feb 2010

It's useful in the way that I could from a SOS connect back to both the sample and what is the (real) featureOfInterest. It's not totally different from Peter's proposal of best practice where he adds a <a href="SubSample" class="wikilink">SubSample</a> for each Observation. This one forces us to create a formal <a href="OM_Process" class="wikilink">OM_Process</a>, which I find "slightly" better than creating arbitrary samples because I would find it confusing for users trying to understand what those sub samples really are.

\_guess the sampling-feature is more central to their practice, and the domain-feature generally taken as a given.\_

Well actually, most of the time, we are in the same situation and maybe the whole discussion is moot. Although I understand that when we analyse water at a well, the featureOfInterest should be the aquifer, all the hydrogeologists I discussed with are "well centric" (samplingFeature) and the aquifer is a given. Let's see when the rubber hits the road.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 09 Feb 2010

- TOPICINFO{author="<a href="KevinStegemoller" class="wikilink">KevinStegemoller</a>" comment="save topic" date="1378393976" format="1.1" reprev="9" version="10"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment" class="wikilink">GroundwaterInteroperabilityExperiment</a>"}

<!-- -->

- FILEATTACHMENT{name="foif.png" attachment="foif.png" attr="" comment="foi is a feature" date="1263552367" path="foif.png" size="23726" stream="foif.png" tmpFilename="/tmp/<a href="IppamV7oyz" class="wikilink">IppamV7oyz</a>" user="Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="fois.png" attachment="fois.png" attr="" comment="foi is a sampling feature" date="1263552387" path="fois.png" size="8431" stream="fois.png" tmpFilename="/tmp/<a href="DZfGogATML" class="wikilink">DZfGogATML</a>" user="Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="FeatureOfInterestDiscussion" class="wikilink">FeatureOfInterestDiscussion</a>.jpg" attachment="<a href="FeatureOfInterestDiscussion" class="wikilink">FeatureOfInterestDiscussion</a>.jpg" attr="" comment="using sampling feature relations" date="1265265481" path="<a href="FeatureOfInterestDiscussion" class="wikilink">FeatureOfInterestDiscussion</a>.jpg" size="63950" stream="<a href="FeatureOfInterestDiscussion" class="wikilink">FeatureOfInterestDiscussion</a>.jpg" tmpFilename="/tmp/2QVKI4qzuC" user="Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="SamplingFeatureExample" class="wikilink">SamplingFeatureExample</a>.png" attachment="<a href="SamplingFeatureExample" class="wikilink">SamplingFeatureExample</a>.png" attr="" comment="Sampling Feature is part of the observation protocol" date="1378393976" path="<a href="SamplingFeatureExample3" class="wikilink">SamplingFeatureExample3</a>.png" size="145467" user="<a href="KevinStegemoller" class="wikilink">KevinStegemoller</a>" version="2"}

<!-- -->

- FILEATTACHMENT{name="om_sf_2.png" attachment="om_sf_2.png" attr="" comment="O&M full story" date="1265635177" path="om_sf_2.png" size="38941" stream="om_sf_2.png" tmpFilename="/tmp/tTYhGscAwk" user="Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}
