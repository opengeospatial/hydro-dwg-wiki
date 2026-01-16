## 

# **Discussion for GWML2 CM 0.2**

------------------------------------------------------------------------

Please note that GWML2 CM 0.2 is strictly a "seed" model, intended to kick-off discussion and stimulate revision.

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 21 Nov 2013

------------------------------------------------------------------------

Boyan. a great job putting together a starting point. I'll try to start the general discussion by making some ad hoc detailed comments based on a less than thorough analysis.

1.  Class stereotypes are missing. I thought they may all be <a href="FeatureTypes" class="wikilink">FeatureTypes</a>. However, a number of classes (e.g. <a href="GW_HydrogeoProperty" class="wikilink">GW_HydrogeoProperty</a>, <a href="GW_Porosity" class="wikilink">GW_Porosity</a>, <a href="GW_Yield" class="wikilink">GW_Yield</a>, <a href="GW_ManagementProperty" class="wikilink">GW_ManagementProperty</a>, <a href="GW_Divide" class="wikilink">GW_Divide</a>) are probably <a href="DataTypes" class="wikilink">DataTypes</a>. For <a href="GL_EarthMaterial" class="wikilink">GL_EarthMaterial</a>, <a href="GeoSciML" class="wikilink">GeoSciML</a>:<a href="EarthMaterial" class="wikilink">EarthMaterial</a> is not a <a href="FeatureType" class="wikilink">FeatureType</a> (to raise that old argument again); - (**keeping <a href="FeatureTypes" class="wikilink">FeatureTypes</a> vs <a href="DataTypes" class="wikilink">DataTypes</a> out of the conceptual model - BB 29/11/13)**
2.  I am confused by <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>. Thinking it was a void I didn't understand why it is unrelated to <a href="GL_EarthMaterial" class="wikilink">GL_EarthMaterial</a> as <a href="GeoSciML" class="wikilink">GeoSciML</a> has Voids as a type of <a href="EarthMaterial" class="wikilink">EarthMaterial</a>; It looks like <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a> is the 'non-rock' material (void) that may or may not be filled with groundwater (<a href="GW_Body" class="wikilink">GW_Body</a>). If so, is there any other way of associating a <a href="GW_Body" class="wikilink">GW_Body</a> with a <a href="GW_HydrogeoBody" class="wikilink">GW_HydrogeoBody</a> apart from via the <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>? If not, is the gwBodyUnit property reqired? This would tend to make the <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a> 'central' to the model, being the space in the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> filled or potentially filled with groundwater (the <a href="GW_Body" class="wikilink">GW_Body</a>); (**see below)**
3.  <a href="GW_BodyProperty" class="wikilink">GW_BodyProperty</a> is a soft-type class to capture properties not specified in <a href="GW_Body" class="wikilink">GW_Body</a>. An alternative is perhaps to replace <a href="OM_Observation" class="wikilink">OM_Observation</a> with <a href="GW_BodyProperty" class="wikilink">GW_BodyProperty</a> and gwBodyProperty with gwBodyObservation; (**to be further discussed**)
4.  Nillable properties should have \<\<voidable\>\> stereotypes and nillable tags; **(part of the logical model discussion)**
5.  <a href="GW_Basin" class="wikilink">GW_Basin</a> uses gwDivide as a property, <a href="GW_BodySurface" class="wikilink">GW_BodySurface</a> uses gwSurfaceDivide as an association property. In XML these end up the same but are two ways of doing the same thing in UML. For consistency and simplicity let's use the <a href="GW_Basin" class="wikilink">GW_Basin</a> pattern; **(TBD)**
6.  <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> in the UML can consist of <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a>, <a href="GW_ConfingBed" class="wikilink">GW_ConfingBed</a>, other <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> and <a href="GW_Basin" class="wikilink">GW_Basin</a>. Should this be restricted to exclude <a href="GW_Basin" class="wikilink">GW_Basin</a>? **(resolved 9/12/13**)
7.  <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>:gw:<a href="UniitVulnerability" class="wikilink">UniitVulnerability</a> to gw:<a href="UnitVulnerability" class="wikilink">UnitVulnerability</a>; **(resolved 9/12/13**)

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 29 Nov 2013

------------------------------------------------------------------------

Bruce -- good points. Some comments:

1\. The class stereotypes are excluded because they are (essentialy) GML artifacts and thus should be part of the logical model, not the conceptual model. The conceptual model deals with the semantics of physical reality, whereas the logical model adds technological and human concerns (e.g. GML stereotypes, nillable). To my mind, conceptually, the relation between a property such as porosity and an earth material holds, regardless of the interpretation of an Earth Material as a lump of substance or as an abstract type. Obviously to be discussed more.

2\. I agree voids are likely to see limited use, and should not be central. They were included in the entity list, I believe, to cover cases such as "determine the amount of \[water held in fractures / space occupied by fractures\] in an aquifer or in the sandstone layer of an aquifer", where fractures are essentially one example of a void (a space in the rock). CM 0.2 says:

