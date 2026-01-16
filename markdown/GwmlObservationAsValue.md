# <a href="OM_Observation" class="wikilink">OM_Observation</a> used as property values

There are a couple of things that needs to be set in the way we encode <a href="OM_Observation" class="wikilink">OM_Observation</a>, specially when we use them as property values.

There are two cases when we use <a href="OM_Observation" class="wikilink">OM_Observation</a> as values

1.  \<span style="background-color: transparent;"\>When using relatedObservation on any sub types of <a href="SF_SamplingFeature" class="wikilink">SF_SamplingFeature</a> \</span\>
2.  \<span style="background-color: transparent;"\> Using a specific property (such as <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>/gwBodyVolume) \</span\>

<a href="OM_Observation" class="wikilink">OM_Observation</a> has a mandatory featureOfInterest that is supposed to point back to the feature that is the “bearer of the property”. \<span style="background-color: transparent;"\>In case 2) , the bearer of the property is obviously the feature having this property, so technically, we should constrain featureOfInterest to link back to that feature\</span\>

Eg: we should technically have this

\<img alt="obs_as_value.png" height="190" src="%ATTACHURL%/obs_as_value.png" title="obs_as_value.png" width="449" /\>

Issues: (Question in red)

## Cases where the bearer of property is not a feature

(<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a> for instance, is a Type, not a Feature), so we can’t use featureOfInterest to link it back

%RED%In this case, we should point back to the refers to this Type ? In case of <a href="WaterBudget" class="wikilink">WaterBudget</a>, who does ?<span class="twiki-macro ENDCOLOR"></span>

## Same Observation shared by multiple properties

nothing prevents more than one property to point to the same Observation (by reference), which becomes a problem for the featureOfInterest (foi is 1..1). It can be done schematically even if does not make sense logically. \<span style="background-color: transparent;"\>%RED%Should we have a clause that says<span class="twiki-macro ENDCOLOR"></span> “\<span\><a href="OM_Observation" class="wikilink">OM_Observation</a> that are values of explicit properties will use featureOfInterest to identify the legitimate bearer of properties. Reference to <a href="OM_Observation" class="wikilink">OM_Observation</a> from an explicit property when the property bearer is not the owner is invalid\</span\>” (s%RED%hould it be invalid ?, or can it have another meaning<span class="twiki-macro ENDCOLOR"></span>)\</span\>

## <a href="ObservedProperty" class="wikilink">ObservedProperty</a>

<a href="OM_Observation" class="wikilink">OM_Observation</a> also has an observedProperty. Technically, this should be a reference to the property (the property type, not a specific instance of the property) this observation is about. We have several options (%RED%which one should we use<span class="twiki-macro ENDCOLOR"></span>)

1.  Use a reference to schemas - like this "<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-well.xsd#GW_WellType.gwWellConstructedDepth> (there are no good way to link to a property, it has no identity - (apparently, new ISO 19109 will change this)
2.  Use a good old vocabulary unrelated to domain schema - with the benefit of having more precise definition of the phenomena than the schema provide

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 07 Jul 2015

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="reprev" date="1436294116" format="1.1" reprev="1" version="1"}

<!-- -->

- FILEATTACHMENT{name="obs_as_value.png" attachment="obs_as_value.png" attr="" comment="observation as value" date="1436294066" path="obs_as_value.png" size="6345" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}