- \<div class="<a href="WYSIWYG_NBNL" class="wikilink">WYSIWYG_NBNL</a>" style="padding-left: 30px;"\>hg units contain gw bodies (and the inverse)\</div\>
- \<div class="<a href="WYSIWYG_NBNL" class="wikilink">WYSIWYG_NBNL</a>" style="padding-left: 30px;"\>hg units or earth materials host voids (and the inverse)\</div\>
- \<div class="<a href="WYSIWYG_NBNL" class="wikilink">WYSIWYG_NBNL</a>" style="padding-left: 30px;"\>gw bodies are contained in voids (and the inverse)\</div\>

None of these relations or entities are more central than others -- they form a gw 'holy trinity' -- although in practice I suspect the void portions will be used less, limited to specific cases. **(see below)**

3\. I don't follow your comment. If you are referring to specific classes from O&M, then same comment as (1) above -- those are to be included in the logical model. If not, please elaborate. (**to be further discussed**)

4\. Same as above, nillable is a concern for the logical model. **(resolved)**

5\. Hmm, please elaborate... are you suggesting we don't use associations anywhere, just properties? I think this would reduce visual clarity. **(TBD)**

6\. Good question. To be discussed. Also: is the unit part relation necessary? I.e. can units be nested (gwUnitpartOf) outside of an <a href="AquiferSystem" class="wikilink">AquiferSystem</a> (e.g. do aquifers contain aquifers?), or is it that once things are nested they form an <a href="AquiferSystem" class="wikilink">AquiferSystem</a>? **(resolved 9/12/13**)

7\. Done.

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 29 Nov 2013

------------------------------------------------------------------------

The "seed" CM 0.2 in my view is a very good basis for the model so I think a good job was done. Therefore just a few remarks to some points in the following:

1.  <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>: since <a href="GW_Porosity" class="wikilink">GW_Porosity</a> is a defined property of <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>, the void space available for the groundwater body in my view would be defined by the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> and its geometry. It seems to me that the association between <a href="GW_Body" class="wikilink">GW_Body</a> and <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> would be consistent enough to define the available void space. **(Discussed 18/12/13)**
2.  Associations between <a href="GW_Body" class="wikilink">GW_Body</a> and <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> (figure 1, 3): in my view it is the core association of the model since it defines the relations between the two main domains rock and groundwater. In the INSPIRE model we defined this association through an association between <a href="GW_Body" class="wikilink">GW_Body</a> and <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> (1:1) i.e. "the aquifer system is a collection of aquifers and aquitards – "communicating vessels", that are filled or can be filled with water", where we have a 1:n-relation between the <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> and <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>. I would like to suggest discussion of this type of modeling the associations: <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> (n) \<-----\> (1) <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a> (1) \<------\> (1) <a href="GW_Body" class="wikilink">GW_Body</a> **(see below)**

\<ol start="3"\> \<li\>page13, definition <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a>: "a body of material… separated at least locally by confining beds that impede groundwater movement…" Even if this will often be the case, in the modeling sense I think this is a set of hydrogeological units that form a common hydrologic system. Therefore my suggestion is to skip this condition of confining beds in the definition of the <a href="GW_AquiferSystem" class="wikilink">GW_AquiferSystem</a>. **(Discussed 9/12/13)** \</li\> \<li\>In the INSPIRE-model we defined the <a href="HydrogeochemicalRockType" class="wikilink">HydrogeochemicalRockType</a> as a property of the <a href="HydrogeologicalUnit" class="wikilink">HydrogeologicalUnit</a>, indicating the main chemical properties the <a href="GW_Body" class="wikilink">GW_Body</a> will show due to the rock-water interactions (e.g. calcitic, sulfatic etc.). I suggest to include this to the <a href="GW_HydrogeoProperty" class="wikilink">GW_HydrogeoProperty</a>.\</li\> \</ol\>

Bernhard Wagner - 03 Dec 2013

------------------------------------------------------------------------

Some comments following Bernhard's:

1.  \<p\>I think the suggestion is to remove <a href="GW_Void" class="wikilink">GW_Void</a> because <a href="GW_Body" class="wikilink">GW_Body</a> can serve as a proxy for voids. This simplifies the model, but also has disadvantages: it does not allow us to express the total space occupied by fractures or caves in a unit, because the <a href="GW_Body" class="wikilink">GW_Body</a> may not fill all the spaces. I don't think any one of these three can be reduced to the other: while the geometry of a <a href="GW_HGU" class="wikilink">GW_HGU</a> defines the shape of the Void, they are different, because the HGU is material and the Void is empty space. Likewise the gw body might not fill the void, so is not a proxy, bodies and units are obiously different things, and porosity is a proportion of void to unit and thus not either one. Thus, <a href="GW_Void" class="wikilink">GW_Void</a> can be removed at the risk of reducing what can be expressed. Probably will be a long discussion. **(see below)** \</p\>
2.  \<p\>To discuss: an implication of <a href="GW_Body" class="wikilink">GW_Body</a> being related to <a href="AquiferSystem" class="wikilink">AquiferSystem</a> rather than HGU, is that Aquifers or Basins cannot then be filled with a water body. **(resolved 18/12/13)** \</p\>
3.  \<p\>Makes sense -- I think the model reflects this.\</p\>
4.  \<p\>To discuss: a gw body has certain chemical constituents, but so does the HGU, which is not captured by the model.\</p\>

\- Re: HGU properties -- do we need to add more, e.g.

- Context: hydrogeological region, relief, hydrography, surface area
- Geology: named units and lithologies
- Aquifers: media (un / consolidated), amount in storage
- Properties: thickness (surficial / bedrock), avg well depth, avg gw depth, conductivity (surficial vs bedrock)
- etc.

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 09 Dec 2013

------------------------------------------------------------------------

##### Some comments/questions from the <a href="BoM" class="wikilink">BoM</a> hydrogeos on v0.2.1.

###### <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> properties:

A1. Is there a relationship between <a href="GW_ManagementProperty" class="wikilink">GW_ManagementProperty</a> and <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>? **(resolved 18/12/13)**

A2. How does the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> property **gwPorosityVoid** (<a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>:gwUnitProperties - <a href="GW_HydrogeoProperty" class="wikilink">GW_HydrogeoProperty</a>:gwPorosity - <a href="GW_Porosity" class="wikilink">GW_Porosity</a>:gwPorosityVoid - <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>) differ from **gwUnitVoid**:<a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>? **(see below)**

A3. **gwUnitThickness** is the same as <a href="GeoSciML" class="wikilink">GeoSciML</a> <a href="GeologicUnit" class="wikilink">GeologicUnit</a>:unitThickness, but <a href="GeoSciML" class="wikilink">GeoSciML</a> <a href="GeologicFeature" class="wikilink">GeologicFeature</a>:occurrence, for example, is not included. I suggest including all the geologic properties (stratigraphy, lithology, genesis, composition) required in the conceptual model. **(see below)**

A4. **gwUnitName** included, also include **gwUnitDescription**(neither specified in <a href="GeoSciML" class="wikilink">GeoSciML</a> as inherited from GML); **(see below)**

A5. Is **gwUnitThickness** a range or average thickness (or a spatial layer)? **(part of Measurement <a href="DataType" class="wikilink">DataType</a> discussion)**

**A6. <a href="GW_RechargeLocation" class="wikilink">GW_RechargeLocation</a>:**can be complex or simplified, could be outcrop area, or include all losing stream reaches etc.

**A7. <a href="GW_DischargeLocation" class="wikilink">GW_DischargeLocation</a>:**If this includes wells also, then in most cases, wells intersect the entire aquifer, if only a well field, then need minimum density/ or extraction for definition of a well-field.

###### <a href="GWHydrogeoUnit" class="wikilink">GWHydrogeoUnit</a> vs <a href="GW_Body" class="wikilink">GW_Body</a>

The following are <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> properties, but seem to be related to <a href="GW_Body" class="wikilink">GW_Body</a>:

B1. **gwUnitWaterBudget:** Is this about the gwBody? Is this an annual water budget? **(resolved 18/12/13)**

B2. **Vulnerability Type:**is the vulnerability only to pollution? What about over-extraction? Is there a vulnerability type and a measure of the vulnerability? If low, medium, high etc, what are the terms for determining vulnerability? Is this about the water or the aquifer itself, including the geology, being vulnerable? If about the water should it be in gwBody?

B3. **<a href="GW_InFLow" class="wikilink">GW_InFLow</a>:**Annual Inflow or average? Shouldn't this relate to the gwBody as it is about the water, not the rock? **(discussed 18/12/13)**

**B4. <a href="GW_OutFlow" class="wikilink">GW_OutFlow</a>:**Annual Outflow or average? Include all wells? Does this relate to the gwBody as it is about the water, not the rock? **(discussed 18/12/13)**

B5. What is the relationship between the <a href="GW_HydrogeoProperty" class="wikilink">GW_HydrogeoProperty</a>:**gwStorativity** and <a href="GW_Body" class="wikilink">GW_Body</a>. From the description "*Storativity is the volume of water released from storage per unit decline in hydraulic head in the aquifer, per unit area of the aquifer. (gwml1)*" gwStorativity seems to be about the <a href="GW_Body" class="wikilink">GW_Body</a>. **(see below)**

###### General comments

C1. Many of the properties will require additional metadata about how the measurements were made, published values etc

C2 Does the Measurement <a href="DataTypes" class="wikilink">DataTypes</a> include Ranges? **(part of Measurement <a href="DataType" class="wikilink">DataType</a> discussion)**

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 17 Dec 2013

------------------------------------------------------------------------

### <a href="HydrogeoUnit" class="wikilink">HydrogeoUnit</a> - <a href="HydrogeoVoid" class="wikilink">HydrogeoVoid</a> relationship

Below is a diagram of my proposal at 18 December 2013 meeting treating the hydraulic properties as properties of the Unit-Void relationship.This allows both <a href="GW_HydrogeoUNit" class="wikilink">GW_HydrogeoUNit</a> and <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a> to potentially be instantiated as separate features, both or either with the <a href="GW_HydrogeoPropertys" class="wikilink">GW_HydrogeoPropertys</a>. It appears to me that at least gwPorosity is part of the relationship between void and unit and should be modelled accordingly.

\<img alt="Proposed association class between <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> and <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>" height="687" src="%ATTACHURL%/<a href="HydrogeoUnit" class="wikilink">HydrogeoUnit</a>-<a href="HydrogeoVoid_BS" class="wikilink">HydrogeoVoid_BS</a>.jpg" title="<a href="HydrogeoUnit" class="wikilink">HydrogeoUnit</a>-<a href="HydrogeoVoid_BS" class="wikilink">HydrogeoVoid_BS</a>.jpg" width="1184" /\>

I have also moved the specific 'geology' properties (gwName, gwThickness) to the <a href="GL_GeologicUnit" class="wikilink">GL_GeologicUnit</a> class and added other geologic properties we expect to be provided here.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 19 Dec 2013

------------------------------------------------------------------------

### Outstanding issues from the above points (19/12/13)

"Is it necessary to associate the <a href="GW_Body" class="wikilink">GW_Body</a> with the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> apart from via the <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>? (BS point 2 29/11/13). Traditionally the voids and units are treated together. Separating them out requires further considering the relationship between the water (<a href="GW_Body" class="wikilink">GW_Body</a>), the container (<a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>) and the spaces (<a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>);

"In the INSPIRE-model we defined the <a href="HydrogeochemicalRockType" class="wikilink">HydrogeochemicalRockType</a> as a property of the <a href="HydrogeologicalUnit" class="wikilink">HydrogeologicalUnit</a>, indicating the main chemical properties the <a href="GW_Body" class="wikilink">GW_Body</a> will show due to the rock-water interactions (e.g. calcitic, sulfatic etc.). I suggest to include this to the <a href="GW_HydrogeoProperty" class="wikilink">GW_HydrogeoProperty</a>." (see Bernhard Wagner - 03 Dec 2013 point 4)

Measurement <a href="DataType" class="wikilink">DataType</a> - a range or average or ...?

Vulnerability Type - is the vulnerability only to pollution? What about over-extraction? Is there a vulnerability type and a measure of the vulnerability? If low, medium, high etc, what are the terms for determining vulnerability? Is this about the water or the aquifer itself, including the geology, being vulnerable? If about the water should it be in gwBody?

Recharge and discharge location - recharge can be complex or simplified, could be outcrop area, or include all losing stream reaches etc. If Discharge includes wells, then in most cases, wells intersect the entire aquifer, if only a well field, then need minimum density/ or extraction for definition of a well-field.

<a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> and <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a> association properties - **Resolved (16/1/14)**

<a href="GW_Yield" class="wikilink">GW_Yield</a> relatiionships - **Resolved (16/1/14)**

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 19 Dec 2013

------------------------------------------------------------------------

Hmm.. This model does not allow, for example. to represent "typical" hydrogeo property of an Earth material, because the properties must be expressed in the context of a given unit and its void. But maybe it's ok, because we can always represent it in O&M (and maybe this is where it should be in this particular case).

I also need to point out that <a href="HydraulicConductivity" class="wikilink">HydraulicConductivity</a> is a property of the fluid (salt water does not have the same K than fresh water). My original position was that "water" was the fluid in context and it was just overkill to model it otherwise, but maybe it should be discussed.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 14 Jan 2014

------------------------------------------------------------------------

A comment to the <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>: in context of the Water Framework Directive, groundwater managemant areas are linked to groundwater bodies, which is implemented in the INSPIRE-model also (<a href="DataSpecification" class="wikilink">DataSpecification</a>, Fig. 13 on page 43). In present <a href="CM_0" class="wikilink">CM_0</a>.2 it is linked to <a href="HydroGeoUnit" class="wikilink">HydroGeoUnit</a>.

-- <a href="BernhardWagner" class="wikilink">BernhardWagner</a> - 14 Jan 2014

------------------------------------------------------------------------

Comment to <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>: In NZ groundwater management and regulation typically happens on "groundwater catchment" basis. These catchments and the main aquifers are also within single New Zealand regions (i.e. the regions have the mandate for environmental resources management). <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> would basically relate to <a href="GW_Basin" class="wikilink">GW_Basin</a> here, I think.

How/why is the <a href="GW_Yield" class="wikilink">GW_Yield</a> directly related to the <a href="GWHydroGeoVoid" class="wikilink">GWHydroGeoVoid</a>?

-- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 15 Jan 2014

------------------------------------------------------------------------

In relation to Eric's comment on Hydraulic Conductivity... it is the capacity of the rock to transmit water. \_"It is expressed as the volume of water at the existing kinematic viscosity that will move in unit time under a unit hydraulic gradient through a unit area measured at right angles to the direction of flow"\_ Heath (1983) USGS WSP 2220. It is a property of the media (cf: fluid) measured as a rate (L/T).

In relation to <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>... it is often logically related to the Earth geometry (aquifer, basin, etc.) but can be any specified 3-dimensional space, for example a restricted-use zone in an aquifer (because of pollution) or a recharge management area for a confined aquifer, etc. Conceptually, it should be as flexible as possible.

-- Main.<a href="PeterDahlhaus" class="wikilink">PeterDahlhaus</a> - 16 Jan 2014

------------------------------------------------------------------------

See diagram below for proposed changes arising from meeting 10 discussions (Jan 16). Note the main change required several properties to be associated with all of units, voids, and bodies. Experiments revealed some more refinements, reflected in the proposal below.

Summary of changes:

- Name changes (**new**):
  - "<a href="GW_Body" class="wikilink">GW_Body</a>" to "<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>" (to be explicit that units can contain bodies of various fluids, e.g. water, oil, gas,...)
  - "gwPorosityProportion" to "gwPorosity" (for consistency)
  - "gwYieldQuantity" to "gwYield" (for consistency)
- Cardinatlity changes (**new**):
  - gwVoidUnit to 1...\* (each void must have a host unit)
  - gwUnitFluidBody to 0...\* (a hg unit could contain multiple distinct fluid bodies, e.g. water, oil, gas,...)
- Other changes:
  - restricted permeability to 'intrisic permeability' which measures the connectivity of voids and thier openings, hence is a property of units-voids only
  - remaining properties (conductivity, etc.) involve units, voids and bodies, but can be modeled as properties of the unit-fluidBody relation (for simplicity). A complete representation might include a relation from these properties to Void, but that is already achieved indirectly via hg unit, which is less precise but could suffice (its also aligned with traditional usage in which these properties are primarily associated with the unit).
  - earth materials (lithologies) can have unit-void or unit-fluidBody properties. But, typical properties then require the instantiation of typical units, bodies, and voids, however that seems inherent in many of the definitions in any case (e.g. using a unit area of a hg unit, etc.)

\<img alt="<a href="GWML2_CM_0" class="wikilink">GWML2_CM_0</a>.23_meeting10_revisions2.jpg" height="747" src="%ATTACHURLPATH%/<a href="GWML2_CM_0" class="wikilink">GWML2_CM_0</a>.23_meeting10_revisions2.jpg" width="797" /\>

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> 20 Jan 2014

Any reason for having <a href="GW_Porosity" class="wikilink">GW_Porosity</a> as a separate class rather than just having the 'gwPorosityType' and 'gwPorosity' as properties of <a href="GW_UnitVoidProperty" class="wikilink">GW_UnitVoidProperty</a>'? An XML encoding of the current pattern would appear unnecessarly redundant:

```
<GW_UnitVoidProperty>
    <gwPorosity>
        <GW_Porosity>
            <gwPorosityType></gwPorosityType>
            <gwPorosity></gwPorosity>
        </GW_Porosity>
    </gwPorosity>
</GW_UnitVoidProperty>
```

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 21 Jan 2014

### Outstanding Issues (21 Jan 2014)

"In the INSPIRE-model we defined the **<a href="HydrogeochemicalRockType" class="wikilink">HydrogeochemicalRockType</a>** as a property of the <a href="HydrogeologicalUnit" class="wikilink">HydrogeologicalUnit</a>, indicating the main chemical properties the <a href="GW_Body" class="wikilink">GW_Body</a> will show due to the rock-water interactions (e.g. calcitic, sulfatic etc.). I suggest to include this to the <a href="GW_HydrogeoProperty" class="wikilink">GW_HydrogeoProperty</a>." (see Bernhard Wagner - 03 Dec 2013 point 4)

**Measurement <a href="DataType" class="wikilink">DataType</a>** - a range or average or ...?

**Vulnerability Type** - is the vulnerability only to pollution? What about over-extraction? Is there a vulnerability type and a measure of the vulnerability? If low, medium, high etc, what are the terms for determining vulnerability? Is this about the water or the aquifer itself, including the geology, being vulnerable? If about the water should it be in gwBody?

**Recharge and discharge location** - recharge can be complex or simplified, could be outcrop area, or include all losing stream reaches etc. If Discharge includes wells, then in most cases, wells intersect the entire aquifer, if only a well field, then need minimum density/ or extraction for definition of a well-field.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 21 Jan 2014

### Comments from <a href="BoM" class="wikilink">BoM</a> Hydrogeologists (30/1/2014)

Just some comments for your next meeting.

Comments: general – very complicated and detailed. Still trying to wrap our heads around the void, fluid body and HGU. The information in groundwater fluid body is generally derived from numbers that are derived themselves and has huge errors associated with it.

**<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>**

\- Groundwaterbody shape and volume will require assumptions on how the volume was calculated, the method to determine the groundwater level surface.

\- gwBodyAge – again the method used to determine this (carbon dating etc), the age range, the accuracy and the date

\- gwBodyFlow – not entirely sure what this relates to. Is it a flow net or direction, or flow volume (discharge/ recharge body), flow rate (m/s), velocity?

\- gwBodyQuality – assume points to a vocab and we could populate the vocab based on beneficial use criteria

\- gwBodyCondition – we don't have a vocab of our own at this stage. Probably wouldn't use INSPIRE without consultation

**<a href="GW_unitFluidProperty" class="wikilink">GW_unitFluidProperty</a>**

\- gwStorativity – as mentioned earlier, we believe this should be called <a href="StorageProperties" class="wikilink">StorageProperties</a> which is more inclusive. Storativity related to confined aquifers. Storgae properties is inclusive of specific storage, specific yield and storativity.

\- As above, with all properties (hydraulic conductivity, transmissivity and storage) requires metadata and could include published ranges or calculations.

\- gwYield – the definition relates to a management property rather than fluid property. Sustainable yield/ safe yield etc relates to the groundwater management of volume/year. This is generally an arbitrary number based on politics and community issues. We think this should be related to a pump test and would include the pump test method including time etc.

**gwFlowSystem relationships**

what is the difference between the gwBodyFlow and the gw_FlowProcess?

What is the difference between the recharge feature and the recharge location and how they function?

Discharge/ recharge feature – assume it includes type of feature and type of recharge (diffuse, point source etc), source of water for recharge (irrigation, rainfall, surface water feature)

Eloise & Jill

#### Response to <a href="BoM" class="wikilink">BoM</a> comments:

**gwBodyFlow and th gw_FlowProcess:**

<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>:gwBodyFlow is defined as “Flow details for the gw body.” It has data type <a href="GW_Flow" class="wikilink">GW_Flow</a>

<a href="GW_Flow" class="wikilink">GW_Flow</a>:gwFlowBody is defined as “The body of water that is flowing.” It has data type <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>.

It looks like a circular dependency between these two that needs sorting, possibly deleting <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>:gwBodyFlow is required.

<a href="Gw_FlowProcess" class="wikilink">Gw_FlowProcess</a> examples are: evapotranspiration, evaporation, transpiration, runoff, baseflow, pumping, infiltration, injection, etc.

**recharge feature and the recharge location:**

<a href="GW_RechargeLocation" class="wikilink">GW_RechargeLocation</a>:gwRechargeFeature is defined as “Physical feature where the recharge occurs.” I assume this will be some feature (swamp, sinkhole,...) where the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> is re-charged.

**Discharge/ recharge feature**

<a href="GW_Flow" class="wikilink">GW_Flow</a> (via <a href="GW_FlowSystem" class="wikilink">GW_FlowSystem</a>) provides the properties associated with the recharge/discharge. gwFlowRechargeLocation and gwFlowDischargeLocation appear to duplicate gwInFlowLocation and gwOutFlowLocation

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 29 Jan 2014

### More response to the <a href="BoM" class="wikilink">BoM</a> comments:

I agree that some <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> properties like the gwBodyAge and gwBodyFlow will require some thinking. They will inevitably be a range of numbers or a qualitative descriptor.

In respect to <a href="GW_unitFluidProperty" class="wikilink">GW_unitFluidProperty</a> I use the definition of Storativity (S) that says that it is the amount of water released from storage by a unit decline in head over a unit area, same as that used in the \<a href="<http://external.opengis.org/twiki_public/pub/HydrologyDWG/GWML2-CM-Model/GWML2_CM_0.2.pdf>" target="\_blank"\>Model Documentation\</a\> (page 22). It is calculated as S = Specific Yield (\<span style="background-color: transparent;"\>Sy) + depth of water (h) x Specific Storage (or Elastic Storage) (Ss) - or \</span\>\<span style="background-color: transparent;"\>S = Sy + hSs - in unconfined conditions and thickness (b) x the Specific Storage (Ss) in confined conditions - or \</span\>\<span style="background-color: transparent;"\>S = bSs. Heath (1983 Basic Groundwater Hydrology, USGS WSP 2220) uses the term Storage Coefficient \_"The volume of water released from storage in a unit prism of an aquifer when the head is lowered a unit distance."\_ That might be a more acceptable term? It's the same thing really. \</span\>

gwYield should not be confused with Well Yield. In this case it is aquifer yield, which in the \<a href="<a href="Gwml2FinalFeaturesList" class="wikilink">Gwml2FinalFeaturesList</a>" target="\_blank"\>Features List\</a\> is defined as \_"...the maximum rate of withdrawal that can be sustained by an aquifer. Expressed as m3."\_ I agree that it will be a number set by the combination of science and politics. I don't think that's a problem?

Recharge location is in the \<a href="<a href="Gwml2FinalFeaturesList" class="wikilink">Gwml2FinalFeaturesList</a>" target="\_blank"\>Features List\</a\> and page 29 of the \<a href="<http://external.opengis.org/twiki_public/pub/HydrologyDWG/GWML2-CM-Model/GWML2_CM_0.2.pdf>" target="\_blank"\>Model Document\</a\>. Recharge feature might be an injection well, pond, or a losing stream. There might be some thought given to whether it could also be a geological stratum (the ourcrop of a confined aquifer for example).

In relation to Bruce's comment on gwInFlowLocation and gwOutFlowLocation... page 23 of the \<a href="<http://external.opengis.org/twiki_public/pub/HydrologyDWG/GWML2-CM-Model/GWML2_CM_0.2.pdf>" target="\_blank"\>model documentation\</a\> talks about a volumetric flow rate. I'm a bit confused by that as well.

-- Main.<a href="PeterDahlhaus" class="wikilink">PeterDahlhaus</a> - 30 Jan 2014

------------------------------------------------------------------------

### gwBodyNaturalContext

- This property needs more explanation. Please provide below.

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a> - 24 Feb 2014

- \<span style="background-color: transparent;"\>"Easy part"\</span\>

gwBodyNaturalContext attributes initially refers to Natural background (Natural <a href="GroundWaterBaseline" class="wikilink">GroundWaterBaseline</a> - Fond géochimique des aquifères). For a given <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a> measured in a <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>, in order to manage the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> quality, we need to better understand what causes the presence of the <a href="ChemicalConstituent" class="wikilink">ChemicalConstituent</a>.

One approach is : theoretically Natural background can be estimated for each <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>, <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a> by <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a> based on the <a href="GL_EarthMaterial" class="wikilink">GL_EarthMaterial</a> of the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>.

Projects often end up with info/maps for each <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a> of the naturally observed values (the Natural background). I will try to circulate slides on this for our next webconf.\<br /\>Natural Background information is highly linked with a notion of confidence threshold because it is sometime hard to differentiate natural VS anthropic causes for some <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a> values

=\> As it is linked to the <a href="GL_EarthMaterial" class="wikilink">GL_EarthMaterial</a> of the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> should that information be in the <a href="GW_UnitFluidProperty" class="wikilink">GW_UnitFluidProperty</a> association class ?

=\> Information needed : measurement / link to <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a> / confidence threshold

- Complexifying the picture

This being said (and hopefully solved) we could also need to differentiate natural VS anthropic causes for \<span style="background-color: transparent;"\><a href="GW_BiologicConstituent" class="wikilink">GW_BiologicConstituent</a> and <a href="GW_MaterialConstituent" class="wikilink">GW_MaterialConstituent</a>.\</span\>

=\> Do we try and also solve this in the model or do we limit ourselves to the <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a> only ?

-- Main.<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a> - 14 Mar 2014

------------------------------------------------------------------------

### Cleaning up <a href="GWML2_CM_0" class="wikilink">GWML2_CM_0</a>.26

I've reviewed the work we have done to date and I propose that we make the following changes in order to be consistent and explicit about the properties of each class, and aid the transition to the logical model.

#### <a href="GL_GeologicUnit" class="wikilink">GL_GeologicUnit</a>

Add 'gwUnitIdentifier' property. Those classes that we expect to have their own identity should have this property added to make it clear that they are objects that we expect to persist in their own right. Will be replaced by gml:identifier in the GML Logical Model.

Add 'gwUnitDescription' property. Will be replaced by gml:description in the GML Logical Model.

Add 'gwUnitMetadata' property. To capture metadata information as per <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>/gwAreaMetadata.

Change 'unitName' cardinality from 1..1 to 1..\* to deal with multiple names, codes etc. Will be replaced by gml:name in the GML Logical Model, which has cardinality of 0..\*.

Change 'unitName' to 'gwUnitName'.

Change 'shape' to 'gwUnitShape'.

Change 'unitThickness' to 'gwUnitThickness'.

#### <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>

Add 'gwAreaIdentifier' property. Those classes that we expect to have their own identity should have this property added to make it clear that they are objects that we expect to persist in their own right. Will be replaced by gml:identifier in the GML Logical Model.

Add 'gwAreaDescription' property. Will be replaced by gml:description in the GML Logical Model.

Change gwAreaName cardinality from 1..1 to 1..\* to deal with multiple names, codes etc. Will be replaced by gml:name in the GML Logical Model, which has cardinality of 0..\*.

#### <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>

Add 'gwVoidIdentifier' property. Those classes that we expect to have their own identity should have this property added to make it clear that they are objects that we expect to persist in their own right. Will be replaced by gml:identifier in the GML Logical Model.

Add 'gwVoidDescription' property. Will be replaced by gml:description in the GML Logical Model.

Add 'gwVoidMetadata' property. To capture metadata information.

#### <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>

Add 'gwBodyIdentifier' property. Those classes that we expect to have their own identity should have this property added to make it clear that they are objects that we expect to persist in their own right. Will be replaced by gml:identifier in the GML Logical Model.

Add 'gwBodyDescription' property. Will be replaced by gml:description in the GML Logical Model.

Add 'gwBodyMetadata' property. To capture metadata information.

### <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> discussion

Should the top and bottom depths of the <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> be defined?

Should the volume of water in the management area be described? Or done via gwAreaFeature/<a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>?

Add 'gwAreaType' to capture different types of management areas.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 28 Feb 2014

------------------------------------------------------------------------

Bruce -- thanks for these 'clean-up' ideas. Below are some comments, for more discussion at the next meeting.

- Re: at identifier, description, and metadata attributes to Unit, Void, Fluid Body,a nd Management Area
  - disagree: I view 'Identifier' as a logical artifact not necessary for the CM, but likely in the LM (logical model)
  - agree: 'Description' and 'Metadata'. Note: these seem borderline for the CM, but we have them in other places.

<!-- -->

- Re: cardinality on 'name' changed to many
  - agree

<!-- -->

- Re: consistency of attribute names, i.e. prefixed with "gw"\*
  - agree

<!-- -->

- Re: Management Area
  - add Top/Bottom depths: do not need, already implied in the unit (thickness) or gwAreaShape; not always vertical (some are 2D geographical areas)
  - capture volume of fluid in management area: propogated indirectly via Unit (connected to fluid body)... do we need direct link to fluid body?
  - add type of management area: this sounds like it should be included.

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>

## <a href="GW_Flow" class="wikilink">GW_Flow</a> referencing

The concern I started to raise at meeting 16 was to do with the self-referential aspects of <a href="GW_Flow" class="wikilink">GW_Flow</a> and <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>.

An xml implementation of the current Conceptual Model would have references to 4 potentially separate <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> and 8 potentially separate <a href="GW_Flow" class="wikilink">GW_Flow</a> features, not including circular referencing:

```
<GW_HydrogeoUnit>
  <gwUnitDischarge>
    <GW_OutFlow> <!-- GW_OutFlow is a subtype of GW_Flow (= GW_Flow 1) -->
      <gwFlowBody>
        <GW_FluidBody> <!-- GW_Flow contains a property specifying the GW_FluidBody -->
          <gwBodyFlow>
            <GW_Flow> <!-- GW_FluidBody contains a property specifying the GW_Flow (= GW_Flow 2) -->
            </GW_Flow>
          </gwBodyFlow>
        </GW_FluidBody>
      </gwFlowBody>
    </GW_OutFlow>
  </gwUnitDischarge>
  <gwUnitRecharge>
    <GW_InFlow> <!-- GW_InFlow is a subtype of GW_Flow (= GW_Flow 3) -->
      <gwFlowBody>
        <GW_FluidBody> <!-- GW_Flow contains a property specifying the GW_FluidBody -->
          <gwBodyFlow>
            <GW_Flow> <!-- GW_FluidBody contains a property specifying the GW_Flow (= GW_Flow 4) -->
            </GW_Flow>
          </gwBodyFlow>
        </GW_FluidBody>
      </gwFlowBody>
    </GW_OutFlow>
  </gwUnitRecharge>
  <gwUnitWaterBudget>
    <GW_WaterBudget>
      <gwBudgetDischarge>
        <GW_Flow> <!-- (= GW_Flow 5) -->
          <gwFlowBody>
            <GW_FluidBody> <!-- GW_Flow contains a property specifying the GW_FluidBody -->
              <gwBodyFlow>
                <GW_Flow> <!-- GW_FluidBody contains a property specifying the GW_Flow (= GW_Flow 6) -->
                </GW_Flow>
              </gwBodyFlow>
            </GW_FluidBody>
          </gwFlowBody>
        </GW_Flow>
      </gwBudgetDischarge>
      <gwBudgetRecharge>
        <GW_Flow> <!-- (= GW_Flow 7) -->
          <gwFlowBody>
            <GW_FluidBody> <!-- GW_Flow contains a property specifying the GW_FluidBody -->
              <gwBodyFlow>
                <GW_Flow> <!-- GW_FluidBody contains a property specifying the GW_Flow (= GW_Flow 8) -->
                </GW_Flow>
              </gwBodyFlow>
            </GW_FluidBody>
          </gwFlowBody>
        </GW_Flow>
      </gwBudgetRecharge>
    </GW_WaterBudget>
  </gwUnitWaterBudget>
</GW_HydrogeoUnit>
```

------------------------------------------------------------------------

This may well be correct, but will require careful explaining with examples for implementers.

## <a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>

<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>:gwBudgetDischarge uses <a href="GW_Flow" class="wikilink">GW_Flow</a> as data type. Should this be specifically <a href="GW_OutFlow" class="wikilink">GW_OutFlow</a>? Similarly gwBudgetRecharge:<a href="GW_Flow" class="wikilink">GW_Flow</a> and <a href="GW_InFlow" class="wikilink">GW_InFlow</a>.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 23 Apr 2014

- TOPICINFO{author="<a href="BruceSimons" class="wikilink">BruceSimons</a>" comment="save topic" date="1398225931" format="1.1" reprev="26" version="26"}

<!-- -->

- TOPICPARENT{name="GWML2-CM-Model"}

<!-- -->

- FILEATTACHMENT{name="<a href="HydrogeoUnit" class="wikilink">HydrogeoUnit</a>-<a href="HydrogeoVoid_BS" class="wikilink">HydrogeoVoid_BS</a>.jpg" attachment="<a href="HydrogeoUnit" class="wikilink">HydrogeoUnit</a>-<a href="HydrogeoVoid_BS" class="wikilink">HydrogeoVoid_BS</a>.jpg" attr="" comment="Proposed <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> - <a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a> association class" date="1387413968" path="<a href="HydrogeoUnit" class="wikilink">HydrogeoUnit</a>-<a href="HydrogeoVoid_BS" class="wikilink">HydrogeoVoid_BS</a>.jpg" size="109482" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML2_CM_0" class="wikilink">GWML2_CM_0</a>.23_meeting10_revisions2.jpg" attachment="<a href="GWML2_CM_0" class="wikilink">GWML2_CM_0</a>.23_meeting10_revisions2.jpg" attr="" comment="Groundwater properties CM 0.23" date="1390249257" path="<a href="GWML2_CM_0" class="wikilink">GWML2_CM_0</a>.23_meeting10_revisions2.jpg" size="93973" user="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" version="1"}
