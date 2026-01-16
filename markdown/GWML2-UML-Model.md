# **GWML2 GML Logical Model**

- SVN (subversion) repository for GWML2 Logical Model: <https://xp-dev.com/svn/gwml2>

## **Issues - Resolved\<br /\>**

I have prepared initial version of UML model for GWML 2.0. I think it is good start point for discussion about our further works. It in EAP file is attached below ( [GW2IE_GWML_v2.0.initial.zip](%ATTACHURL%/GW2IE_GWML_v2.0.initial.zip) ). All class diagrams are in docx file ( [GWML_v.2.0.initial_Diagrams.docx](%ATTACHURL%/GWML_v.2.0.initial_Diagrams.docx) ).

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 08 Apr 2013

I've attached a zipped version of the xmi for the GWML2 logical model that we produced at Vienna. This still requires checking all the stereotypes, tagged values (including sequenceNumber) and association types prior to generating the XSD.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 13 May 2014

------------------------------------------------------------------------

### Springs - Resolved

Some issues with the <a href="GW_Spring" class="wikilink">GW_Spring</a> feature in the logical model:

\<img alt="<a href="GW_Spring" class="wikilink">GW_Spring</a>.jpg" height="211" src="%ATTACHURL%/<a href="GW_Spring" class="wikilink">GW_Spring</a>.jpg" title="<a href="GW_Spring" class="wikilink">GW_Spring</a>.jpg" width="296" /\>

What is the <a href="SpringConstruction" class="wikilink">SpringConstruction</a> data type? RESOLVED (see below)

What is the Geology Data type ( = <a href="GeoSciML" class="wikilink">GeoSciML</a>:<a href="GeologicUnit" class="wikilink">GeologicUnit</a>?) RESOLVED (<a href="GeoSciML" class="wikilink">GeoSciML</a>:<a href="GeologicFeature" class="wikilink">GeologicFeature</a>)

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 15 May 2014

Spring types are shown in the figure below, taken from Fetter C.W. 2001 Applied Hydrogeology, 4th ed., Prentice Hall

\<img alt="" height="484" src="%ATTACHURL%/springs.jpg" width="530" /\>

The Spring Geology relates to the geological outcrop at the eye of the spring. For example, the Contact Spring has a different geological unit above and below the spring.

The Spring Construction refers to the modification made at the spring eye, for example the addition of a hand pump, or bore, or concrete pit into which the spring flows, etc.

-- Main.<a href="PeterDahlhaus" class="wikilink">PeterDahlhaus</a> - 15 May 2014

At the moment the UML has a single <a href="GeoSciML" class="wikilink">GeoSciML</a>:<a href="GeologicUnit" class="wikilink">GeologicUnit</a> data type. From Peter's discussion this should probably be changed to <a href="GeoSciML" class="wikilink">GeoSciML</a>:<a href="GeologicFeature" class="wikilink">GeologicFeature</a> with 0..\* cardinality. This would enable describing the geology at the Spring fully (all <a href="GeologicUnits" class="wikilink">GeologicUnits</a>, their relationships to each other as well as any associated Geologic Structures such as faults Joints etc). DONE

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 15 May 2014

Can we reuse <a href="WellConstruction" class="wikilink">WellConstruction</a> ? I think so, but someone who knows about 'Spring Constructions' should check against the UML. -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 15 May 2014 RESOLVED (See below)

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 15 May 2014

------------------------------------------------------------------------

### Resolved Logical Model Issues

Known issues that need fixing prior to XSD generation:

1.  Circularity between Core and Wells. I'm not sure why <a href="GroundWaterML2" class="wikilink">GroundWaterML2</a> -Core is importing <a href="GroundWaterML" class="wikilink">GroundWaterML</a> -Well. The circularity needs to be removed somehow.
    - \_TO DO: Francois to review and advise at June 25 meeting \[BB 2014-06-10\]\_
    - \_TO DO: Well and Spring contain references to Core -- TBD \[BB 2014-06-25\]\_
    - \_TO DO: to be reviewed by Francois / Bruce \[BB 2014-07-07\]\_
    - \_RESOLVED: Generated new dependency diagrams and all 'looks' OK. Deleted dependency between gwml:Well and <a href="GeoSciML" class="wikilink">GeoSciML</a>:Borehole (presuming it was left over from Conceptual Model) \[BS 2014-07-08\]\_
    - ***\<img alt="<a href="GWML2PackageDependencies" class="wikilink">GWML2PackageDependencies</a>-July2014.jpg" src="%ATTACHURL%/<a href="GWML2PackageDependencies" class="wikilink">GWML2PackageDependencies</a>-July2014.jpg" title="<a href="GWML2PackageDependencies" class="wikilink">GWML2PackageDependencies</a>-July2014.jpg" /\>***
2.  <a href="GW_Spring" class="wikilink">GW_Spring</a>:gwSpringConstruction data type needs sorting out. Should it point to <a href="GroundWaterML2" class="wikilink">GroundWaterML2</a> -<a href="WellConstruction" class="wikilink">WellConstruction</a> feature <a href="WellConstruction" class="wikilink">WellConstruction</a>?
    - \_RESOLVED: data type = <a href="AnyType" class="wikilink">AnyType</a>; range of this property is too wide to fix to a limited set of terms, so opted for maximum flexibility \[BB 2014-06-10\]\_
3.  <a href="GroundWaterML2" class="wikilink">GroundWaterML2</a> -<a href="WellConstruction" class="wikilink">WellConstruction</a> feature property types and tagged values have not been fully checked.
    - \_RESOLVED: by Francois during Full-moon XSD generation \[BB 2014-06-10\]\_

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 15 May 2014

------------------------------------------------------------------------

More issues in the Logical Model:

- missing: def for gwConductivityConfinement
  - \_RESOLVED: not missing \[BB 2014-06-10\]\_
- missing: <a href="GW_FluidBodyChange" class="wikilink">GW_FluidBodyChange</a> in LM 1.0?
  - \_RESOLVED: not included, bad fit to use-cases... will test without and re-evaluate \[BB 2014-06-10\]\_
- removed: mixture type constraints for MaterialConstituent and BiologicConstituent
  - seemed too restricted, e.g. materials could be any non-solute (emulsions, colloids, precipitates, etc.)
  - questionable whether applies to biologic ?
  - set multiplicity to \[0...1\] ?
  - \_RESOLVED: changes accepted--removal of mixture and state constraints from constituent subtypes \[BB 2014-06-10\]\_
- use O&M for constituent values
  - then <a href="GW_ChemicalConstituent" class="wikilink">GW_ChemicalConstituent</a>, etc., are features-of-interest for the observation,
  - \_RESOLVED: \[BB 2014-06-10\]\_
    - \_GW_ChemicalConstituent is FOI with ChemicalTypeTerm = "As", ObservedProperty is <a href="As_Concentration_" class="wikilink">As_Concentration_</a>
    - \_distinguishes between different mixtures or states for the same constituent type\_
    - \_distinguishes between different measurement types, i.e. not just concentration\_
    - \_enables relations between constituents\_

-- Main.<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>

More issues in the Logical Model:

- <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>:gwAreaYield property has description:\<br /\>"Type of yields (of the aquifer or management area): e.g. specific yield, safe yield, license yield etc. but excludes well yield. TBD"\<br /\>However, the DataType is <a href="OM_Measurement" class="wikilink">OM_Measurement</a>, indicating it should be the actual yield measurement (value). \<br /\>Do we need another property capturing the gwYieldType, or do we intend using the <a href="OM_Observation" class="wikilink">OM_Observation</a>:parameter property to capture the yield type?
  - \_RESOLVED: we discussed using the parameter property for all such attributes \[BB - 2014-06-04\]\_
- What is <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>:gwAreaWaterBudget for? There are no notes in the Logical Model.Does this relate to <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>:gwAreaYield?
  - \_RESOLVED: this is a water budget for the management area (which can be distinct from an aquifer); not yield, it represents the net flow balance in the area \[BB - 2014-06-04\]\_
- I'm not sure how to encode administrative licencing information (e.g. licence under which drilling took place). The <a href="MD_Metadata" class="wikilink">MD_Metadata</a> model looks like it only deals with data release licencing. Do we need a <a href="GW_Well" class="wikilink">GW_Well</a>:gwLicence property?
  - \_TO DO: Francois and Bruce to review and advise at next meeting (June 25) \[BB 2014-06-10\]\_
    - \_TO DO: review Regulation package and possible inclusion of <a href="ManagementArea" class="wikilink">ManagementArea</a> \[BB 2014-06-25\]\_
    - \_PROPOSAL: \[FL 2014-06-25\]:\_ \<br /\>
      - \<img alt="<a href="GWML2_CM_" class="wikilink">GWML2_CM_</a>-\_Regulation.jpg" height="105" src="%ATTACHURL%/<a href="GWML2_CM_" class="wikilink">GWML2_CM_</a>-\_Regulation.jpg" title="<a href="GWML2_CM_" class="wikilink">GWML2_CM_</a>-\_Regulation.jpg" width="227" /\>

The Regulation package should enable:

- Identifier of the licence to extract groundwater;
- The amount of groundwater that may be extracted under the licence;
- Identifier of the licence to use groundwater;
- The amount of groundwater that may be used under the licence;
- I understand that these licences may be associated with either individual water wells, springs, collections of wells, management areas or aquifers.
- PROPOSAL: \[BS 2014-07-07\]
  1.  Incorporate <a href="GW_Licence" class="wikilink">GW_Licence</a> into <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>;
  2.  Rename '<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>' to <a href="GW_ManagementFeature" class="wikilink">GW_ManagementFeature</a>'
      - \<img alt="<a href="GWML2LM" class="wikilink">GWML2LM</a>-management.jpg" height="310" src="%ATTACHURL%/<a href="GWML2LM" class="wikilink">GWML2LM</a>-management.jpg" title="<a href="GWML2LM" class="wikilink">GWML2LM</a>-management.jpg" width="420" /\>
  3.  Redefine <a href="GW_ManagementFeature" class="wikilink">GW_ManagementFeature</a>:
      - "Area of ground, spring, water well, collection of water wells, or aquifer identified for groundwater management purposes and can be delineated by human factors such as policy or regulation concerns, as well as hydrogeological or hydrological concerns. Does not necessarily align exactly with hydrogeoogical or hydrological boundaries."
  4.  Move <a href="GW_ManagementFeature" class="wikilink">GW_ManagementFeature</a> to Regulation package (The proposed GWML2-Regulation package would be dependent on GWML2-Core. Therefore would need to make <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>:gwManagementArea property byReference to avoid circularity)
- \_TO DO: to be revised as per below by Bruce / Francois \[BB 2014-07-07\] DONE \[BS 2014-07-08\]\_
  - \_do not rename <a href="GW_ManagementArea_" class="wikilink">GW_ManagementArea_</a>
  - \_include <a href="GW_Licence" class="wikilink">GW_Licence</a> in Core package, remove Regulation package\_
  - \_add valid time variable to <a href="GW_Licence_" class="wikilink">GW_Licence_</a>
  - \_add relations between <a href="GW_Licence" class="wikilink">GW_Licence</a> and geohydrounit, wells, springs, management area\_
- \_RESOLVED \[BS 2014-07-08\]\_
  - \_Moved <a href="GW_Licence" class="wikilink">GW_Licence</a> to GWML2-<a href="Core_" class="wikilink">Core_</a>
  - \_Changed <a href="GW_Licence" class="wikilink">GW_Licence</a> steretype to <a href="DataType_" class="wikilink">DataType_</a>
  - *renamed associatedGWVolume to gwAssociatedGWVolume, changed Scope to 'Public', set sequenceNumber =3, set stereotype to \<\<property\>\>, \<\<voidable\>\>, \<br /\>*
  - *renamed licenceID to gwLicenceID, changed Scope to 'Public', set sequenceNumber =1, set stereotype to \<\<property\>\>, changed <a href="DataType" class="wikilink">DataType</a> from 'char' to '<a href="CharacterString" class="wikilink">CharacterString</a>'\<br /\>*
  - r*enamed purpose to gwPurpose, changed Scope to 'Public', set sequenceNumber =2, set stereotype to \<\<property\>\>, \<\<voidable\>\>, changed <a href="DataType" class="wikilink">DataType</a> from 'char' to '<a href="CharacterString" class="wikilink">CharacterString</a>'*
  - \_Added <a href="GW_Licence" class="wikilink">GW_Licence</a>:gwTimePeriod, <a href="DataType" class="wikilink">DataType</a> = <a href="TimeRange_" class="wikilink">TimeRange_</a>
  - \_Added <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>:gwAreaLicence, sequenceNumber = 9\_
  - \_Added <a href="GW_Well" class="wikilink">GW_Well</a>:gwWellLicence, <a href="DataType" class="wikilink">DataType</a> = <a href="GW_Licence" class="wikilink">GW_Licence</a>, sequenceNumber = 14 (renumbered gwWellGeology sequenceNumber to 15)\_
    - *TODO: Should <a href="GW_Licence" class="wikilink">GW_Licence</a> also be used for the 'licence to drill'? If so gwAssociatedGWVolume to use nilReason = 'inapplicable'?****\<br /\>***
    - \_RESOLVED: changed to 0...n cardinality for multiple different types of licences \[BB 2014-07-30\]\_
  - \_Added <a href="GW_Spring" class="wikilink">GW_Spring</a>:gwSpringLicence, <a href="DataType" class="wikilink">DataType</a> = <a href="GW_Licence" class="wikilink">GW_Licence</a>, sequenceNumber = 11\_
  - \_NOTE: Didn't add <a href="GW_Licence" class="wikilink">GW_Licence</a> to <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> (covered by <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>:gwAreaLicence)\_
- RESOLVED \[FL 2014-07-09\]
  - \_Removed\_ Regulation applicationSchema

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 07 Jul 2014

- ScreenComponent:nominalscreenDiameter property has description:\<br /\>"Value of the nominal screen diameter (thickness of the screen rim)."\<br /\>The part in brackets is confusing suggesting it is the same as the screenThickness ("Thickness of the screen walls.") Presumably it is meant to represent the outside diameter of the screen?
  - \_RESOLVED: refers to external diameter; renamed to ScreenComponent:screenExternalDiameter \[BB 2014-06-10\]\_
- CasingComponent:nominalPipeDimension property has description:\<br /\>"Value of the pipe dimension of the casing."\<br /\>Presumably this is meant to represent the outside diameter of the casing. Rename property to outsideCasingDiameter (or inside if that is more common)).
  - \_TO DO: proposal: change to external diameter and rename casingExternalDiameter? \[BB 2014-06-25\]\_
  - \_RESOLVED: see below, Jessica's comment.\_
- Casing and Screen components have a diameter (dimension) property and a thickness property. Should we have inside and outside diameters instead to avoid confusion asto which diameterit is (which is what NGIS has)?
  - \_RESOLVED: see above. \[BB 2014-06-25\]\_

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 03 Jun 2014

Following up on the screen dimensions question. In our national database (NWIS) we record the length of the screen and a single diameter. Most often this is the inner diameter, but sometimes people enter the outer diameter. This is obviously a problem for data interpretation. The screen thickness is not recorded. \*

- \_TO DO: proposal: include both internal and external diameter, voidable \[BB 2014-06-25\]\_
  - it seems our dbs contain every possible combination of inner / outer diameter and thickness
- *RESOLVED: include all of external diameter, internal diameter, and thickness; all voidable; for screen and casing, e.g. "casingExternalDiameter"; all datatype = Quantity. To be changed by Bruce / Francois \[BB 2014-07-07\] DONE\[BS 2014-07-08\]****\<br /\>***
- \_Changed screenThickness to screenWallThickness\_
- \_Changed <a href="CasingComponent" class="wikilink">CasingComponent</a>:casingPipeDimension to casingExternalDiameter\_
- *Added <a href="CasingComponent" class="wikilink">CasingComponent</a>:casingInternalDiameter \<br /\>*
- \_Re-ordered <a href="CasingComponent" class="wikilink">CasingComponent</a> properties sequenceNumbers\_
- \_Added <a href="ScreenComponent" class="wikilink">ScreenComponent</a>:screenInternalDiameter\_
- \_Re-ordered <a href="ScreenComponent" class="wikilink">ScreenComponent</a> sequenceNumbers\_
- \_Added \<\<property\>\>, \<\<voidable\>\>\_ \_stereotypes\_
- *TODO: Check and add appropriate stereotypes and tagged values to all properties (Francois)****\<br /\>***
- \_RESOLVED: done \[BB 2014-07-30\]\_

-- Main.<a href="JessicaLucido" class="wikilink">JessicaLucido</a> - 13 Jun 2014

- \<span style="background-color: transparent;"\><a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>/gwUnitDischarge can contain both <a href="GW_Recharge" class="wikilink">GW_Recharge</a> and <a href="GW_Discharge" class="wikilink">GW_Discharge</a> (because it points to the parent class). Rename property to "flow" and allow recharge and discharge and interflow in a single property or constrain gw_UnitRecharge and gw_UnitDischarge properly ?\</span\>
  - *\<span style="background-color: transparent;"\>TO DO: proposal: hydrogeoUnit discharge/recharge should have datatype <a href="GW_Discharge" class="wikilink">GW_Discharge</a> / <a href="GW_Recharge" class="wikilink">GW_Recharge</a> \[BB 2014-06-25\</span\>*
  - *\<span style="background-color: transparent;"\>RESOLVED: accepted. To be changed by Bruce / Francois \[BB 2014-07-07\] DONE \[BS 2014-07-\</span\>\<span style="background-color: transparent;"\>08\]\</span\>*
- \_GW_WaterBudget has gwBudgetDischarge and gwBudgetRecharge both with data types <a href="GW_InterFlow" class="wikilink">GW_InterFlow</a>.\_
  - \_To DO: Should these be changed to <a href="GW_Discharge" class="wikilink">GW_Discharge</a> and <a href="GW_Recharge" class="wikilink">GW_Recharge</a>? \[BS 2014-07-09\]\_
  - \_RESOLVED: changed to <a href="GW_Discharge" class="wikilink">GW_Discharge</a> and <a href="GW_Recharge" class="wikilink">GW_Recharge</a>? \[BB 2014-07-30\]\_
- \<img alt="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.jpg" height="177" src="%ATTACHURL%/<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.jpg" title="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.jpg" width="312" /\>
- \<span style="background-color: transparent;"\>properties are ordered alphabetically, therefore you have (in the XML document), gwUnitDischarge, then unitMedia, then Recharge. not a huge issue, just not intuitive. \</span\>
  - *\<span style="background-color: transparent;"\>TO DO: proposal: correct sequence of properties to conform to UML \[BB 2014-06-25\]\</span\>*
  - *\<span style="background-color: transparent;"\> \_RESOLVED: accepted. To be changed by Bruce / Francois \[BB 2014-07-07\] DONE \[BS 2014-08-07\]\_ \</span\>*
- \<span style="background-color: transparent;"\><a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>/gwBodyDescription is redundant since Feature already have gml:description\</span\>
  - *\<span style="background-color: transparent;"\>TO DO: proposal: remove gwBodyDescription \[BB 2014-06-25\]\</span\>*
  - *\<span style="background-color: transparent;"\> \_RESOLVED: accepted. To be changed by Bruce / Francois \[BB 2014-07-07\] DONE \[BS 2014-08-07\]\_ \</span\>*
- \<span style="background-color: transparent;"\>Hydrogeounit cannot be part of an aquiferSystem.\</span\>
  - \_\_RESOLVED: not changed, prevents Basin from being part of AquiferSystem; HydrogeoUnit made abstract... to be tested \[BB 2014-06-10\]\_
- \<span style="background-color: transparent;"\>Encoding of <a href="GW_WaterWell" class="wikilink">GW_WaterWell</a>.shape. It's a line string representing the path of the line. Many options with various pros and cons. 1D = simple, 3D relative = verbose, but can handle non vertical, 3D absolute also, but issue with coordinate mix (degree and meters, so 2 EPSG required)\</span\>
  - \<literal\>\<span class='TMLhtml' style='background-color: transparent;'\>1D relative to collar \<gml:<a href="LineString" class="wikilink">LineString</a> gml:id="ab.ww.402557.shape.1" srsDimension="1" srsName="#ab.ww.402557" axisLabels="depth"\>\<gml:posList\>0.00 11.58\</gml:posList\>\</gml:<a href="LineString" class="wikilink">LineString</a>\>\</span\>\</literal\>
  - \<literal\>\<span class='TMLhtml' style='background-color: transparent;'\>3D relative to collar \<gml:<a href="LineString" class="wikilink">LineString</a> gml:id="ab.ww.402557.shape.1" srsDimension="3" srsName="#ab.ww.402557" axisLabels="depth"\>\<gml:posList\>0.00 0.00 0.00 0.00 0.00 11.58\</gml:posList\>\</gml:<a href="LineString" class="wikilink">LineString</a>\>\</span\>\</literal\>
  - \<literal\>\<span class='TMLhtml' style='background-color: transparent;'\>3D absolute \<gml:<a href="LineString" class="wikilink">LineString</a> gml:id="ab.ww.402557.shape.1" srsDimension="3" srsName="EPSG:4326 EPSG:XXXX" axisLabels="depth"\>\<gml:posList\>49.671622 -114625045 0.00 49.671622 -114625045 1725.78\</gml:posList\>\</gml:<a href="LineString" class="wikilink">LineString</a>\>\</span\>\</literal\>
  - *\<span style="background-color: transparent;"\>TO DO: TBD \[2014-06-25\]\</span\>*
  - *\<span style="background-color: transparent;"\>TO DO: Eric to review \[BB 2014-07-07\]\</span\>*
    - CR sent by is a slightly different but related issue. The case they describe is where the shape of the borehole is actually describe is absolute 3D and the shape used by <a href="MappedInterval" class="wikilink">MappedInterval</a> refers to the <a href="LineString" class="wikilink">LineString</a> as a relative SRS. In GWML 2.0, we don't use geometries in <a href="LogInterval" class="wikilink">LogInterval</a>, but from/to pair (note, <a href="GeoSciML" class="wikilink">GeoSciML</a> 4 changed <a href="MappedInterval" class="wikilink">MappedInterval</a> to from/to as well). So, if we follow the <a href="GeoSciML" class="wikilink">GeoSciML</a> pattern, bore path should be defined in Absolute 3D (see this example)
  - RESOLVED: encoded as 3D absolute, following <a href="GeoSciML" class="wikilink">GeoSciML</a> \[BB 2014-07-30\]
- \<span style="background-color: transparent;"\>Total well depth = total well length\</span\>
  - *\<span style="background-color: transparent;"\>RESOLVED: in wells Bruce/Francois rename wellTotalDepth to wellTotalLength \[BB 2014-07-07\] D\</span\>\<span style="background-color: transparent;"\>ONE \[BS 2014-08-07\]\</span\>*
- Borehole has logElement that interferes with <a href="GW_Well" class="wikilink">GW_Well</a> Discrete coverage encoding for logs (will need a requirement clause in the documentation)
  - \_TO DO: TBD \[2014-06-25\]\_
    - \_I'm not sure what the problem is here. The only 'Borehole' I can find in GWML2-Well is gwWellConstruction:Borehole that is from GWML2-<a href="WellConstruction" class="wikilink">WellConstruction</a>, not <a href="GeoSciML" class="wikilink">GeoSciML</a>;Borehole. Therefore there is no link to <a href="GeoSciML" class="wikilink">GeoSciML</a>:logElement \[<a href="BS_" class="wikilink">BS_</a> \_2014-07-08\]\_
  - \_RESOLVED: changed to GWML2 Borehole construction type \[BB 2014-07-30\]\_
- <a href="GW_Well" class="wikilink">GW_Well</a>/gwWellTotalLength is of type Observation. A full observation ? really ?
  - \_TO DO: TBD, note: current datatype = <a href="OM_Measurement" class="wikilink">OM_Measurement</a>) \[BB 2014-06-25\]\_
  - *RESOLVED: Changed to <a href="DataType" class="wikilink">DataType</a> = swe:Quantity (based on externalDiameter discussion 2014-07-07 \[BS 2014-08-07\]\<br /\>*

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 09 Jun 2014

OK, one more problem in the logs. We are supposed to override <a href="CV_ElementValuePair" class="wikilink">CV_ElementValuePair</a> "à la <a href="WaterML" class="wikilink">WaterML</a> 2.0" and replace it with out <a href="LogValue" class="wikilink">LogValue</a> (which remove the geometry and replaces it with fromDepth/toDepth).

```
<gww:GW_GeologyLog gml:id="ab.ww.402557.log.1">
      <om:phenomenonTime>
        <gml:TimeInstant gml:id="ab.ww.402557.log.1.ph">
          <gml:timePosition>1981-09-12T00:00:00</gml:timePosition>
        </gml:TimeInstant>
      </om:phenomenonTime>
      <om:resultTime>
        <gml:TimeInstant gml:id="ab.ww.402557.log.1.rs">
          <gml:timePosition>1981-09-12T00:00:00</gml:timePosition>
        </gml:TimeInstant>
      </om:resultTime>
      <om:procedure xsi:nil="true" nilReason="unknown"/>
      <om:observedProperty xlink:href="http://some.vocab.org/WaterWell/Lithology" xlink:title="Lithology"/>
      <om:featureOfInterest xsi:nil="true" nilReason="missing"/>
      <om:result>
        <cv:CV_DiscreteElementCoverage>
          <cv:domainExtent>
            <gmd:EX_Extent>
              <gmd:description>
                <gco:CharacterString>Extent of the log</gco:CharacterString>
              </gmd:description>
            </gmd:EX_Extent>
          </cv:domainExtent>
          <cv:rangeType xlink:href="http://nil"/>
          <cv:element>
          <!-- this bit should be a LogValue -->
            <cv:CV_ElementValuePair>
              <cv:geometry/>
              <cv:value/>
            </cv:CV_ElementValuePair>
          </cv:element>
        </cv:CV_DiscreteElementCoverage>
      </om:result>
    </gww:GW_GeologyLog>
```

right now, the xsd force a <a href="CV_ElementValuePair" class="wikilink">CV_ElementValuePair</a>. Peter Taylor sent me some documentation on how to override this constrain, which I'm the process of reading. \*

- \_RESOLVED: manually change XSD to replace <a href="CV_ElementValuePair" class="wikilink">CV_ElementValuePair</a> with <a href="LogValue" class="wikilink">LogValue</a> \[BB 2014-06-25\]\_ \* Also, there is a result property between <a href="GW_GeologicLog" class="wikilink">GW_GeologicLog</a> and <a href="CV_DiscreteElementCoverage" class="wikilink">CV_DiscreteElementCoverage</a> that duplicates <a href="OM_Observation" class="wikilink">OM_Observation</a>'s result (<a href="GW_GeologicLog" class="wikilink">GW_GeologicLog</a> is a subtype of <a href="OM_Observation" class="wikilink">OM_Observation</a>)
- \_TODO: Resolve duplicate Result property\_
- \_RESOLVED: \[BB 2014-07-30\]\_ \* endDepth and startDepth property are in inverse order (more logical to have start and end)
- \_TO DO: proposal: change end start order; TBD--result property \[BB 2014-06-25\]\_
- *<a href="RESoLVED" class="wikilink">RESoLVED</a>: \[BS 2014-07-08\]****\<br /\>***

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 13 Jun 2014

### gwUnitVulnerability

<a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>:gwUnitVulnerability (description = "The susceptibility of the aquifer to specific threats such as various physical events (earthquakes), human processes (depletion), etc.")\<br /\>has a data type <a href="OM_Measurement" class="wikilink">OM_Measurement</a>.

Will the result be a swe:Quantity or a swe:<a href="QuantityRange" class="wikilink">QuantityRange</a> or either?

Will the type of vulnerability be specified using om:observedProperty (om:observedProperty = "earthquake vulnerability"?)?

- \_TO DO: TBD--result datatype; proposal: as per the pattern, soft types to be represented with om:observedProperty \[BB 2014-06-25\]\_
- \_RESOLVED: changed to <a href="OM_Observation" class="wikilink">OM_Observation</a> \[BB 2014-07-30\]\_

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 23 Jun 2014

### gwVoidHostMaterial

The description of gwVoidHostMaterial has "The material that hosts the void. Note voids can be hosted by a unit (an aquifer) or its material (e.g. sandstone).". The <a href="DataType" class="wikilink">DataType</a> associated with gwVoidHostMaterial is gsml:<a href="EarthMaterial" class="wikilink">EarthMaterial</a>, which does not allow using gwml2:Aquifer.

- \<p\> \_TO DO: proposal: do not change model, but reword gwVoidHostMaterial definition to reflect model: \[BB 2014-06-25\]\_ \</p\>

\_\_"The material that hosts the void. Note voids are always hosted by an unit (e.g. an aquifer) and can sometimes be specifically hosted by a particular material in the unit (e.g. sandstone)."\_\_

- \_RESOLVED: SUGGEST FOLLOWING: \[BS 2014-07-07\]\_

\_\_"The material that hosts the void. Note voids are always hosted by an unit (e.g. an aquifer) specified by the gwVoidUnit property. gwVoidHostMaterial allows describing a particular material in the unit (e.g. sandstone) that is hosting the void."\_\_

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 23 Jun 2014

### <a href="GW_BodySurface" class="wikilink">GW_BodySurface</a>

<a href="GW_BodySurface" class="wikilink">GW_BodySurface</a> has an (unspecified) mandatory association with <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>. This makes sense and should be formally specified in the model (cardinality = 1..1).

<a href="GW_Divide" class="wikilink">GW_Divide</a> has an (unspecified) mandatory association with <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>. Should a divide be between two fluid surfaces (2.2), can it be a divide within a single surface (1..2) or even not be related to any fluid body surfaces (0..2)?

- \_RESOLVED: unchanged. \[BB 2014-07-30\]\_

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 07 Jul 2014

### <a href="GW_Well" class="wikilink">GW_Well</a>

- *\<span style="background-color: transparent;"\><a href="GW_Well" class="wikilink">GW_Well</a> has a gwWellProperty that duplicates relatedObservation property (inherited from <a href="SamplingFeature" class="wikilink">SamplingFeature</a>)\</span\>*
- *\<span style="background-color: transparent;"\>RESOLVED: duplicate removed \[BB 2014-07-30\]\</span\>*

### \<span style="background-color: transparent;"\><a href="OM_Measurement" class="wikilink">OM_Measurement</a>\</span\>

- \<p\>*\<span style="background-color: transparent;"\>TO DO: Replace <a href="OM_Measurement" class="wikilink">OM_Measurement</a> Data Type with <a href="OM_Observation" class="wikilink">OM_Observation</a> \[BS 2014-09-07\]\</span\>*\</p\>
- \<p\>*\<span style="background-color: transparent;"\>RESOLVED: done for Vulnerability, otherwise remainder are quantities, non-categorical \[BB 2014-07-30\]\</span\>*\</p\>

### \<span style="background-color: transparent;"\><a href="GW_FlowSystem" class="wikilink">GW_FlowSystem</a>\</span\>

- *\<span style="background-color: transparent;"\><a href="GW_FlowSystem" class="wikilink">GW_FlowSystem</a>.gwFlowSystemPart is unidirectional (parent -\> child), therefore, cannot tell parent system from sub system , Also, do we assume that a child system can only be part of 0..1 parent (as opposed to 0..\*) ? **\[EB 2014-07-10\]**\</span\>*
- *\<span style="background-color: transparent;"\>RESOLVED: all parts to be made bi-directional \[BB 2014-07-30\]\</span\>*

### <a href="GW_MonitoringSite" class="wikilink">GW_MonitoringSite</a>

- Should be subclass of <a href="SF_SamplingFeature" class="wikilink">SF_SamplingFeature</a> - (or shall we use <a href="WaterML" class="wikilink">WaterML</a> 2.0 <a href="MonitoringPoint" class="wikilink">MonitoringPoint</a> ?) **\[EB 2014-07-10\]**
- \_RESOLVED: used <a href="SF_SamplingFeature" class="wikilink">SF_SamplingFeature</a> \[BB 2014-07-30\]\_

### <a href="GW_GeologyLog" class="wikilink">GW_GeologyLog</a>

- In scope note of <a href="GW_GeoloyLog" class="wikilink">GW_GeoloyLog</a> "*\<span style="background-color: transparent;"\>For Stratigraphic logs the observedProperty will be a <a href="GeoSciML" class="wikilink">GeoSciML</a>:<a href="GeologicUnit" class="wikilink">GeologicUnit</a>/name. \</span\>*\<span style="background-color: transparent;"\>*For Lithologic logs the observedProperty will be a <a href="GeoSciML" class="wikilink">GeoSciML</a>:<a href="GeologicUnit" class="wikilink">GeologicUnit</a>/composition/<a href="CompositionPart" class="wikilink">CompositionPart</a>/materia*l." This implies that logs are either all lith or all units (because this is stated at the <a href="GeologyLog" class="wikilink">GeologyLog</a> level). We all know it's not true (I often see Clay,Sand,Gravel,XXX Group).\</span\>
- <a href="LogValue" class="wikilink">LogValue</a> value property in the UML is of type Record (swe:Record). <a href="FullMoon" class="wikilink">FullMoon</a> transformed it into a <a href="CodeType" class="wikilink">CodeType</a> (a String + codeSpace). Record is a softype structure to organise content. Not sure what is the original intent, just keep a String (so, fix the UML) or we really want a Record (fix the UML-\>XSD). **\[EB 2014-07-16\]**
- \_RESOLVED: create a realisation on <a href="CV_DiscreteCoverage" class="wikilink">CV_DiscreteCoverage</a> (<a href="GW_GeologyLogCoverage" class="wikilink">GW_GeologyLogCoverage</a>) to implement the realisation. \*\[EB 2014-07-16\]\*\_

### Requirements

Draft proposed requirements at <a href="LogicalModelRequirements" class="wikilink">LogicalModelRequirements</a>

- \_TO DO: "GWML-Core" package name conflicts with "Core" requirements.Proposal rename package to one of: "GWML2-Groundwater", "GWML-Hydrogeology", "GWML-GW", "GWML2-Main"\_
- \_RESOLVED: rename to "GEML2-Nucleus" \[BB 2014-07-30\]\_

### \<span style="color: \#339900; font-size: 19px; line-height: 1.1em; background-color: transparent;"\><a href="GW_Geology_Log" class="wikilink">GW_Geology_Log</a> Record encoding\</span\>

Here's how a Record works in SWE. Actually, swe calls it a <a href="DataRecord" class="wikilink">DataRecord</a> which is an encoding of ISO 11404 Record.

```
<?xml version="1.0" encoding="UTF-8"?>
<gww:LogValue xmlns:gww="http://www.opengis.net/gwml-well/2.0" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:sam="http://www.opengis.net/sampling/2.0" xmlns:sams="http://www.opengis.net/samplingSpatial/2.0" xmlns:gu="http://xmlns.geosciml.org/GeologicUnit/3.2" xmlns:gwml2="http://www.opengis.net/gwml-core/2.0" xmlns:gwml2f="http://www.opengis.net/gwml-flow/2.0" xmlns:gsmlem="http://xmlns.geosciml.org/EarthMaterial/3.2" xmlns:gsml="http://xmlns.geosciml.org/GeoSciML-Core/3.2" xmlns:gsmlpp="http://xmlns.geosciml.org/PhysicalProperties/3.2" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:swe="http://www.opengis.net/swe/2.0" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:bh="http://www.opengis.net/gwml-wellconstruction/2.0" xmlns:cv="http://www.opengis.net/cv/0.2/gml32" xmlns:om="http://www.opengis.net/om/2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/gwml-well/2.0 file:///T:/apache-tomcat-6.0.36/InstanceRies/webapps/service/gwml/schemas/gwml2-well_rec.xsd">
  <gww:fromDepth>
    <swe:Quantity>
      <swe:uom xlink:href="http://www.opengis.net/def/uom/UCUM/0/m"/>
      <swe:value>0.30</swe:value>
    </swe:Quantity>
  </gww:fromDepth>
  <gww:toDepth>
    <swe:Quantity>
      <swe:uom xlink:href="http://www.opengis.net/def/uom/UCUM/0/m"/>
      <swe:value>4.27</swe:value>
    </swe:Quantity>
  </gww:toDepth>
  <gww:value>
    <swe:DataRecord definition="http://this.is.where.the.schema.is.defined" id="a">
      <swe:field name="lithology">
        <swe:Text>
          <swe:value>Soil</swe:value>
        </swe:Text>
      </swe:field>
    </swe:DataRecord>
  </gww:value>
</gww:LogValue>
```

Note the gww:value bit. it contains a <a href="DataRecord" class="wikilink">DataRecord</a> with a definition attribute. This must contain a URI that leads to "the semantic definition of the precise nature of the component.", ie, to the schema, that can be described using SWE (defined in 08-094r1). There are lot of possibilities, for instance, replace the bland text with a category

```
<gww:value>
    <swe:DataRecord definition="http://this.is.where.the.schema.is.defined" id="a">
      <swe:field name="lithology">
        <swe:Category definition="ref to definition of EarthMaterial catagory">
          <swe:codeSpace xlink:href="geosciml codespace"/>
          <swe:value>Soil</swe:value>
        </swe:Category>
      </swe:field>
    </swe:DataRecord>
  </gww:value>
```

The definition of the schema (definition attribute) can be imposed in the spec and defined formally in a registry (like a vocabulary). This allows group to add their own structure an register their structure without changing the schema of GWML.

- \_RESOLVED: use swe:<a href="DataRecord" class="wikilink">DataRecord</a> as datatype \[BB 2014-07-30\]\_

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 23 Jul 2014

### Borehole

- *\<span style="background-color: transparent;"\>RESOLVED: accepted as below \[BB 2014-07-30\]\</span\>*
  - \<span style="background-color: transparent;"\>Borehole should also be a <a href="SF_SamplingCurve" class="wikilink">SF_SamplingCurve</a>\</span\>
  - Borehole would then have a shape to encode the geometry of the bore, required for non linear bores. If well and borehole share the same shape, borehole can refer to well's shape using \<shape xlink:href="#well_shape"/\>.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 28 Jul 2014

### Well::<a href="LogValue" class="wikilink">LogValue</a>:value/<a href="DataRecord" class="wikilink">DataRecord</a>:field/<a href="AnyData" class="wikilink">AnyData</a> is swe 1.0 - Resolved

The <a href="DataRecord" class="wikilink">DataRecord</a> used for GSML2:<a href="WellLogValue" class="wikilink">WellLogValue</a>:value is a swe 1.0 class. I think it should be the swe 2.0 equivalent. If so, the <a href="DataRecord" class="wikilink">DataRecord</a>:field property should use the <a href="AbstractDataComponent" class="wikilink">AbstractDataComponent</a> <a href="DataType" class="wikilink">DataType</a> rather than the <a href="AnyData" class="wikilink">AnyData</a> <a href="DatatYpe" class="wikilink">DatatYpe</a> we are currently using.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 29 Sep 2014

Could you clarify, my example validates with SWE 2.0

```
<?xml version="1.0" encoding="UTF-8"?>
<swe:DataRecord xmlns:swe="http://www.opengis.net/swe/2.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" definition="http://www.opengis.net/def/gwml/2.0/datarecord/earthMaterial" id="le.1" xsi:schemaLocation="http://www.opengis.net/swe/2.0 http://schemas.opengis.net/sweCommon/2.0/swe.xsd">

   <!-- this field is mandatory, the definition is the normative flag to identify this category has having the earthMaterial-->
      <swe:field name="lithology">
         <swe:Category definition="http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial">
            <swe:codeSpace xlink:href="http://resource.geosciml.org/classifierscheme/cgi/201211/simplelithology"/>
            <swe:value>Soil</swe:value>
         </swe:Category>
      </swe:field>
   <!-- this field is specific to this data provided -->
      <swe:field name="description">
         <swe:Text definition="http://www.opengis.net/def/gwml/2.0/datarecord/FreeText">
            <swe:value>Free text description of the soil unit</swe:value>
         </swe:Text>
      </swe:field>

</swe:DataRecord>
```

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 29 Sep 2014

### Optional vs. Mandatory (Nillable) properties - Resolved

#### Background

The intention of having mandatory properties in the UML is to show where properties are required for the model to be logically consistent. So, for example, a pore space or void (<a href="GW_HydrogeoVoid" class="wikilink">GW_HydrogeoVoid</a>) must have some surrounding material (the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>) so the property identifying the surrounding material (gwVoidUnit) has a cardinality of 1..\*, but the material need not contain voids, so the reverse property (gwUnitVoid) has a cardinality of 0..1. Similarly, a void may contain a fluid (the property gwVoidFluidBody with cardinality 0..1) but the fluid must be contained by voids (gwFluidBodyVoid cardinality of 1..1).

\<img alt="Cardinalities.jpg" height="344" src="%ATTACHURL%/Cardinalities.jpg" title="Cardinalities.jpg" width="531" /\>

Similarly, it is logically consistent for a spatial feature, such as the <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> to have a geometry property (gwAreaShape), or for fluids to have physical properties.

In order for data providers who may not be able to meet these mandatory requirements for a number of reasons (such as missing, confidential or unknown data), the mandatory values may be voidable. So in the UML there are 3 cases:

1.  The property is logically expected and not voidable {For example <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>/gwAreaShape}
2.  The property is logically expected but voidable {For example <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>/gwAreaFeature}
3.  The property is appropriate, but it may or may not be present {For example <a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>/gwAreaMetadata}

\<img alt="<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>.jpg" height="229" src="%ATTACHURL%/<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>.jpg" title="<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>.jpg" width="293" /\>

#### The Issue

The logical model cardinalities represent the conceptual requirements "and these would be used as constraints (say, schematron) for data exchange scenarios: ‘your submitted data is not acceptable as it does not include values for the following properties: …’ (Main.<a href="AlistairRitchie" class="wikilink">AlistairRitchie</a> 2014).

However, it does not meet the use case where the end-user may just be interested in a single property, such as the name of the <a href="GW_Aquifer" class="wikilink">GW_Aquifer</a> or the management area licence. Using the current GWML2 implementation all mandatory properties, including those which are voidable, will need to be returned, which substantially increases the volume of XML being delivered. This may be inappropriate for some applications, such as mobile devices.

With all properties optional, the user can query the WFS using the request=<a href="GetFeature" class="wikilink">GetFeature</a>, typeName={feature}, propertyName={attribute} to limit the content. For example requesting the complete <a href="GW_Well" class="wikilink">GW_Well</a> feature

\[WFS URI\]?service=wfs&version=2.0.0&request=<a href="GetFeature" class="wikilink">GetFeature</a>&count=1&typename=gww:<a href="GW_Well" class="wikilink">GW_Well</a> would return (with lots deleted at \<snip\>):

```
<gml:featureMember>
        <gww:GW_Well gml:id="feduni.borehole.51409">
            <gml:description>SOBN bore</gml:description>
            <gml:identifier codeSpace="http://www.ietf.org/rfc/rfc2616">http://groundwater.feduni.edu/borehole/feduni/51409</gml:identifier>
            <gml:name codeSpace="http://groundwater.feduni.edu/waterwell/oldboreid">093</gml:name>
            <gml:name codeSpace="http://groundwater.feduni.edu/waterwell/borecode">119330</gml:name>
            <gml:name codeSpace="http://groundwater.feduni.edu/waterwell/localborename">Ballarat 9037</gml:name>
            <gml:boundedBy>
                <gml:Envelope srsName="EPSG:4939">
                    <gml:pos srsDimension="2">139 -32</gml:pos>
                    <gml:pos srsDimension="2">143 -37</gml:pos>
                </gml:Envelope>
            </gml:boundedBy>
            <sam:sampledFeature xlink:href="http://groundwater.feduni.edu/hydrogeologicunit/feduni/feduni.hydrogeologicunit.newervolcanics" xlink:title="Newer Volcanics" xlink:role="stratigraphic name"/>
         <sam:relatedObservation>
                 <om:OM_Observation gml:id="feduni.borehole.51409.observation.44574.32328">
                     <om:phenomenonTime>
                        <gml:TimeInstant gml:id="feduni.borehole.51409.observation.44574.time">
                            <gml:timePosition>1997-07-14+12:00:00</gml:timePosition>
                        </gml:TimeInstant>
                    </om:phenomenonTime>
                    <om:resultTime xlink:href="#feduni.borehole.51409.observation.44574.time"/>
                    <om:procedure xlink:title="PUM"/>
                    <om:parameter>
                        <om:NamedValue>
                            <om:name xlink:href="http://www.opengis.net/req/gw_well/waterwell_sf_fromParam" xlink:title="from"/>
<snip>
                    <gww:endDepth>
                        <swe:Quantity>
                            <swe:uom xlink:href="http://www.opengis.net/def/uom/UCUM/0/m"/>
                            <swe:value>11.58</swe:value>
                        </swe:Quantity>
                    </gww:endDepth>
                </gww:GW_GeologyLog>
            </gww:gwWellGeology>
        </gww:GW_Well>
    </gml:featureMember>
```

Whereas selecting only a single property via \[WFS URI\]?service=wfs&version=2.0.0&request=<a href="GetFeature" class="wikilink">GetFeature</a>&count=1&typename=gww:<a href="GW_Well" class="wikilink">GW_Well</a>&propertyName=gml:name would return:

```
<gml:featureMember>
        <gww:GW_Well gml:id="feduni.borehole.51409">
            <gml:name codeSpace="http://groundwater.feduni.edu/waterwell/oldboreid">093</gml:name>
            <gml:name codeSpace="http://groundwater.feduni.edu/waterwell/borecode">119330</gml:name>
            <gml:name codeSpace="http://groundwater.feduni.edu/waterwell/localborename">Ballarat 9037</gml:name>
   </gww:GW_Well>
 </gml:featureMember>
```

However, with mandatory properties this second response would not be XML schema valid.

#### Proposal

The proposal is to change all mandatory properties to optional. This would require:

- systematically working through the GWML2 logical model and changing all 1..x cardinalities to 0..x;
- change all minOccurs="1" to minOccurs="0" in all the GWML2 schema;

An alternative is to only change some properties from mandatory to optional. However, given the three criteria currently used to determine cardinality (see 'Background' above), it is not clear what further criteria could be used to determine which properties should remain mandatory.

#### Concerns

1.  If all properties are optional, how do we meet the data exchange use case? Do we need two logical models and associated schema to identify the properties that should be mandatory for data exchange and another set for the optional view;
2.  Is schema validation a necessary requirement for the optional use case?
3.  Mandatory properties inherited from imported features (<a href="OM_Observation" class="wikilink">OM_Observation</a>, <a href="GeologicUnit" class="wikilink">GeologicUnit</a>, etc) will still be mandatory, so a single property response is still likely to be XML schema invalid.

Given these concerns, is the best option to leave the model as is and just recognise that some uses of GWML2 will use invalid XML schema responses?

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 17 Nov 2014 {This proposal and the issues presented here resulted from a number of conversations with Main.<a href="AlistairRitchie" class="wikilink">AlistairRitchie</a> of Landcare Research NZ}

\>If all properties are optional, how do we meet the data exchange use case?

Ok, here a proposition, Maybe the pattern should be

- XSD is essentially there to control the syntax "If you have this property, this is where is goes". All properties are optional.
- Use case requirements are expressed in a Rule based languages, such as Schematron. Since there are so many possible use cases, schematron (or whatever) is probably the best way to express rules for particular uses case. So, one use case is defined by a series of rules regarding expected content to fullfill the use case.
- Schema validation is there to ensure that stuff is at the right placs (if present). Schematron (or whatever) is there to check if the stuff needed for a use case is there.
- It also means that we should be sure that "<a href="InlineOrByReference" class="wikilink">InlineOrByReference</a>" is alway "both", an let the use case decide.
- \_Mandatory properties inherited from imported features\_ : There is actually a way to override (redefine) cardinality in XSD : see <http://wiki.services.eoportal.org/tiki-view_forum_thread.php?comments_parentId=1370&display=print> - never tried it, but apparently XSD leggit.

My two snowy cents.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 18 Nov 2014

Quite elegant. Allows meeting multiple use cases by using Schematron rather than attempting to use schema profiling. Adds an extra 'layer' in the validation process, but I think this is a good thing as it separates the structure validation, from the content validation, where content is both the presence or absence of a property, as well as its value.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 24 Nov 2014

## Outstanding Logical Model Issues

- CM: part role names and cardinalities require editing
- CM: needs <a href="GW_Licence" class="wikilink">GW_Licence</a> class
- LM: well construction package needs documentation

### Downhole Observations

**How should we encode downhole <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> and <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> observations?**

<a href="GW_Well" class="wikilink">GW_Well</a> has:

gwWellBody to describe (either in-line or byReference) the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>. This could include observations on the chemistry of the fluid body at certain depths down the well.

gwWellUnit to describe (either in-line or byReference) the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>. This could include descriptions of the lithology or stratigraphy at certain depths down the well.

gwWellGeology to describe how a property (such as lithology, stratigraphy or hydrochemistry) varies down the well by using <a href="OM_Observation" class="wikilink">OM_Observation</a>.

The problem is how to specify the depths that the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> and <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> occur down the well.

I propose that for <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>:

- gwWellGeology is used to specify the depths for the geological information (lithology, stratigraphy), with the om:featureOfInterest the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>
- gwWellUnit may also provide geological information (lithology, stratigraphy) via the inherited <a href="GeoSciML" class="wikilink">GeoSciML</a> <a href="GeologicUnit" class="wikilink">GeologicUnit</a>. Normally this would be the more general description of the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> from numerous wells and outcrops, but may be just for this <a href="GW_Well" class="wikilink">GW_Well</a>. If so, it would duplicate the gwWellGeology result.
- <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> has its spatial representation specified by the <a href="GeoSciML" class="wikilink">GeoSciML</a> occurrence:<a href="MappedFeature" class="wikilink">MappedFeature</a> property. Where the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> is only known from this well then the <a href="MappedFeature" class="wikilink">MappedFeature</a> geometry (gml:<a href="LineString" class="wikilink">LineString</a>) should be the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> depth down the well, with the gsml:<a href="MappedFeature" class="wikilink">MappedFeature</a>/gsml:shape, its srsName and gsml:samplingFrame all being the <a href="GW_Well" class="wikilink">GW_Well</a>:shape.
- This will allow linking the downhole geological observations to any descriptions of the other geological and hydrogeological properties of the <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a>

For <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> the same as <a href="GW_HydrogeoUnit" class="wikilink">GW_HydrogeoUnit</a> would apply (chemical observations downhole as gwWellgeology with the featureOfInterest the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>) except that:

- <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> does not have gsml:<a href="MappedFeature" class="wikilink">MappedFeature</a>/gsml:shape but has gwml2:gwBodyShape (datatype = <a href="GM_Object" class="wikilink">GM_Object</a>). So where we are only describing the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> in this particular well, the gwml2:gwBodyShape should be the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> depth down the well, with the gwml2:gwBodyShape gml:<a href="LineString" class="wikilink">LineString</a> and srsName being the <a href="GW_Well" class="wikilink">GW_Well</a>:shape.
- This will allow linking the downhole fluid body observations to descriptions of the the <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>. This is necessary to be able to describe for example the chemical constituents at a particular depth ( a feature view rather than an observation view).

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 20 Aug 2014

### <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a> - <a href="GW_Mixture" class="wikilink">GW_Mixture</a>

For <a href="GWFluidBody" class="wikilink">GWFluidBody</a>, gwBodyConstituent/<a href="GW_Mixture" class="wikilink">GW_Mixture</a> describes the individual 'groups' of constituents (biological, chemical or material) based on their mixture status (e.g. those in solution as one gwBodyConstituent, those in suspension another, colloidal another and suspension another). For each mixture type <a href="GW_ConstituentRelation" class="wikilink">GW_ConstituentRelation</a> allows describing the relationships between the various constituents. Is this how we want it to work? Or should the gwMixture property be on the <a href="GW_Constituent" class="wikilink">GW_Constituent</a> Class so a <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>/gwBodyConstituent can be made up of various mixtures?

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 20 Aug 2014

### <a href="GW_BiologicalConstituent" class="wikilink">GW_BiologicalConstituent</a>/gwState

<a href="GW_BiologicalConstituent" class="wikilink">GW_BiologicalConstituent</a>/gwState is repeated in <a href="GW_BiologicalConstituent" class="wikilink">GW_BiologicalConstituent</a> instead of being a constraint on the <a href="GW_Constiituent" class="wikilink">GW_Constiituent</a>/gwState.

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 25 Aug 2014

### Reference Elevation - resolved (I think - BS)

- BS: Are the cardinalities on <a href="GW_Well" class="wikilink">GW_Well</a>:gwWellReferenceElevation \[1..\*\] correct? If so how to specify which gwWellReferenceElevation to use for the various depth properties? -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 13 Aug 2014
  - Clause /req/gwml2-well/origin_elevation states that one of the Elevation must be flagged as the "reference elevation" -- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 10 Dec 2014
- BS: Are the cardinalities on <a href="BoreCollar" class="wikilink">BoreCollar</a>:collarElevation \[1..\*\] correct? If so which does <a href="ConstructionComponent" class="wikilink">ConstructionComponent</a>:from and to refer to? -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 13 Aug 2014
- BS: Federation University collect Well condition data at various times over the life of the well - well depth from surface, well-depth from collar, casing height. It looks like <a href="GW_Well" class="wikilink">GW_Well</a> only allows a single value for well depth (gwWellConstructedDepth) and casing height (bholeHeadworks). -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 18 Aug 2014
  - Wow. this means the reference points actually moves over time. If we open this pandora box, this mean we must consider all properties that can change over time

#### 1. Inconsistency between Specification Section 9.5.1 and UML elevationType documentation

Section 9.5.1 of the specifications (<http://external.opengis.org/twiki_public/pub/HydrologyDWG/GroundwaterInteroperabilityExperiment2/GroundWaterML2_v0.3.1_DRAFT.pdf>) states:

\<img alt="" src="<data:image/png;base64,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>" /\>\<br /\>The UML has for Well:Elevation/elevationType:

"Type of reference elevation, defined as the element of the well that considered the reference elevation (eg. Top of Casing, Ground, etc.)"

The two need to be aligned so that both the type of elevation (Top of Casing, Ground, etc) and whether it is the reference elevation for downhole measurements are recorded.

#### 2. Inconsistency between Well and Borehole reference elevations

The Well reference elevation is specified in 9.5.1 by reference to a property in the <a href="DataType" class="wikilink">DataType</a> class that contains the elevation value (Elevation/elevationType):

\<img alt="" src="<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAArAAAAB/CAIAAACYB2apAAAgAElEQVR4nO2dv4vjSLvv699Q7OzirLOOFCmZZJMObge64KSDgRsMrMDBwgQLEwgaDiy8nAGBGViYe5qChuWFwRzRnGVg8L1iWRgGo8Ow79AYvSzNvI0QizGm0A2qSqqSquQfbfeP8feT7I5bLlWVynq+VfXU85ASAAAAAAcPeegKAAAAAODhgSAAAAAAAAQBAAAAACAIAAAAAFBCEAAAAACghCAAAAAAQAlBAAAAAIASggAAAAAAJQQBAAAAAEoIAgAAAACUEAQAAAAAKCEIAAAAAFBCEAAAAACgfAhBkKfx29AfROl8zzdiRXp1Efq9IM75B0UaX4R+bxjnbM+3Xh9eycGzaPp46rQX2Bc6OHLDSbH60sWMPnfc86TYUZfc53PfoJkAAPC46BYE8zQ6IRacytBuAMvjoUMIISd7FwR5HDhqPW/i4IgQQpzHJAhEJR0PgqBmt4Lgfp87BAEA4MmyxgoBm0aeo5t/VkxHg+EWgqAsy5KlkXcPgqBs13yeRicPJAgWs6v3n423ZdPI6337guAh2e9zZ7MPV5/3P5gBAGDPbCcIyrK8uaIfIAjWpZiEg1EKQfAw7PW53yZhcB+DGQAA9sxWgoCll5dm67YOhycIbpPwGfEiCIIHYn/PnRXJuXs/gxkAAPbMNoKAzS5/GNUGjGWTUeBxvwI3oGm99Zun43Ofb+T7P02yhbheCII/Uzp0CSHOIJq21hrYNPIcQgghR0F8w9LIE64L/OUrNoZlrViRvgv9Pr9TOE4Lc807DAN3dfSCeJZNfvIdQog3jGeMZckoUCspa8J3/SuXiKMgvhHl0KFLiOOHdPJ+8ttXoQY6HC+EIPiUpzRwHUL6fvSx2oE29G3dM3JfvPpEaA5LbzRua35qlctn59ORZRRpHIlC+n74Ti/EC8a/T859xxlE0381HTzLsizScchHhxfQaaF8rvgAVk6X5v5pUpep1qf13NuXrezVaiQQQtwhTXOpBojyraWxmXEkvuj45+M0rz+/CP1nUZpPaeARQhx/NN2VHyUAAGzOuoKg4VBYz2jZNPKOBvQLK1kxHflO9afbJPzOHY4zxj2t+tUUmaWRR9xB+PMkWzT+pN93Fg+92oI2ZtJFMqKivCL5W3D+PuO2cDryHWme1xUElV3v+yFNsoWw4o4fXlylBeM1qSuZx0HdTN4ccUeWRs8GdMarNXs3urqp79u5QuAOXo0mGeP+dNWM09q3ixl97qgNYSkdJUV3bzRv2i656gf5dLjwstSczeigx+UCK1IauI7jj6bFsu7M8/dZPgnd78Lx/9EdPMuyvImDYzE8io8Rly/kKIg/aT6A0ulS9g+voWVGXkzOg78J3Vl8jPy+vJ3+3K2XdfTqPI1OHP5keW21wSzr0/Rj5SPfFQqmmNLAkwJLujq6Z+HoQ8aagwoAAO6fLVYIWDF9MxypguBYMcDSZudxUB/0WmSTn3xP+I3rWwZdy7ksjbz6T6pxYnn8eiRKkO9WVbDw2m6yZaDa9bJpePQvWgXBPI1OHD+kSabfYLUgMMoLa9+KOjwLk1vxRJILurI3mjc1ltzZcI2bODjSRkVy7oqa80J0IdJ4FnkcOHpv18cK1uztZpOkEFFbzgtRC+y4rKNX52l0oskLoyBoNpPl8VBTGMUkdB3t2Es1KsyeOgAAcH/syIeAZcnlz6Hf19bSu0zvWoJAtVts9m5E38j39U18/laZr1umjPctCEo2owOHrzS8javF4a0Fgblv6zLFnJV9uRy9Vwzt2lvahpLXFgTtGW0eBw4XH1sJgs17W+cmDo4tM2y1wI7LSmuvChZZ8vcLvtewliBor6/cxMGRUhMIAgDAI2LrUwYVi2zyk9/zw4u/J7PfpW3jr/hqsqWXt74gqGdm85ReJMWfYlaaX52P1LmyZa313gVByY2s2DPuD+gXVn19G0Fg7Fu1wv0B/eM2fjWsDOS6K8+2kjcSBPraw0aCoFzM6PMe3zVv7MhsLwhsuxsNQWDdBCltvVqWLHt/7rt++PNl8sd03RUC1fwrlYQgAAA8Su4gCIqPcfJVeyEqtk043wn3q/r6cjNBIHcNZpMRTeXCQ3Bx8bdRPQnmi+ReMJrIlfrb3+LfH2LLQC0um5z7jrpkvbkgsPWt/OIXOugT99T3fmiaHGNvNBtrLHmzLQOihg+qJ/3rCIKyLD6Owh9euA4hjhu8SaTP6d22DNSiWPHbr4l5y8B4mb1XtS7acMtAk8XqPgsEAQDgcbGlIGDZ+/PBj3G+VF55iyx5E7iOE/z909X7z0zzrieESOOxvsmp7t479n64nC3KkpuHnjt4qxhX3dmbEFK9gvckCHixAzpj6nqA40Wf/nX1y5V0m5jR54543Vdf//rb5a+zxs2tBo/Z+7ZUKtlwEbD3hnKNveT1n47wRpQnFPJpNOgJh8p1BEHH8f3tBIHYoVddA2TEwKZToeUye6/mceCIy8TpDGc4/vT+6vNc1ufP4rd38WzRbCb3QKxOJUxHfu855SO5SxDsOngzAACswZ1DF/P1XnGk6nMcHNWrAvVJLccNojjN9QIVl3JC7MGMVX+u0rIHLKwaIcpBO+nyTcSO7439XmqtHC/6bWqtpDDVxXTEd5IDOs3TyHOD6DLJGMt/iy/HNAq8xqyXZeOh6xD3ZVzPg8uyWkcR/Tm+rv3dHC+aso6+5Zg9Bky90cBc8p8bPh3lfCPxgihOC6Z0pnPsus8qD1PtWeifyD8EdFpoTpEn/07/rat/2hWqz1JWxw4Nz910mYKhVxdZ/NIV/TmdxUOnOiopetIbxjPWbmapHnGsfgVl85Tj9Vj/IgQBAOABQLZD8CDk02jQlASI8AMAAA8HBAF4CIpPdPSrfjpzMbt8e2XbOQIAALBnIAjA/XMTB8e6IyEr0qvLZvwGAAAA9wcEAXgAFGdMfXMdAADAAwFBAAAAAAAIAgAAAABAEAAAAACghCAAAAAAQAlBAAAAAIASggAAAAAAJQQBAAAAAEoIAgAAAACUEAQAAAAAKLkgIASyAIBvAfyWAQDr03hjCEEAAAAAgEPDIAjuU5IAAAAA4MGBIAAAAAAABAEAAAAAIAgAAAAAUEIQAAAAAKCEIAAAAABACUEAAHhgis9Jmj90JdaEFenvacEesgpPqbvAE2M7QXATB65Pr3dUB5bHQ8en2Y6Ks3NN/R4RN8rT8bnv8IOXfT98t+sf+TKjZ4Sc0Wyp37fcvL1qUTYat9gV+ymWZckvScbK9ZoG9sciS2jo98UBZDeILvlz2QesmI74L84J4tqgLZOw1+Mvk2US9ogbJsXGZS+TsNc+UN3z6fX2ZVrvU/+oe2Fyh4G7VQlKdz0olqcJnjhbCYI8DpyTKJ3vqA43cXDsRdP9q+7KvLE8HjrEC+i0KEuWjYeu4wzobJc16BAE99beu7MPQVAkoUvu9ioFuyCfRgPH8UPKRcAiS94Eu/8hVFie+84EgdlM7k0QPBCPRRDgV/xtsoUgYHk8dLwo3dVbY8fyooPKvJmm7GS3dbALgvtr792BIPhmYWnkkaMgvtE+nNGB0x/QL2yZhD3HDX4MXD4N9M8nYu2AZe/PxaKCbWlNWX5z/HCcFvyhy4WI2jwrM/temMyTsEf6/quXvrznmK+Ns2xSlyc/VFlTEBjKuYmDI2WOK/9ZpHEUyBo7bvAmyRZKZd0w+VTP74t0HDart0zCHvGC8IUrPv9pki30qlUrBEUSusR9EQae6NXz96pEq7v6dqJ217LM0ziSFxDiBqMkY9bSypJlySho1mdl367/NMHTZwtBUCSh50VTVl5Tv+ec+qcOIcTxoinTViDFr6gsy7JkRfpOfs5/JPWvd5mEPSEvFtnkp2rkvXrlO+SMZkUanRBnGOesLLk1deT0ei7/9A/q9xz/1ev6NxAnH2RR7pCKUW4zbzZBMF/j1qxkWULl+4B4wWjSWgzX7qu1V/vBU9ldjY79OFPW1bXX8auXvsN7srrFMqNnxPHD1/J1Vje/C60R4s3S6DHjw211Xd1L+nK06JnGq+Q205o2GYknSOqJ67YtAp3M0+jEJMtu4uCI+DTj1k/ogNskfCZGezEJ3Z47HGesLIuPkd9vrSgsZvS5Q7xhPGPlIotfuqQ/oF/YuisE0lYVk9B1nCDO+d3dl3G2kKsaz+lsYSukbBcvjJaxnHkeDx3tN34UxNdpdCKv5E0QP3zDlgH7Qgd9cTGbxUOPOM/pbGFpi4ouCITlZkVy7nKhlseB47jhpBDr844XTZnSUpZGnuhnscxJvChlltLEc3kWJre8PsSLUraybzd8muCJs7kgYNPIOw7iG2EtyLMwuWXZx9+yeZGcu6TvRx+LUrwsiHueFEz8HvzRtGBi4NaCYJ5GJ04Q5yVTvl4pgzOaLRSTw80PESaKTSOP/8x4TfgWQD6NBg4hYpTXQ7+0C4KbODiqDb/S1DVuzd+Vg2iay301/hu2CYJWe8/fZ0yaed5dzY79qy5K60muDEyCgDhuQFPZ82Tlco5SrHgv8BeHsslifbiaTqp7jKWRV10vZiH8xaS+Spatpv00yRbyel6HrVoEViANf/NzKRTmSdirt4elWc018yk+15V0/dNQblQZqtWCoFq0kNd/5Ub6Rrneae64mX0Izmi2rAVBbikno764KR+9rR2BZRL2RMXbgmDRWGiRP4eFsS1awbogqHq1ul1GfWF9zd2lU93CUhqbRp7TfOK2Ptn6aYInzsaCgKWRJ0bbNfV7yqu5GivKleQoiP/UJ5H8VyfHdC0vGl+fp9GJMBW1ySmS0HVc95hXoB7NWk1YGnm14FAHrlEQCFPX/OFxVt5aM4elsnKwMAsCa3vVJdxGx1ZWc9GYjistbQiC6hqlG+2PtDnLbygtn2ZdtVX/1LxMGzaiqkZB0GyaUoctWgRWspYgqF740qz+U1ngqdAXjZtGZZnRs9pQbeBDIK7/8MFg65vFrLFCYNQMlaV0gjjXRi8r0itKKaWv+RqeTRDMm5JI/bzZli5BoPd1L0yWfL2Br65FF8Lds9HSIo0ppfQi4ktr7X6uSltqD1TpnM6+3fRpgifOpoKgmuCWTfvKFWhrdPk0bS5OZtQnyqoXN7HN8aqqdflDXU4j7zh490vYkzpDlSZVTTLqm3+KBkHAN03FRNbAiluzNPLaMxNyRrO5URDY26uKj0Y9K6t52/wR5nFg3DKo7eU6bvzcxLZQnS2sD/da0xMNecSy5JJSSqnYju0QBK2m1W/nLVoEVjJPoxOTdJPdvrALgm4zsBdBsGqjel1BYCxHivjrcbXbNaPPHdL3w58pvYw/jTtWCPYoCMqyFL+hn0O/T4jjhpNC3TKY0YFDHD+8oJTGSayuEGwgCDr7FoLgwNhUEKgHDg2CwHQEpbVbWQsC5QBelyBg3ACPJ689Zxjnf8bBUS/85V0t57cTBKxIaVBtiFYXa0p5xa2NnlllWVp8CDray6v9cILAsGOi9Jj14fJum4Ruz4s+3SqzfLE35AYRpZReTZPXnSsEbUFQLZNAEOwFvqfTWBjTnQrbgiBf7X571y2D1i/3a2MRzsQ6PgTNxbxmV5z634mmsWnkOXVN8zhwttsy2IEgkMhr5lVLG+/Vmzg46hIE1i2Dzr7FlsGBsaEg0Dzk26fpVu7El6W2eqwewLNvGcivuC6/gOXx0Dl23XoobyEI8pQOXdUF18KKW+dx4BhP4hoFQUd7W1sGBkGw/pbBRuaTPyCjrNG3DMyioZTTzR/CF0fSxawhMtR9ou22DCAIdg53FqncYPVjh2ZBUGjuJtzVozkqtnAqVF322r9c1U2Hexe1xur6ToXGcqoFMP575GOPt7GY0sDTtwz4KF3HqfBOgmCheuFw/80gzuvu4j8x3hz+NuvcMlCdCkU9h3H+dVXfwqnwsNhIEDQOHLYm3Mm5Sxwx4RZ+YSdROre6wmnyQnVbq6JeyPe++MVKM5xRnxBlX3lTQcBHOff+W8WKW98m4TNS+/q+P/f7rXmtvK+xvTanQoMg0JwKhWffDgSBcCqs3aonP/nNzQv7w+WNEVsn1dtERHoYxjMmVmIqT1J+aoBbkfWdCiEI9oE9MJFNEGgnhtY/qFbaj5tKL2CfXtuMqHKuTylQwexU2CrTWg6fftS+sXLEEkK8IHoTih91qfzo/muNY4d3XCFQg6dV53rq7sqkWCHEcYPXFyH/Sd5Y1xuUY4f1UZ2VfbvZ0wRPm40EQXXgkNPeklfP0aknx9QTZX0/eO5WQcS0XUzl2KE4R1u99/kvVlogbqRt0mSlIMjjoL0hTswzjFW31n9m9elBgyC4brfXfuzQLAi0Y4fqAc67CQL9yJ/y5BrHDs0Pt+4WdbKonG8mbhBdhL5cSlFOmvyx7rFDCAIAANgzGwmCHaE4Fdrp2NgGArsHAwAAALAZj0cQ3MTBkVy1lu5+6yzpHxDqOnwpdjfFLgMAAABwJx6PINBXrWtfJ6CgbU+osSBXYdtkJe0z3QAAAA6RhxAEAAAAAHhkQBAAAMAjJ0+Tz9g/vQOsSH/fdY77bxAIAgDAaloerDdxcETMoSPMmIIGaqHAqkMu5927heLsH3l4p2PzTpw8QrWzTIBFErrisI92hGprtDSJ6okhU37n1mkyfkpL63zb2Z/V6VJ3m5+68y5nNFta4j4BAQQBAGANGvH7GvE5Sm6rus68WAWBajBaIS46ytlRw+7AmmmX70qrl+7EYkafO7Xq4kGNeMyPdQTBPI1OyLHraiGMIAi+ESAIADhMZHg74rjBj4Hr9MJfP9UJDvRXPJuKpB1qCjHnRfR6UGUD0mJNKlEo2rF6ugRBqQbkNpSjzsl5AD41Z7oIm7NMwp7j+qcuIXwNQ0saHr5LCyZuLeKdEKIGLVVcd0WkLEuL1hQEhrs30gxW/yzSOGp4DX+tF1F6YXKtrBAYAiLZG1XTMtLK0s5qQcCmkdfzoqtxcKSsBt1REPBM7nrfGrpCz1Ut48rHOTM938YtOG74IQ57xPFfvhKLTHUspu5CDgQIAgAOEOUIq8yq1wsnXxsZxeSMn6WR53x/cfG9fB2LJGe3de7TIgldKQ5uk/CZPEKcT6OBo0fzXVsQrChHhvuUATGnI19JxECc53Q2Lz5/zvJJWKUs4TGAB3TGo/ELk8nL4Y1VQvzWubbNNVlLEBTGu9/EtUGtDNtfaXRSBwyNX7qkTrXa3DIwh0z+ammUCg/xYgxKuFoQsDTyyEmU/qXHGr+jIJDCi4crDeKcV7LdFZqQkn1o7mFLu+T9zicZE9Gsh3HOLI/JXu9vFAgCAA6Qa+r36hlelb+neuHK8P69MFlWOU7zOHC4Jb6mft+LpqxK5y0mjlWCD8UOyfD7i7W2DOp0ACvLqU2CuEKKkkUS9kjL3LK6mCrEb/X56iRAhpowsw/BGc2WWjoow90LJYC3JRV1vbhtEARNlw6Rpuj/ToyNapRcxzwmxA0iehnL+NPW48miekoGFi0x0h0FQdWQjoQX/GNl3Arh+A9LD89bBdSCoBozqx6TPYnXNwoEAQCHRzOtbRVXX0ni5wQXF4FT5f5WrX6dlUPVCuK1bjQqakbgbqfCysdtZTndV0izYvJbbKdyXp0m2HCf5eoVgn9a7q5YdM2ysiK9opRS+po7/dkEQcti8QcXf1idOFHCs5OLZXkR7mzFCoFWVTU92658CFRBYOyKKoLtUi5R3Nh6uHUXgw/Bysdkr/i3CYEgAODgsAoCnrjy9WQ8dLwonVGfnNHkra/sFBD/YqokOVsmYY9LBznBsrmJrdoyEMn0qm3vleVYDd6yJQhM0+QNBYHJPKwpCIw2Wezcj6/rtXe+W9H3w58pvYw/jTtWCHYgCOqafKGDPr+uUxDwbaYGXAXuXBDYuqI67fJpo0TMawkCuBpCEABwiDSOCFZbBvKF67rVjsDRqf9dT1tilfPj+rs911UWvbV5ZM0aPgRit1jELF9VTjuHuHqFrGEz/brEIgisWwaGmqwhCHLL3Uu5l/+df9pX0y7rHbvVlkG3IDC0ZZnRs9WCoH2stN7y37UgWNi6Qg7dU/9UtML2fNt36RAEHY/psIAgAOAAUZ0Khf+8eEsKm8+NjeZaWJbyDLohIIFqY7iv1iCa5jKF6VEQ36znVMjzifNTcCvK0XOmCy9xJ4jzhiFUk4bzxjrDOM8taYIVp0Lh0DCM86/GmqztVNi+OyvrpOGy67ipE8nNxTZ/LQi4aFjHqXDFCgHv1cqpUEsc0yEIZmnkydOJkmoBf7EPQWDqCnlTQuoYGPYe1u9yEqVza17vNQo5BCAIADhM2scO+VvyJg6OpGNa0yNP/yvHNEVTTsRVtmfdUwbct5+bus5yRCvGVZpteVqsaQhZkb4LxYky/YSe0XaqGUPcIZWn4No1sfrg8VznlWox3J3Xi3tuVl3HbTO/iRdEb0KfLx7wAxSEkDP6/96uPna4csuAZQmtGqPnGrcKgjf/WR9JVUqa0YHjeNHHGT1r9cIZzf6gfquD9Mdt2TKwdUVZVkKqroy9h+tBxYNZ9fy3b82CYJ1CDgAIAgAOnqZLAQDgEIEgAOAA4dnGee7sfBoNsIEKAIAgAAAAAAAEAQAAAAAgCAAAAABQQhAAAPbGASahV5ucp8nng4t198Ac4JDbJRAEAADJTpPDKmfY6tA3m3BtOLRGCCHmo//7hX2hg0GUZkno67EQNJQmb5Gz+CYOjpXAwMff7rmP7cbDGuU2jk3WMbbvxq7KMaEnxpyM6jQT8sjrPQJBAACQ7EsQ3LUkS9ybeySjvhelt3HQG8Y524sgUK3OPi3QN4w+5FiuxNi+A7sqx0w9ltgXOujL4EhKlq97BIIAgMOER9wzRNqp4vNMzhtxbxrZBat/5mkcyTAyhLjBKMkWahL65FaZESqhhLT7ivhI4n6TrBlbt37RNyMWszTynOG78ase8YLwhUsIIY4bULl0bGrppvAQgTTySc+n18sk7JG+/+ql79T9Yw5TJJItKa2rZ36tzMJq7B3v3+i/n5izB7Fp5PVd15JbiE0jlxBC5AJD6y6taMaGJ8IFjfsiFBNWL6BT0W+GgcEHTtX5Mp0xL9wQ/6paIVhkyRs5cmRcKRX7wOCBKdUvLrUhV5TlPI1OZVJKx/VPXUJ4GKj2d8tSTQLJG1IJPlmOGjmK90wvnHzi+aDncpBUy1fzNDoR2SXc4LUIBNX3o1+TukOorLYbJkWZUV+NAaqVdk9AEABwgPCgvzzHHQ+E1x/QL6wWBLdJ+EwmpM+n0cBxntPZXAtcKDMcsjTyZLo8lo2HrsMNlWnLgAcG5heLbEbVfQ1Z6gUNQdCIjSgyLn7l9sB9GWcLXg1nQGfM0lK1M4yWfHXAXWn26pD+lhUCUT4PFG2b+cm8kfX/87xHvDQthjRLI8/5/uLie/tfv/tfp/9DSVFIiJKeSstHUFqeiMgS6bjDccbUz40DY2HpEDVC9iweVhGI5Xj4GgcOT13BH00rOpZtYBST0O25w3HGRBRCZ0BnTF8hqHJzi0Ke09m8+Pw5y43f5ZE56sFTZzusysnjwFE7hMgmcLMtkj+J7hXf+iMJXSKia/Ow3MTxR9NiWSTnLjnq2H5qpqu4FyAIADhAGnN9GS1/IQWBks64LJVQhvUkhr/+2sv4dfRcgyBYNBLkyLn+wpilvnpFtrYMFBtcva+XSdirX6CVaLg2t/Ruy7/6vYxNbgoCPZVUy/JVVqdsWKAjmXhaSwGspZw2/HV8LaWbzJjAF6WVu9T3NT0RnkWwlmXy83+ZB8bC3CHX1O+ZcmjJ8XBNfdLSZ62Obg2MvBFRu0pVoAoCvm4U50wvpBmNW3z3P9/4zcEj9/VFOYuMnjU7pBcmy+qnJJMs9MJkWX0rV7tRGzZSfM/NgoALLx467P6AIADg8DDOieXLSf7X8PdlbT/0dfsijSml9CLii642QTBvxEhWPzdGmFcu08RHlVaHVe/9hssCSyOPuOGH2NKSu/dfOwJ/hyBQ1n4bWQ2r2qpJj8T/i7TUizTyeI5pL0qXlVHv/KtIg3STRidO8OYiOPai6VK5i9IS0xNZNnwg5ml0Qnrhhw8dA6fVIc3HXWXZrgSiWDYgxAuii8ska1q/jmzFTao0Gbz/lbWQdjrs1nd/DANtyFVJpOpyGlKy6ihV7B4HF28C5yRKb7VvyXtrw6ZLECxm9LkjkmndKxAEABweNufBFbOWsrbE1+NqmstmdOAQxw8vKKVxEnesEOxMEFQLqtfVe79DEKwQAFtuGexQELA8HvaUKWxP2Tsg3uvJeOh4UTqjPjmjyVtfWf+3/pVNI6/nRVfj4FgkH/LfJvRM3y/YThDYvCk3FwR8aT9LLunPod8nVeZrvVyzIDA9VKX/b+LgWWMuXguC1nebQ64WBFU5NkHAR9pJNPklcE6iNKX+kU9/pb5bf2szQcD3I6rEkqqCMf4kdwkEAQAHSNMvT1C9Oo3L2mVZCkPbP/W/k7v4wlTIN2y1lLrxlsFGgkDm/z31XbEGbtoyOKPZP80tvRubC4LGlkHDWcx64JDrHtfte9GUsWnkHZ3630m50P3XeRqdkGPXdU6idM4dC/xTr7knvdGWgU8zy8DoymLcsWWgWWWTqTYLgtyQYLO+4IxmS+2YhlaIKTlnWTvElPU1bpgUSjn1olTdIbxQNo283rF77HhRyuZpdOKc+qc9fuWGgoBnsGw61d4fEAQAHCDc1Y77OgmHbSeI84ZToVi05F76R8oOt0NIlX+Wvyj5ldKlvLaO/GW6llPhZoJA+nDpG7TCr004FQZxbmvp3bqvUxDwJisTStUzTjgV6uv2HQcOxeoF73zNeXDlX8Uf+b0010KVbqfCvn/+XvrQ8ZLNA8OWxVhxKhRnE1RBMPkUefLRCP8+wwKGaWBwJxJxQi+bnPtOvW10EqV/aQcFG+th5u9+rZwl5RkEqTyqclSnQn5uRRQqJvGKH2Wl/zYRBFzjPmRysVwAAAPiSURBVMROQQUEAQCHiXLYrDp8pb46+WSF/107rcedp5RpYn1ey3GD1xehL2ZgVRJ6+scaxw43FQRixql7nPX94LmrtsjW0rthEwRKk/9RTEe+Qwg5o9cfwh5x/BcvXIcoR/XkgcD/mNZWp33k/SYOjqQhbzrErfir1j8NN1L1LKL92KFzGrzwmgPANDCsHbLi2KH6aBw3eJNkC+1xWwcGK9J3oTg6qHSp6H+uV+X4bG6QWb5bH6f0XgSnDnHD5A89PJTh2CE/oZvHQ6eSYtpiw/qCIBcCV2cP0Zu6gCAAADxNdJ952/Gth2en4Z7uC/Ne+51o+is8XtYYS7s5rvLYgCAAADxFWJGcu8obGYJgp+xEEPDD/fzsXD6NBsaN/0eIaSzxZQDu62eJmvD0gSAAAAAAAAQBAAAAACAIAABgPZBaF3zjQBAAANai2lht7rBukJqvCk2z9QUb13gPyRu3qyR3rf+Rvn3ozI0AWIAgAACshUUQ7Dc57J3YlyDYljwO+mFyOwnd5xAE4BECQQDAwSGCrVpztiZLa4rbtiBQk8NWx7vr4/78Yt93CSHE+9/f/89qbm08oS4n3/a8txbuM5vzJ2WFwHCI35ILeJ5GAz/6fRb/4PFUewA8MiAIADg88u6crf9tT3HbEgQyGACb0YGI41Yq2YdlmL4BnbH8czr5D2FKbYlxVUHQkRC5wT1nc662DMxh/hZKzEQtMSMAjxsIAgAOkM6crddje4rbpiCQqfn+0iO91xHj9RQDlSm1JcbVBIE9IbKtOZx9Z3OWlbQkAvg0CY3JkQF45EAQAHCAdOVs/WrJfTw3CAJbctg6X5xuy7UdAVMePE0Q2IMZN1rTVeM9ZHO2tUL0qp4SEIIAPBkgCAA4RDpyttqsr2nLwJYc9gEEwT1mc4YgAN8mEAQAHCQdOVtXpbitzbM1OWxjy6AlCJgtMe5WguC+szmvs2UAQQCeHhAEABwmHTlbV6S41dLSSzPc6VTYEgSlLTHudoLgnrM5r+NUCEEAnh4QBAAcJh05W1ekuJX/004Oaz122BIE5RrHDtcXBOX9ZnP+rzWOHUIQgKcHBAEA4KF5OolxAfiGgSAAANw/TzUxLgDfMBAEAIAHgGWTkViZF9EAVy4PGE8XEkKQGgCAnQBBAAAAAAAIAgAAAABAEAAAAACghCAAAAAAQAlBAAAAAIDSJggAAAAAcGg0BQEAAAAADhwIAgAAAABAEAAAAAAAggAAAAAAJQQBAAAAAEoIAgAAAACUEAQAAAAAKCEIAAAAAFBCEAAAAACghCAAAAAAQAlBAAAAAIASggAAAAAAZVn+f/n4zeM19zLLAAAAAElFTkSuQmCC>" /\>

The Borehole reference elevation is specified in 9.6.2 by reference to the <a href="SF_SamplingCurve" class="wikilink">SF_SamplingCurve</a>/shape:

\<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAuYAAAErCAIAAAAdZdHzAAAgAElEQVR4nO29v4vkONv3q39DcWWHzjqbyMnrpJNJOjgTOKhkgglumMBQwcIEN8wBQ8HCwM09YGgGFvZ9GkHDsjA0j2nOMjDUeUyzMAyFeZd9h6bww9Ds2xizNEUjfALJtmRLLld19Q93fT/<a href="R9mxZli5dkr6WLkmkAAAAAAB49JCHzgAAAAAAwGogWQAAAAAwACBZAAAAADAAIFkAAAAAMAAgWQAAAAAwACBZAAAAADAAIFkAAAAAMAAgWQAAAAAwACBZAAAAADAAIFkAAAAAMAAgWQAAAAAwACBZAAAAADAAIFkAAAAAMAAgWQAAAAAwAPpIlmUaf" class="wikilink">R9mxZli5dkr6WLkmkAAAAAAB49JCHzgAAAAAAwGogWQAAAAAwACBZAAAAADAAIFkAAAAAMAAgWQAAAAAwACBZAAAAADAAIFkAAAAAMAAgWQAAAAAwACBZAAAAADAAIFkAAAAAMAAgWQAAAAAwACBZAAAAADAAIFkAAAAAMAAgWQAAAAAwAPpIlmUaf</a>/<a href="AdSgghjn8Up9zyO57OjnyXEEKI6x" class="wikilink">AdSgghjn8Up9zyO57OjnyXEEKI6x</a>/NLL/<a href="LktOpRwkhhFAvOE3yjfMu88YCb48IHD" class="wikilink">LktOpRwkhhFAvOE3yjfMu88YCb48IHD</a>+<a href="Mbpngg8OzaEIJIW6Y2AwNAAAA7B4rJQvP46lDVA6C" class="wikilink">Mbpngg8OzaEIJIW6Y2AwNAAAA7B4rJQvP46lDVA6C</a>+<a href="Mrww3wWCFkj2Ruzb60xtxyPV" class="wikilink">Mrww3wWCFkj2Ruzb60xtxyPV</a>/ysJ9k8HOupEUL2vPDLnamWZRqzYPLTlsUET2M2nRzNeVFAsgAAAABGVkkWPg9dWgqLZRq9cQihfpS1fpdFE0qoE8zySuW0B109tQV7dZuxmSehSwih3lRM6PB0JqZv6CTK7mS0l2/cspi4TsJDQqgbziFRAAAAABurJEsW+ZQQchgm1/<a href="WfBk1wGfn79c" class="wikilink">WfBk1wGfn79c</a>+6Uysfv50CECO9PknD5+<a href="F4oqwN8TyJQrlWRR3" class="wikilink">F4oqwN8TyJQrlWRR3</a>/Q5wuxb+<a href="LmQzqH8" class="wikilink">LmQzqH8</a>/kKhV1fJbkMiVlhYsQ6gUsTnmZW8m+<a href="H32XiXhv3np72r" class="wikilink">H32XiXhv3np72r</a>+<a href="Ukq5ZQJ7GR75TrmEdxSmXpSihkyi7ac2yZEkUyoU5bcVN2HzfZ7" class="wikilink">Ukq5ZQJ7GR75TrmEdxSmXpSihkyi7ac2yZEkUyoU5bcVN2HzfZ7</a>+dBmKpzfXZfODrYgAAAICZtWZZeD4/8lQF0/gZ9YL3YkjuiGWpELMsm84uyIx1iKT2khYh9BVbLE3rU6Se55ApN1evbiySxSBizJLlKg4O9GQPgvi/<a href="V0mW9lOEjtmCF6VkabBKNQIAAADDZHUsi2l0t0gWfWB1gpn9i1" class="wikilink">V0mW9lOEjtmCF6VkabBKNQIAAADDZHUsi2l0t0gWfWB1gpn9i1</a>+uMRFnGuebLQutlCxiRN/zpp9SXhR8EU1cIvVEWSg6DudZ0Viiss4kNSRIlcgrtlgW/O/875suySKTFZpJvpH6UdZcGNJjWeRTcvGLp6cThxKy70eXlWSh3tE85wX/xsZ7WGACAADwVOmzY6ja47PnBT/6jkkoGCdjrDElpV6RimEjVkqWlvJQBEQjxJXbJzZcPzxm5UqTUbIokT3Nf2m/0RQG1CFZ2k+pPxaSpXqw8ScAAADwpFjzXBa5ALQqlqVLT2xDrxSFJZblG5u8kbEsPSRLKQXam3R4npwxdlzHwQSzvLdkMSmhu5MsYsalgGQBAADwtFkpWeQY6QSzvGvHkBQQYoMxX7CxeZaljC+5rV4pio4dQ1IqGReG5J6mVZKl/<a href="ZZJlPFVkqX8sVjtKpei9CUeUXB1U9UGC0NinzkkCwAAgB1i9SyLvlOmisYommNk81yWMpZF3XNkCHm5zZ7k7nNZTOG3zpsoXbbUhkklGONy6v9lCLYtCuOz3eG3V1q0UK" class="wikilink">ZZJlPFVkqX8sVjtKpei9CUeUXB1U9UGC0NinzkkCwAAgB1i9SyLvlOmisYommNk81yWMpZF3XNkCHm5zZ7k7nNZTOG3zpsoXbbUhkklGONy6v9lCLYtCuOz3eG3V1q0UK</a>/wW+pMTtM6/<a href="BaSBQAAwE7Q7" class="wikilink">BaSBQAAwE7Q7</a>/<a href="Tb2TsxfUG96WlSDdDNMdJ8" class="wikilink">Tb2TsxfUG96WlSDdDNMdJ8</a>+q0iWZrq57aSpWicfku94Fg7/<a href="XblJmfjLIv6lF6WWiQdBPFfprUe1VbvPkfvOjY515ux8y" class="wikilink">XblJmfjLIv6lF6WWiQdBPFfprUe1VbvPkfvOjY515ux8y</a>+hKIIzjfP1NzlDsgAAANgBcMcQAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAbANiRLnkTHgXcQJnwLiQl4+mnq7RFCiDNhSba1dO8BnsYn733nRZhcP3RW+rNcsFfUmca5uQr5go3pQRBf3XO2uuDpbOpRQghxfTbPHzo7dwv/xsb7TjB74sUEJngan4S+426zg30KbLmnzZLo58Bz/ehyzWwMpW2KAo4fxcAkNMNoEmXc8GcnKyXLZeTvEyuHYXIhf7DFFpXPAu/<a href="HOOdF" class="wikilink">HOOdF</a>/iX09qgfDUezXCfhYWmZR+<a href="AZfRmcZLmKg38E8VVRZPNwTGkvXx8wg" class="wikilink">AZfRmcZLmKg38E8VVRZPNwTGkvXx8wg</a>+kWwbbh89ClW+5gnwLb7Wl5Fk0oIYTsP1HJUhXwMQxMpaiQ/<a href="XbjzxX0kCyT1" class="wikilink">XbjzxX0kCyT1</a>+<a href="E8q99UpZvPmf86TK6l92ytRV0n4eGgZEoD0ZZWesZycfbpj0fbB" class="wikilink">E8q99UpZvPmf86TK6l92ytRV0n4eGgZEoD0ZZWesZycfbpj0fbB</a>/<a href="GLs7M" class="wikilink">GLs7M</a>/H2/uktB9PDLlTmz1uN1jiDxWl+aLz2d/dPYVQrVAsjTp2dP2hSeh20+yrK6yLXH7F6kp8CR0H4VkKWTd1X14488uVkkWnpycVC1FlyxFwZOPJ9uXLJeRv//0JUs+<a href="C8ZHj7UP4nn84zicP9LciS" class="wikilink">C8ZHj7UP4nn84zicP9LciS</a>+<a href="GxyJZ7sZWj9o9hsijdemrOPBX9BWQLGYeSrL0qLLtcPsXaSnshmTRaEoW7fWQLJI" class="wikilink">GxyJZ7sZWj9o9hsijdemrOPBX9BWQLGYeSrL0qLLtcPsXaSnshmTRaEoW7fWQLJI</a>+<a href="DekqDg4ebx" class="wikilink">DekqDg4ebx</a>+<a href="UzwJn5D7G" class="wikilink">UzwJn5D7G</a>/l3wmCTLndjqcbvHEHmkLs3zeOqsHEUgWcw8iGTpV2XbyM6tX9RMAZJFf70bJtmc+<a href="S4hhHpH8zoqgufJx0DE0lIvOE3sa37VeluJGyaZDMw5nf829fbKlLMkCn2HttKsQqgW6eydRwkh7iRacJ7GR75DCKHjcpHLnol0duS7hBBCqOOzRBakil36nrBJO6nqKeq9Ow6edzakqzg4qIpYijOeJ1Eo37vnBR8TS1hJ" class="wikilink">S4hhHpH8zoqgufJx0DE0lIvOE3sa37VeluJGyaZDMw5nf829fbKlLMkCn2HttKsQqgW6eydRwkh7iRacJ7GR75DCKHjcpHLnol0duS7hBBCqOOzRBakil36nrBJO6nqKeq9Ow6edzakqzg4qIpYijOeJ1Eo37vnBR8TS1hJ</a>+<a href="ToRkfc" class="wikilink">ToRkfc</a>+njPfoYRQx/8Qp0vF5pbUclFHe17AZmefz9vRT/kscKpKEA24HZjWbX+<a href="LlYyvtmJ5RRb5mot0t8AsOZUxutR7N6vts6X8N231PU" class="wikilink">LlYyvtmJ5RRb5mot0t8AsOZUxutR7N6vts6X8N231PU</a>/<a href="OjgNv5P86n73z6N7" class="wikilink">OjgNv5P86n73z6N7</a>/7T0X73DDOTevl7dz2HYPXiZb6Xhb/Ypfjg/<a href="Cr1kiHGPPC7" class="wikilink">Cr1kiHGPPC7</a>+sWmXXWuh0lvL63zve4o386EqGyVNncpryZRp/aLx0laNuVBFFUeTJaSDMVmXMXnaDS/Nc/<a href="IZ6AfvtbPbV3in0Lmwj6KR01Prrq" class="wikilink">IZ6AfvtbPbV3in0Lmwj6KR01Prrq</a>+k/<a href="N3k8deqatvfXUrK8i2YfShuyZJMOtrRt7XLT0yTTAhbdMLkqm5jIUhXlGp" class="wikilink">N3k8deqatvfXUrK8i2YfShuyZJMOtrRt7XLT0yTTAhbdMLkqm5jIUhXlGp</a>+L7p04/lEsnIQ3HL40eLt2iqLIRFVSL2CzT7Pzv8rMGyuincmytGv0tHXP1hw+<a href="TIk3JUs1apBqFwhvVdmN2jZ5Erp6x17" class="wikilink">TIk3JUs1apBqFwhvVdmN2jZ5Erp6x17</a>+<a href="C5Vy2WwZQ5WbfSNPolBmqWGWPimUkqV" class="wikilink">C5Vy2WwZQ5WbfSNPolBmqWGWPimUkqV</a>/mzJSRRER6kdZ5faNXk7JsynZxyBZnJfB0eeUi1DNsoYKnsf/8qefUl4UBc/nRx5dJWP5PHRp2c6rwBxvOltk8dRxpnF+vWCvRpXzsYkje41qSNjzAhZXvT/1guOzJOcFX0QTd8XHCp+<a href="H7v6YfeMyt43BxhkHP83SpcxYmRRPTyfOwSRa8KLg6dnUe7ZqKG3OS" class="wikilink">H7v6YfeMyt43BxhkHP83SpcxYmRRPTyfOwSRa8KLg6dnUe7ZqKG3OS</a>/EFG4+<a href="EA8k2rMs" class="wikilink">EA8k2rMs</a>+g4kIIeTZeHomXno6cSgdswXvTu06Ccdj9o0XRVEsFyc/nxmjn/g8dKtP0vZAu1xlf6OVjK+2YXuFYr3V/n0VB8+dyWnKRYjcXpmTreZftVU1SnnvZun3OHjuBLM8i/y6OTS6RVsOdfdoDX7W+pW/pM747dEsLf222xV5Hk8d502ULmUUdvn7VW8h1AtYnHLZOe55wc9RkhXFMo3eyG+7FY66WUUURT6b+v+<a href="SArSK0O8uu" class="wikilink">SArSK0O8uu</a>+bSRcHn4cE/2GJZFEXBv50cfbL2/f0LWxTNfGpdmdl/en34CjNKoVDWhbThuh3sVTz9oVSlauh6Ng/<a href="HVHzgFdk8fOlKVVSNT8" class="wikilink">HVHzgFdk8fOlKVVSNT8</a>+86VnKC9mL0ldssTQ7vLF2ioIn4UHdQX08Oru0V4Qtk+v2tMbh4y9r4lrbvE7CQ2nk/<a href="Evo7dW9vVplbWHKv7GxtmWEJ78ciY0LFstYq73hG" class="wikilink">Evo7dW9vVplbWHKv7GxtmWEJ78ciY0LFstYq73hG</a>/wbGzulKJwz3135Bd5IgSehW7UprcNZN2/<a href="LNHrjNARHPZxdxUe" class="wikilink">LNHrjNARHPZxdxUe</a>/rEr2MUgWc0M1bDhaseijPW56aRb5WrMUusTodo0uu4dd+<a href="Dx0n8nHDSO3MamrODhQMtxnurJRx421MNEtdnc9eueoZc" class="wikilink">Dx0n8nHDSO3MamrODhQMtxnurJRx421MNEtdnc9eueoZc</a>+eGp+<a href="H7n6p51r5MUuWomnVLvvbrWR9tYnOKu7r31nk17vmlunsnedOYznibi" class="wikilink">H7n6p51r5MUuWomnVLvvbrWR9tYnOKu7r31nk17vmlunsnedOYznibi</a>//<a href="DVtlkU91D" class="wikilink">DVtlkU91D</a>++<a href="QLLYctldaW23K6i1dCsnIZeQfVD" class="wikilink">QLLYctldaW23K6i1dCsnIZeQfVD</a>/g6aep9yKIr1a8pdFIu15qd9TNKqI9F1up7Y5s6NXEk9AtNchqNi6s+qDFf9aQLPbGvkYH25ykVD9FxPSe6wc/+<a href="NrMXEv4qhZoOrytdv5OwsO2yc0VYc3kBj2tcfgwW8AgWdTx1ShZipZ7CAvUuy" class="wikilink">NrMXEv4qhZoOrytdv5OwsO2yc0VYc3kBj2tcfgwW8AgWdTx1ShZipZ7CAvUuy</a>+r8dvutxb0F7VWw/<a href="NZ4NC1RI" class="wikilink">NZ4NC1RI</a>/+<a href="Z782ZU1aGSgbHpKdTY8an7vtZB" class="wikilink">Z782ZU1aGSgbHpKdTY8an7vtZB</a>+tZMkin665eLZCsrQ/HMW/<a href="GN1ufckik0zjk58Cb6" class="wikilink">GN1ufckik0zjk58Cb6</a>+e0OtISu/<a href="CNpEszRRMI1" class="wikilink">CNpEszRRMI1</a>+<a href="TxkigFLwrNfEZTeqZJzU" class="wikilink">TxkigFLwrNfEZTeqZJzU</a>/vSRLt/07DG57tcH63VXcrx5t8S7bzv/mkqUjIqdTsnR7y7qSpakbzNluvmVzyVL93++bVsRl5D8zR6X0lizyE1NUZrRqJWUrksXiPxtJlkZj79/<a href="B8iya0I5pZnUGpfGUbZBuOry1dviCjSkh9QSV" class="wikilink">B8iya0I5pZnUGpfGUbZBuOry1dviCjSkh9QSV</a>+<a href="Nd2RdgzuUlPaxo" class="wikilink">Nd2RdgzuUlPaxo</a>+<a href="LBYwNZZlGv96LNY1" class="wikilink">LBYwNZZlGv96LNY1</a>+kqWQpmqV+aTOvzWgv6iZjuyD8e2FDoky9p50yQd/3ZydHzsP3OCWV7wLHp/<a href="VOfZluyjlix0PVv0kiyqY21XsizT2Ttv5AXHv8aL33vNsmxHsrTHudtIlo7Ulmn8iwxQqPumdSWLzf7dBje" class="wikilink">VOfZluyjlix0PVv0kiyqY21XsizT2Ttv5AXHv8aL33vNsmxHsrTHudtIlo7Ulmn8iwxQqPumdSWLzf7dBje</a>+us2KKl5DspD2WTLbzv8tJYshh0UPyWKv300kCzWcKtH9lq1Jlg0qot13rzS1waXLEA1KCKlWVM1sR7IURv/<a href="ZhmTp38GuWijMZ4H3D7" class="wikilink">ZhmTp38GuWijMZ4H3D7</a>+O+bA8tUKyWGqnKAObCCFkr1wja1eEPZPbkiyWRxqNhaefpp7jBT+dxH/<a href="O15hlKTNGX7HFIpq8LV" class="wikilink">O15hlKTNGX7HFIpq8LV</a>/dZRkjBsmidXrblSzr5U2mJkNkfjmK/yo/wL5H05/<a href="V1QNLso9Wssh5S9c" class="wikilink">V1QNLso9Wssh5S9c</a>/qoL6rs6j32+9MKR2strX6i0li1apPReGjBlef2GIqCe52b59a0zz7ar/rUpNnC9sXllcvTBks38vg+uvNtFZxT39Wwa+qacn51+i+K8t5/8WC0PWHPZYGLLW77qSRYabqCcIixba+<a href="ZZbLgwpWn" class="wikilink">ZZbLgwpWn</a>/9ihD/Sw3j5fn5b/<a href="E6C0MKy3T2bkX8x9YkS5me4j" class="wikilink">E6C0MKy3T2bkX8x9YkS5me4j</a>+bLwzJqlmzgxXLInX8bOVyRcEX0Q//<a href="ZIslT08nzkiGWFWvay4Mqf7WXhgy1Y5S" class="wikilink">ZIslT08nzkiGWFWvay4Mqf7WXhgy1Y5S</a>/tnUa80vKhVhy+<a href="QmPa1lYchkAbvDrLUwJGzJxpQ63gt3LcvoGBaGtC" class="wikilink">QmPa1lYchkAbvDrLUwJGzJxpQ63gt3LcvoGBaGtC</a>+c1Vtr11wYWiNvZcGf+<a href="VEiV76EVxz" class="wikilink">VEiV76EVxz</a>/<a href="VK4KdRf5gSVLR0PV45YJIebPyoYhOiVLGSkmO9n8S" class="wikilink">VK4KdRf5gSVLR0PV45YJIebPyoYhOiVLGSkmO9n8S</a>+g5lWa/nWRR3ULuCKD+r1/<a href="PPv3R1P7tJYM9b" class="wikilink">PPv3R1P7tJYM9b</a>/op5TyfnwRjUeKOtlQ9/tf5yW8LLkN9y40A2Twcj7q//<a href="KRZ5P4O8UFQGqEjtcsz9lkJE9vX2qQmWSj1oyz" class="wikilink">KRZ5P4O8UFQGqEjtcsz9lkJE9vX2qQmWSj1oyz</a>//<a href="SS64E2rdti" class="wikilink">SS64E2rdti</a>/6+<a href="PY8mojXVW8TvjtgeZ6spffav4btmpLFvGDMVtw9StTjHm2HDbco9WmOrxl7VgWWwvtfMu6o7jZUTeriMYOIEJIqXtWSBa1mj6zs" class="wikilink">PY8mojXVW8TvjtgeZ6spffav4btmpLFvGDMVtw9StTjHm2HDbco9WmOrxl7VgWWwvtfMu6o7jZUTeriMYOIEJIqXtWSBa1mj6zs</a>/<a href="JjesHG3WsraxS2" class="wikilink">JjesHG3WsraxS2</a>+rxeqpMHxA0Tbvafas4pP/8YWecdhXxUw29lCOr6HazF5fgimryoJxiS0JUdWlUX5Z88nU093d90hzfXDs/<a href="Ofikj7pcL9kquzpgrwtYuNuhp28OHLXHrh5nco0Qnp18" class="wikilink">Ofikj7pcL9kquzpgrwtYuNuhp28OHLXHrh5nco0Qnp18</a>/nf1x3awyszAVckpveja/tdB8kYgCrvYuzY+8UcdcdTuF603aVBfXSXhInj2fnIg2exn5+9T5x7FaF9Zk71yyNONolADpao8TIXQSXZzWwU3lBo1yN+C6m5yp++//+W+Z+<a href="L7jeIpf1rvUiOOHchG03nxFCHXD83n9574ffVXi1OyduFjNlVvI" class="wikilink">L7jeIpf1rvUiOOHchG03nxFCHXD83n9574ffVXi1OyduFjNlVvI</a>/oj8feJMWPI9sSYlPKDKz54XzuLwheO/P+mM7RNbJ4jcqVEU6k5F4vph1L3JuZSJb4/fj6nBsLbU/jqPfj1loietvswuW8UR+yDEZk61UqqeeqX921ZamF7dgfEVrei5Ffu/qm2K1PHDegV9m/mvbbWYl1scnzlOfeWWGPuJmMnIktB1/<a href="LByDksONfdQiyzLa65ffY" class="wikilink">LByDksONfdQiyzLa65ffY</a>/l6YWh4owoLVQ1dY+3EDecz20vFb1Et6NuUBHXRVEoJxHInZOryq66dFFkX6KTX5mQj+oHd9uD1itsubtE7EPOvobugR/+<a href="EqdLS9OrOhy3lCB2T2aBcdPvOh1smdRRY6NsafB69kv1N9EDPA" class="wikilink">EqdLS9OrOhy3lCB2T2aBcdPvOh1smdRRY6NsafB69kv1N9EDPA</a>+<a href="O38kurtyqWhtHc3hD7RQFz86jk1MW" class="wikilink">O38kurtyqWhtHc3hD7RQFz86jk1MW</a>+q620d1WEYZMNhymR09bj0368GFIvN3LCYcRJp0vokmtrdUqM7RN+<a href="Q5j0IzJMh011fKNesNwo0NbmcIf9tHQ2qZWJF40TiHvX" class="wikilink">Q5j0IzJMh011fKNesNwo0NbmcIf9tHQ2qZWJF40TiHvX</a>+<a href="TGiHPRzkwHuMl5oGyy" class="wikilink">TGiHPRzkwHuMl5oGyy</a>+gjAvQNHHTp9tsoDcE9AsgwUjARgEMBRhw4kC3hEQLIMFIwEYBDAUYcOJAt4RECyDBB1AfWRXLUDQBs46uC57BUCCMB9AckCAAAAgAEAyQIAAACAAQDJAgAAAIABAMkCAAAAgAEAyQIAAACAAXAnkkVcokGIfn/<a href="KgMiT6DjwRvezx2G5YK" class="wikilink">KgMiT6DjwRvezx2G5YK</a>+oepkLAAAAAFrcgWTJZ4H3Y5xzcXZ1971Nj5JyX989bcuEZAEAAABWs3XJcp2EhwOUKQ3WuKVpA/ji89kfOJcJAAAAWIOtS5bVN2IPgTuVLFdx4OMoSQAAAGAtIFmM3J1kEZfF4/<a href="RrAAAAYD1WShaeJ2fHgTfyf53P3nl0zwu" class="wikilink">RrAAAAYD1WShaeJ2fHgTfyf53P3nl0zwu</a>/5EWh3hpvur9bvYy7/cuiKLIk+jnwXP/099nUo3QczjPtsvv6FnXxy3GYfE/<a href="YxCGEyB" class="wikilink">YxCGEyB</a>+<a href="X1Pdx73nTT8o15Mb3tlAfr2" class="wikilink">X1Pdx73nTT8o15Mb3tlAfr2</a>/cbkuWVmr1zeZl1Ev1L6LgyhXnZRiy0Cv6EebtUN88iULTxevilwdhks2Z7xJCqHc0RwQMAACA3WCVZClvCaHeu1n6PQ6eO8EsL67i6Q/<a href="TmZAH2Twc02p05" class="wikilink">TmZAH2Twc02p05</a>/PQpcosi/<a href="GXN6W42fOmn9JsFjjPg" class="wikilink">GXN6W42fOmn9JsFjjPg</a>/ivPP6XLzUHz+dHHt33o+/lL51x8NMsXTZvWctngXMwiRa8KPiCjSl1wzm3vrc1uuezqf+vWbosikIPFm5IFltqywV7paXME3YU52UKdMwWXKZc5ZknoVvPsrRCffk3NnakLsznzHdLiVb+0nkZHH1OuaiaqrwAAADAE6fHwlAW+<a href="ZRoaz3qbWeNG7MaksX6SzElo96zpd6" class="wikilink">ZRoaz3qbWeNG7MaksX6SzElo96zpd6</a>/<a href="VU5D" class="wikilink">VU5D</a>+<a href="FHWvEdUFRM8iyaj6l08nU3HbjDLu3NY05oWqqWDLlk6Ussinx4E8ZVIMI" class="wikilink">FHWvEdUFRM8iyaj6l08nU3HbjDLu3NY05oWqqWDLlk6Ussinx4E8ZVIMI</a>+<a href="PmZJPTQCZJYuhRJoGymeBU9lTl2tNdQgAAAA8ZTaQLDyLJtR2m7w2jnb8siVZssinxgiPDslii5vpzGHNZeQ" class="wikilink">PmZJPTQCZJYuhRJoGymeBU9lTl2tNdQgAAAA8ZTaQLDyLJtR2m7w2jnb8siVZssinxgiPDslii5vpzGHNZeQ</a>/s8xStGSENTVlNoV/<a href="Ozn6pGdmmca" class="wikilink">Ozn6pGdmmca</a>/<a href="HouFp16SRRclMpP75v8LyQIAAGCX2FSy2AJI25LF" class="wikilink">HouFp16SRRclMpP75v8LyQIAAGCX2FSy2AJI25LF</a>/<a href="EujZDEuc6yQLMRwoklnDmva" class="wikilink">EujZDEuc6yQLMRwoklnDmva</a>+qCiJVnsqfEkdMnemP15Fb2dKBM5PP009Rwv+Okk/nPed5ZFFShKJiFZAAAA7Dy3WBhy/<a href="KO4jHbNv0TxX0VhWRgy" class="wikilink">KO4jHbNv0TxX0VhWRgy</a>/<a href="NK2MOT6R7Pyp1fn0e" class="wikilink">NK2MOT6R7Pyp1fn0e</a>+dC0PXSXhICHV8VobN8vz8tzjjXTmsESlTx/8Qi3CW6nHjwpAtNf6NjfeI88Jzf1CCWuahOyoV2JoLQ6RaaSr0mSRIFgAAALvLRpKluIqDAy20o5rqaIffmn/<a href="Zliz6bhpCiBy5OySLDPVQQ1EcEcvSkUMV6" class="wikilink">Zliz6bhpCiBy5OySLDPVQQ1EcEcvSkUMV6</a>+<a href="Ot8Nuu1GRMTEvVydR4OjvyXUInp18" class="wikilink">Ot8Nuu1GRMTEvVydR4OjvyXUInp18</a>/nf1xzZPQJft+9D0//xgtlq0SfQm9vXqH0fzIG71iC6GoOiQLjtAFAADwxFkhWXgSumKQfuY4B8oairKD17LJuVzlMfxSzI4QQugzxzmoF4OWafzBd+<a href="QOpeA0yetfiojXr0qIrhQxUhAQQojrh1FSjdmG95oKWD9ebXK" class="wikilink">QOpeA0yetfiojXr0qIrhQxUhAQQojrh1FSjdmG95oKWD9ebXK</a>+bL9lRWqGQJxlGr1xZEHmi2hCieuzeV4UBV9EE5cQdxItuPFd9b5r6vhhJN7V2FN9cVpHBLthwiFZAAAAPHFwkzMAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABoCULAQAAAAAu8fDqpC1qCXLw+<a href="YDALAV0JYBAP0ZVo8ByQIAAADsKMMa" class="wikilink">YDALAV0JYBAP0ZVo8ByQIAAADsKMMa</a>/<a href="SFZAAAAgB1lWKM" class="wikilink">SFZAAAAgB1lWKM</a>/<a href="JAsAAACwowxr9IdkAQAAAHaUYY3" class="wikilink">JAsAAACwowxr9IdkAQAAAHaUYY3</a>+kCwAAADAjjKs0R+<a href="SBQAAANhRhjX6Q7IAAAAAO8qwRv" class="wikilink">SBQAAANhRhjX6Q7IAAAAAO8qwRv</a>/+kuUy8h2PXWzpvTyLJtRj6ZaSs3PBvBGRL8qS06lHxdk5e17wMcn5nb8fgEdCyjzLQVKjIL5JmUdG22vgNm5S9pKQlyy9ud1vepN/<a href="Cb09QgihkyjT2jtP41" class="wikilink">Cb09QgihkyjT2jtP41</a>/ilBfCMvdQ9r4vqjOmdV+<a href="PA7UIdUbvOp8buUSdVUv2bl3vSk3d3mmzeTimhBCy74c" class="wikilink">PA7UIdUbvOp8buUSdVUv2bl3vSk3d3mmzeTimhBCy74c</a>/rp0xJSvr8kQlSxb59DBMrrf03svIf+aG87uXDJWz8iyaUOL6bJ4XBU9PJw6lY7aAaAE7h6l7vbdh+14RJTV1XDdxMCKjIL4pHplkUTP2qMnjwLmvjD5KyaLV1K0lS8o8QjcdE29VF09SsvAsmlA3TLY1wG9ZAHVQOWvDa4WCuZ88APCo2DXJYhpIIFluCyTL1iXLxpmBZGmSx4HrhnMuKoY+917sEUKIGyZ8mcYsEFOvhDr+hzhdlg8lp4FYh6GO/0/foZXT3MTBqBRAPP00lY/veW/feHTksQuehC7Z96PLoiiK4jLy90n1e/m/<a href="YuaNqPf2ve" class="wikilink">YuaNqPf2ve</a>/<a href="KZ6dR" class="wikilink">KZ6dR</a>/<a href="PmdXPdxJizJiqKwz1hCsoCdxSZZynZKCCnnI4uiKAp7G1fhaXzkO2KpiXoBE9PUjR7jX" class="wikilink">PmdXPdxJizJiqKwz1hCsoCdxSZZynZKCCnnI4uiKAp7G1fhaXzkO2KpiXoBE9PUjR7jX</a>//5H/<a href="WrjW1fy17KPLLnBT" class="wikilink">WrjW1fy17KPLLnBT</a>+acqWyTOMP5W/2vIDF6VL24+riV22AOBgp/+<a href="PilmW" class="wikilink">PilmW</a>/<a href="YN6IvvBeUELkh7LlKWVY4mnMgnKZuvpNI2M3ZfeVRT5VP8GVLlFLyPWPZobVAWHGt2" class="wikilink">YN6IvvBeUELkh7LlKWVY4mnMgnKZuvpNI2M3ZfeVRT5VP8GVLlFLyPWPZobVAWHGt2</a>/<a href="K7tE" class="wikilink">K7tE</a>/qtcQjKYrioLnyceyCIR601PRo8oifFVs6wTxV6WbtSV4offY1PGZaWneuHwvXML1g9fyrXUPb7Fk0VOyUOf1a4NZVlq1WVO9c6gZ35BY6ZB1zjXXqkdVQqgXnCa55udOEJvaRyfkCUoWPg/dZ350WboOdYJZztPz80UWTx2y54Vf8qJcNnamcc6L4ioODggdh/<a href="Os4Ito4hJCSqe5TsJD6kdZURT5LHAo9Y7mOS" class="wikilink">Os4Ito4hJCSqe5TsJD6kdZURT5LHAo9Y7mOS</a>/7r5HHLgq1iWaRT0nZzV0n4SGhkyj738wblZ1LuQrovInSpUizlDg2yXIZ+fvt5W0AdgCbZCGywcoGJQQ9z61tXEW0d286S3mxTGfvPEqdYJY3e4yLRfVqW9tvSpaq97+<a href="KgwPTKk" class="wikilink">KgwPTKk</a>+Zw+mnlJcySOaw/yzLbcp+wbwRIQdBfMXTL+fptfWpahDl89CVZS+kuYjsErVv96r70j7blO5R6WYLns+<a href="PSrPryAKK2jEVsG26LPIpdSanKS" class="wikilink">PSrPryAKK2jEVsG26LPIpdSanKS</a>+<a href="LIN5e6wD1y75ef7fXxYXSY4uftddB5PL9JFrwsjj1pzIh0mJqfjos2UuylPXO09nUK83Sz6qGWRZTDhU" class="wikilink">LIN5e6wD1y75ef7fXxYXSY4uftddB5PL9JFrwsjj1pzIh0mJqfjos2UuylPXO09nUK83Sz6qGWRZTDhU</a>/<a href="L73rIIivmg6pzrI0cl671iLy9" class="wikilink">L73rIIivmg6pzrI0cl671iLy9</a>+<a href="Uwp9UjZll0eBK6cnRvrA3rDameArksGp8FQnYIp6kFUHOqgyehK6uqTvkmDkb0mfNMPHIZ" class="wikilink">Uwp9UjZll0eBK6cnRvrA3rDameArksGp8FQnYIp6kFUHOqgyehK6uqTvkmDkb0mfNMPHIZ</a>+fvUjzJRl9rUSzWrZmxLWoFEuxqzbxAsYPewzrLUDbbuNO1tXKU5DVB9Wiz1HqN69dLe9huSpU5Wb+<a href="YVHTnsL1luUXa9L" class="wikilink">YVHTnsL1luUXa9L</a>+p6yjb5z+ehW05CmyWL2lUq/201u96xiemEatAVw7wfZSuyalM/<a href="HZKlw2K6ldQiK7WSspfEMKLfWLyoVa1qsv1mWWrr8Xno0lEQ3" class="wikilink">HZKlw2K6ldQiK7WSspfEMKLfWLyoVa1qsv1mWWrr8Xno0lEQ3</a>/<a href="S0qkGyrPZzxfg2w7ZyXtvzgnkjk2iGZNFQJkUaviL8o0m1sqNOUtVOowiglqGzyJeTw1WzvErCQ" class="wikilink">S0qkGyrPZzxfg2w7ZyXtvzgnkjk2iGZNFQJkUaviL8o0m1sqNOUtVOowiglqGzyJeTw1WzvErCQ</a>+qz08ChfpRlkU+<a href="VBlB5Ycq8" class="wikilink">VBlB5Ycq8</a>+nUrJAtfsDEtv4EA2Dl6xLLo8wHGNq6lGAcjrb1X7TfX31W9+sre9huSxZSr1ru17roecjaKZVmz7M1OpuMp7UXLNP6VMcbYe7mM0iVZ1ELVsoAnodt6k6G8TbuVyXaZrtrAsucFP7GTcjGjW7J0Jdjoii0yot7h5QXH1WtvLF5002XJXpLFMEgtelq1K5al+jNPwkNDYt2BNdaciymfyjy/lotukCwa6vZmg2QxCEYpro2SRd3e3CFZxH/v+6dnofvMj75n0YSO3p5+rBTrZpKF5wnznZGc8BRFaqwjPvqwNwBux9qSxdjGtRSbkqX66HwIyVJ/<a href="PW9Bsqwsu1GymJ" class="wikilink">PW9Bsqwsu1GymJ</a>+qUxZr5a4fHjN2Es0/r5plKeRqhRsmV/<a href="UcgGXWx" class="wikilink">UcgGXWx</a>/7eRoa7TFcURVHkScTYsQieEOsR60qWOsF+kqUoioLnyRljPwXeHiFiccouWToseSvJ0sOq/<a href="SVLnwiEXpJFkCXRSVkrYhENkkVF293TqBh7REhjbq2er1O3N3csDJUt33Ge1VOg" class="wikilink">SVLnwiEXpJFkCXRSVkrYhENkkVF293TqBh7REhjbq2er1O3N3csDJUt33Ge1VOg</a>+44zMgep9JIsWcIm1TorALvKOpKlZ9TXioWhdlfef2FolWTZzsLQLcreHFfsT5UpN6WGum5ulSyiXM/fBq8ofcUWy+rB1aLKsAIyakzYtEynUdfOLReGekmWiuskPCTkJUuvbZKly5LrLgzls8CpFoZ6WLWXZBF+vqasXJlzQT2qQrLUNLY3NypGRlHJSQtbBJP8d1KGvisLe2pokpwSrPqOazmlpmqU2sPWlSzLBXtFjauzAOwWa0mWjjau0h1+a/o+trb9dSXLRuG3Yi9GM05zs7K3pnJtT1Upa8Gtc+aruxOUjFmWnJTRVIQki0/tsuzt0yjacaZS9FhNJ1fP5dedEulZG0fsBRPKrHf47QrJslywV1R6kRr2a/eiDkv2DL8Vwd2aWfpZVaupFX5exszKpmE4f6WPZOHf2HiPeu9m6bJohydvupvkiUmWanuzoN0FqFvalL2NhbbpkXqvXzuUeOxC2d5c/qra6Ch2iNV9B09Ct9YoQsFU/cWakkVuOzItMAOwW6wlWYquNq7SscnZEoVgafvrSpbCvrG2Q7Is0+iNI2IU/uvn25W9PSJanqpTlntbZNnDD4G3Vw45SsbSP/WURR+of7KrZtfKrqDv5q13LHeZTitCvTVX26d9OnEoISOP/b89NzmvnmXRiqhCsxIAACAASURBVFPtWO7wIrsle0kWde93vS25l1W1mrLOAxVFwdPZkV+<a href="Gx9jaT79ZFi0pZfe1Uhdrj2hPTLJsi14nOvddmgUAPC3Q9u" class="wikilink">Gx9jaT79ZFi0pZfe1Uhdrj2hPTLJsi14nOvddmgUAPC3Q9u</a>+<a href="Qp3lOINgOkCxGzJuNlV345bSeYQcXAOCJgbZ" class="wikilink">Qp3lOINgOkCxGzJuNlV345bSeYQcXAOCJgbZ</a>/j0CyADuQLEbWmgYEADx10PbvDUgWYAeSBQAAAAADYFijPyQLAAAAsKMMa/<a href="SHZAEAAAB2lGGN" class="wikilink">SHZAEAAAB2lGGN</a>/o9EsizTONraSjZP41+<a href="MGyw3SUs5q" class="wikilink">MGyw3SUs5q</a>/eu2aYRahv026s1eJQC3xd9DPvEjL/<a href="VdmqmOie" class="wikilink">VdmqmOie</a>+tXtoi+1aO/G6e+v2ZmxQ79tylSfmcuDOeejRfz0ehWRpnfZ9G251DmAL9azeu2WbRmgfm/3E2W6lAzNbbacWGgeS1qhVvB3JoviLOGBji/ekQrKAwQDJsjaPV7I0zuq9SyBZbgEky31wX5LFuLflTiWL7WLhjYFkAYPhSUqWLDmdyiMCqRecJqLTUk/iUyZWxeHBXvC+3MFYnyqopEP2vOBjknN1jnYUxDcp88jeC+85JYSQw/A/<a href="P9gPpuR58jGQp2eK1LI4KHdNEieIr7RDEu1nMlLv7XtZEOr4LCkPh7hRz" class="wikilink">P9gPpuR58jGQp2eK1LI4KHdNEieIr7RDEu1nMlLv7XtZEOr4LCkPh7hRz</a>+rNk9OgskF9fKTFCPZklXQqY+pG+<a href="HzBXhL63HuxRwghbpgsOs4AbVVN06AXPQ" class="wikilink">HzBXhL63HuxRwghbpgsOs4AbVVN06AXPQ</a>+mtBnBSnUPAyHUe/<a href="PW26svQ0ljVpWxOjezsB2QWh5DGfwo80a96ef4s0xcy4wp5dxQ6ZX1RAr1LQ3Na61MdFrphfeCEkKoG" class="wikilink">PW26svQ0ljVpWxOjezsB2QWh5DGfwo80a96ef4s0xcy4wp5dxQ6ZX1RAr1LQ3Na61MdFrphfeCEkKoG</a>/76H6phqyM4qff2rUel11XG72gU90XzGiDlQmBzfd20LKm4laWW+<a href="YKNKaFjtuCFPH" class="wikilink">YKNKaFjtuCFPH</a>+dHATxVTMzJk+wX1BqqmJ5YG7LmFq26uNBNSySpT4Iv+<a href="MkX7VhWk13wbwRcV4HpgbV0WMo7ZSVPZt9" class="wikilink">MkX7VhWk13wbwRcV4HpgbV0WMo7ZSVPZt9</a>+7epJ+l6tZbXZm5lE24ZzdqWwVOBPDnJIvodMWsqVpr3/eiyvCLk3SxdlqOX6JvEN1DZVMQNC26YcPXwKPV+<a href="BP3rTd77MI3z6" class="wikilink">BP3rTd77MI3z6</a>/<a href="T8S2ofrZXOUV7JTf0oM3" class="wikilink">T8S2ofrZXOUV7JTf0oM3</a>+<a href="NLVfcfEFcn83z8nIQ9YoA2Yvxb2y8R8QNFOLmC3EmtNUItmQvI3" class="wikilink">NLVfcfEFcn83z8nIQ9YoA2Yvxb2y8R8QNFOLmC3EmtNUItmQvI3</a>+/vG9CublDM0JpwGCW8/<a href="T8POXWY8stVWO" class="wikilink">T8POXWY8stVWO</a>+<a href="WW3V9R9mI9iw3CFV6PdGyVwJm9iuodEv" class="wikilink">WW3V9R9mI9iw3CFV6PdGyVwJm9iuodEv</a>+5DXzYh7Q/<a href="TMWFNuV3plvd9PtTvqmte2tVhppYMgvuLpl" class="wikilink">TMWFNuV3plvd9PtTvqmte2tVhppYMgvuLpl</a>/<a href="P0fzUNG37Ja" class="wikilink">P0fzUNG37Ja</a>+1ikiyGRtFl4m2jl71SMFarNv1wqbZT61OVT/6Ziat2DLd6dXtCz1kWot1PJMuluGXZyRgyYFwYkq2yI3uthmk1gnAV4RJaX7eix2i6U3nPjuGQPVtPYnu1uKhSWKZ0bPWGIOnzxty2CwieDk9Osogp02b32vparT9Tqnvnxf9q3MZp8PiWZFHGS+to3bhyqMIoWf57xf2i1f9S54f5PHSfiRhA/bajPkawJSu+gQynfLYki5KszQjmqrFdBrvqklWjEWxYb+q228R62S/<a href="XK71ymBu9LB3Wbld644rgMpazmYc2va1kNaya" class="wikilink">XK71ymBu9LB3Wbld644rgMpazmYc2va1kNaya</a>/4ZkaTeK+1zKUg1Y/fffvRuy6qIddVHqe+eF51DzgbYrPKGnZDFdL9+Rsko7/<a href="JaQajhfdSt19d7ezV" class="wikilink">JaQajhfdSt19d7ezV</a>+<a href="RIyseWdFOVWw9ie3VDVpeWidVlfemq5bBU" class="wikilink">RIyseWdFOVWw9ie3VDVpeWidVlfemq5bBU</a>+<a href="HJSRbRvJtO344eqFpax52W4gOaEOoFx" class="wikilink">HJSRbRvJtO344eqFpax52W4gOaEOoFx</a>+yknGNsSRb7RWiNq88Nnb5Jslx8bs4D172S9bIunoRu2dmJcbPVk3YYwZasnBAqbfBrNeXbkixK0WxGMFeNRbK0J8N7GMFGK6zhMvL3icfS6v7tBuJGTO0RpfvWCniTspd1RutsW1NOuwMdamHXY1VoAys1HxFvMUoW861p90ddlspRO6zazKRS6R1PFUU5A2r8PikMzmPzBJWOKq7/5EnoGrLVsnOryvKE+<a href="Q4V4saevVx" class="wikilink">Q4V4saevVx</a>/b4cRbA2qR49RXtesY7q/2tyTdLVlnsYnjDF2HMplo4aXFro98+5aBk8DsquSpVL33b0zz5Mzxn4K6sn/h5As9We9VVuo25t7S5bKCN0iIEuiE3YslojlNSsPIFlWG8HKCsliuga99YjyrdxfspgvWO+<a href="OzayGnItVq0ImybLSSgOSLGLJww2Tq0q7dFh1lWSxXnYvljYIsezB6e0JKv0lS4" class="wikilink">OzayGnItVq0ImybLSSgOSLGLJww2Tq0q7dFh1lWSxXnYvljYIsezB6e0JKv0lS4</a>+7FQ3x6aLWnCDO7dkzSRazEfpLllaPsd5MRrsnsb1a7Iqijv+eMcai32PDXKBa3lKyWGsZPBGenGTZcGFoZe9cz0z2lyyKdNjqwpChhWvbmzdcGFp903q9BNNfstRG2O7C0DqSZdXCkGnY6LscYJMs9pRXbifJIp8S+sJ7sWJVqFi9MGR2lZ4LQw8uWURxnr8NXlERmNVl1Q7J0vFUGQAx/tfx2wMZ/tVgOwtDJmOKil453lsly2GYXK9aGKq/vuxG6PwQ6rMwtK5QaCw9t1/dVEKXkb+veWnDgetZSVyv/cR5cpJFi/<a href="GUUl2J2rOF37Y7lL8X7BWVQW2FFjSXMq9qGI0" class="wikilink">GUUl2J2rOF37Y7lL8X7BWVQW2FFjSXMq9qGI0</a>+S/<a href="RB3tE85zJkzBB" class="wikilink">RB3tE85zJkzBB</a>+W/<a href="D0dCLjGUVUv2jwvcNv2y28sb1ZDb" class="wikilink">D0dCLjGUVUv2jwvcNv2y28sb1ZDb</a>/li2jiSrW0OphOT5Z/Y+M9+ftGXF5thNZ4ZjWCpWrEFgDZPfUOv11LsmhxjuXxX0r4bRkYKKMX3XDO+wZd2iRLR8rGSr9p5pYQk8ZtsIGV1HjJarr+kUqWolx3qEevbqs2pXPZTlfUsghUF9pF7B5S2SD8tqOK1T9FRcuZS1l9KzR9URSyAymz2h1+qxjEagR7g+obfitnoMvftPzW2pN0CusyXDdhE6exMKTFj5fTY9YCgqfD05Mshb45ud4C17XJ2dih2O5ulSKAEI+lzT5L2XEq94gaNznXqUn5QkYe+7PnJud2C79QtzcL1C2Fyma/<a href="HlsWtT" class="wikilink">HlsWtT</a>/<a href="V32v7CWsj" class="wikilink">V32v7CWsj</a>/<a href="PxfzfGswwjGqhHyRXRJf" class="wikilink">PxfzfGswwjGqhHyRXRJf</a>/bc5LymZFE3OVPH/6fv1BG7WhnVzcxdm5x7SBZ7ypZKVzIrohx6bdLZwErKJme5v/<a href="SxShY5CaR9Olus2o4KUtqp" class="wikilink">SxShY5CaR9Olus2o4KUtqp</a>+<a href="Smp3sr1oMafCr08ofGErYr1fGqdjFp9CobwW9cPo3pjf8cmZ73WLKbrDijps8m58kDrwbyWnqSj5xFfO6LBvj8OPKpOHzqv" class="wikilink">Smp3sr1oMafCr08ofGErYr1fGqdjFp9CobwW9cPo3pjf8cmZ73WLKbrDijps8m58kDrwbyWnqSj5xFfO6LBvj8OPKpOHzqv</a>/<a href="CrQsDzGYpVv3PEhPeBeIE9RsgDQyePfSrB6r9C26I7zAOCxgdPndpphjf6QLGAjssin5dy1nGd" class="wikilink">CrQsDzGYpVv3PEhPeBeIE9RsgDQyePfSrB6r9C26I7zAOCxgdPndpphjf6QLGAjssin5dy1nGd</a>+zAc2iKn+<a href="O5IR6pS72HsyMh1GAsDjBJJlpxnW6A" class="wikilink">O5IR6pS72HsyMh1GAsDjBJJlpxnW6A</a>/<a href="JAmyoR442cIL4L3Xu" class="wikilink">JAmyoR442cIL4L3Xu</a>+lEfiynOqauCqCyncgg2O/<a href="TfutgHwACAZNlphjX6Q7IAAAAAO8qwRn9IFgAAAGBHGdboD8kCAAAA7CjDGv0hWQAAAIAdZVijPyQLAAAAsKMMa" class="wikilink">TfutgHwACAZNlphjX6Q7IAAAAAO8qwRn9IFgAAAGBHGdboD8kCAAAA7CjDGv0hWQAAAIAdZVijPyQLAAAAsKMMa</a>/<a href="SvJQsAAAAAdo2HVSFrgVkWAJ4OaMgAgLUYVqcxpLwCAAAAYGeBZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAeFSSJUuinwNvHCbX9" class="wikilink">SvJQsAAAAAdo2HVSFrgVkWAJ4OaMgAgLUYVqcxpLwCAAAAYGeBZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAgGQBAAAAwACAZAEAAADAAIBkAQAAAMAAeFSSJUuinwNvHCbX9</a>/d4nkTHgTeaRBlXEnH96LL102Ua/xL6B2445xvl72lxZ9Zo1shywV5RZxrnD2x1nsYnoe+4YSIywr+x8b4TzPKHzVY/ePpp6u0RQogzYUl2D++<a href="LT977zotN23IPhJ8clNXRF54nZ8eBN" class="wikilink">LT977zotN23IPhJ8clNXRF54nZ8eBN</a>/<a href="Kju7eC" class="wikilink">Kju7eC</a>+sbxwSPvN3g6m3qUEEJc/z9+<a href="CYfj22CnWCVZssinxIDjh" class="wikilink">CYfj22CnWCVZssinxIDjh</a>+ws2eYowrNoQgkh5HCjbm6zxy8jf58QQqgYIKtE9tuShSehSwghFJKluENrNGqkeCyShc9DV/<a href="TnA5Qs" class="wikilink">TnA5Qs</a>+<a href="SzwfoxzXuRfQm" class="wikilink">SzwfoxzXuRfQm</a>+<a href="P3vlofZ2Eh2TzttyH0k" class="wikilink">P3vlofZ2Eh2TzttyH0k</a>/cNSVL2aH1MMJywV5R4k6ixa08T77xXvoN/o2N94jzJkqXaz55FQf/<a href="COKrosjm4ZiSfcf5v4bh22DH6DPLIgZypffJkyj0HUIIHYfz2" class="wikilink">COKrosjm4ZiSfcf5v4bh22DH6DPLIgZypffJkyj0HUIIHYfz2</a>/Z+fPH57A+<a href="ZMk9C9xbd3EaPXyfhoTJAikQMkqX8X5AskjuzRrNGHgtCtaw7RvKLs7M" class="wikilink">ZMk9C9xbd3EaPXyfhoTJAikQMkqX8X5AskjuzRrNGHgtCtaw7RvKLs7M</a>/<a href="H7Qk10l4ePcyxfDSu5Qs5SvWrY5C1mNvyUK24Ip8Hrqj" class="wikilink">H7Qk10l4ePcyxfDSu5Qs5SvWrY5C1mNvyUK24Ip8Hrqj</a>+5MsvQSZ/lwSultpcffh7cvF2ac/<a href="HlnfAO6NjSRLURQFz" class="wikilink">HlnfAO6NjSRLURQFz</a>+dHHiXktp+/<a href="V3HgVylDsgwISJY" class="wikilink">V3HgVylDsgwISJY</a>+z+Txj+<a href="MHdpjLyN" class="wikilink">MHdpjLyN</a>+<a href="HZKnpK1nKH788WvsVhjfei2QRb0uOXq73Lp5FE7qFFncv3p7PgvGtawQMlo0lS1F" class="wikilink">HZKnpK1nKH788WvsVhjfei2QRb0uOXq73Lp5FE7qFFncv3p7PgvGtawQMlo0lS1F</a>+hdxm0OJ5PHWUlCFZBgQky2ryWeDc31hlAZJFZx3JwhcnPxzduvruVbIsF2x6tJ7ZtyRZ7sPbr+<a href="LgYJNKB0" class="wikilink">LgYJNKB0</a>+<a href="F20iWMqChdqAsOZURXNSbniZZUQctvo" class="wikilink">F20iWMqChdqAsOZURXNSbniZZUQctvo</a>/nzHcoIdTxP8TpstQrJXQSZbzUHN8TNlmx8JTPme8SsucFbHb2+<a href="TzjRS1ZjI8v0" class="wikilink">TzjRS1ZjI8v0</a>/iD74jAHNdn83KZdn3J8v50duQ7zXTMxTflPDkNxK/2vOBjknMlYIi64dcrGU8jZ3ftBizqYOHT32dTj8ry8jz5GIhYS+oFp0lut1hRZMJW1AvY7NPs/<a href="C9rJqUJ0vhIrgm" class="wikilink">C9rJqUJ0vhIrgm</a>+P35rlyw2a/<a href="M8Yb5DCfUC9tvZ7KvJRnqNNKJxq6DLTBSHUO9oXs" class="wikilink">M8Yb5DCfUC9tvZ7KvJRnqNNKJxq6DLTBSHUO9oXs</a>/zWaqgyrYWf2q0nq0ge977D0EtWVpRnG3z5rPAqQLBhEcZzVKFZ37NhHHInhd+sfjVu1kdpmCp6JoqNqvEDZNM2vN0/tvU2yutlyVRKDOmJVVFoy/<a href="S2TuPEiJiOxQ3sLRQKVneR2dHvmsI" class="wikilink">S2TuPEiJiOxQ3sLRQKVneR2dHvmsI</a>+60Wl7Waqqz663z2zqOVHYzVWkoWmyeYS9SWLHYz5r+zo89p7d+<a href="WxqJibGVSshjr19xSOlt9R555fn5yNFOybG71Cs1oxcMw" class="wikilink">WxqJibGVSshjr19xSOlt9R555fn5yNFOybG71Cs1oxcMw</a>+<a href="Vv3bVMz6eXtDWdQ" class="wikilink">Vv3bVMz6eXtDWdQ</a>/1cr2snY4eQNX/1/3vv/ox4xZPbaplDd/jBMLmTYk6VXB8PiVpJFurscXa7i6Q9T2VqyeTimdBL9n68yaPHZeHq24EXB09OJQ+mYiZC2xrwIT0KXOOPgp1m6lOuyZkF9nYTjMfvGi6IolouTn89qyWJ+nCehS1+xxbKML6teurZkKfsO0X/tldkwFb/dQeSzqf8vOeqosZD5l9Ar4+byL6F3KDuvKurTYMCqZe55009pNguc50H8Vx7/y59+<a href="SsWwOj" class="wikilink">SsWwOj</a>/yaNVHmC12UNXF4uPR2WVXJvkimhw4k9OUFwVfnE3HzyySxWptPg8P/sEWy6IoCv7t5OjTKsnSiMYt/3ReBmIsySKfVnmwVcF1Eh5KlxN2dsPEbL0rPSfLNHrjyGDGZXr2o/eslCzNKE6zeRuf12azlOGZzvjt0SzlzeZ2FQfPS5urLs0tFd2uDHWEruzpTWeLLJ46zjTOrxfs1ajSLmziyDFVMVHA4nQpv3GpFxyfJTkv+<a href="CKauPYWekiI64vxU4xwsuyiII4ctuX" class="wikilink">CKauPYWekiI64vxU4xwsuyiII4ctuX</a>/<a href="GofzrLaq926Wfo" class="wikilink">GofzrLaq926Wfo</a>+<a href="D504wyzurtfIEvmDj2hOWlhK1DdLbjLbG0iy11Q3K" class="wikilink">D504wyzurtfIEvmDj2hOWlhK1DdLbjLbG0iy11Q3K</a>+hWT07J+zS7R1erXyrMlP8bKqvorzbeNzeS/+3h703oLNtbyeZ2wYxlUYO5wjL76tz61ZjOF+G/qTE5TzvP5kefey0Y5cPdsT7IY9hYJ77mM/<a href="H3VydTUTJLFKiaUHM1Dd7" class="wikilink">H3VydTUTJLFKiaUHM1Dd7</a>/sRpV/tj+uxpd1v2WdhSGlaNbity2pU08nzAKHEud1MPlB/3LtMKD4b/<a href="VFZTtX3" class="wikilink">VFZTtX3</a>+<a href="BHmdli10l4SL2AxcpnmTWTN3k8dZqG6pAsBmvzJHRb72vRqJHGn7o11OHHWgVq" class="wikilink">BHmdli10l4SL2AxcpnmTWTN3k8dZqG6pAsBmvzJHRb72vRqJHGn7o11OHHWgVq</a>/<a href="Km6mtC2nk4" class="wikilink">Km6mtC2nk4</a>+<a href="C5xn9f9tLAypr7Y4pEmymJxQE166B2aRr" class="wikilink">C5xn9f9tLAypr7Y4pEmymJxQE166B2aRr</a>+z3TmfvPFdEj1kqul2K5qTCZeTva80qi3xtLBG6RM1n9X8bXUHHEl5rYaguY2sZIp8FjlaJWkE6q9XuCdYSmTXcSjOaG0vb1P3coDSpvV/qaPVrVb0pP6aiafWoq7pmM+lXzBaXkf+s3oWUx0dMfk7ae8WWrzZXAztMIWbxqeP/c+J/mD/0EQlgW2xrYYhn0YSav7caba/<a href="VYjeQLHUwf" class="wikilink">VYjeQLHUwf</a>/nB1+9xnsYnx2L+cSuSpXr2xl78himedaz1NqaglKdsBmz1JlnkU2MAgcViCzamhJA9L/g5kl8htkwas9EVy2KwdrWjwQuOo/<a href="ZChmAzydLhgdICafyrzE4vydJy" class="wikilink">ZChmAzydLhgdICafyrzE4vydJy</a>+w7JYjGvsRM3mMUqWexBBtaKbpejW7K0W7dmlq1JljobTUfSstSULB3VapMsK0rUEjd9A25MjaVBLzdo9zCmfsne6tfIsyU/<a href="TdaULOt4u4oypaRO" class="wikilink">TdaULOt4u4oypaRO</a>+<a href="XT0iqskywpTLNPojTIRDp4Ctw" class="wikilink">XT0iqskywpTLNPojTIRDp4Ctw</a>+/<a href="FQ5hn4m5E8lSlEeZicNB5IRz1" class="wikilink">FQ5hn4m5E8lSlEeZicNB5IRz1</a>+<a href="M8nU29kRccn8SL" class="wikilink">M8nU29kRccn8SL</a>+bZmWXTJsjrYsN1Za8nn8Y/e69fKEv5KAxolS0d8SdNiRVGumhNCZFXaMrmOZLFauygPGaOEkJY4E9xCsliqgKefpp7jBT+dxH/O+86yrCVZLOZtdOI2s3RLFnLQWrHqruhGOfpIFtUI9yJZtKdWSRZztXZLFmuJWpJljRDyVmNps9oNNJNaW0q3ZOmfZ3Or11lXsvQqpsl889CldMwWV9Fkojtkx+fuCsnSYYqrOHj12n9hCVMDg2R7m5zF/<a href="K3jH1UTp" class="wikilink">K3jH1UTp</a>/mXKP7LPMNpngtdS7KU+Ug/<a href="TctgC" class="wikilink">TctgC</a>/vjmqNvdWGonOq0Fr9tSTWSjufnv8XCFOnpD5OTBRdfBuoBVh0GtC0MlTEERVEUV+fR72p7VS2m/uts6tFafrUz+bduKFkWU3/<a href="RYe2KZTp7Z1mDv93CULsKtJ50jYWhpieI9K2SxWRe66v7LgzJiUw1dlVtVp0VXWaoz8IQVc4Na7fQbS0MCe3V1mHKnibbwpChZXUvDFlLZFoY6mFGzaRVY7GPzlY3UE3a0VI6Wv0meTa3eskGkmV1MU2Ir1zH8w5bgtLYK" class="wikilink">RYe2KZTp7Z1mDv93CULsKtJ50jYWhpieI9K2SxWRe66v7LgzJiUw1dlVtVp0VXWaoz8IQVc4Na7fQbS0MCe3V1mHKnibbwpChZXUvDFlLZFoY6mFGzaRVY7GPzlY3UE3a0VI6Wv0meTa3eskGkmV1MU2Ir1zH8w5bgtLYK</a>/<a href="ZcGDKaYplGwYR94yLiapPj9cBj5HZHyWl" class="wikilink">ZcGDKaYplGwYR94yLiapPj9cBj5HZHyWl</a>+cBUHB9qioqMsulNPBNCJ793qA6Vsvd/z84/<a href="R4rp3h3h5xj7Ltse" class="wikilink">R4rp3h3h5xj7Ltse</a>/sfF+vUZufvwy8vdlfuRmh33/ND47+5OvI1lkV6iG39YWsBVfR4urJ4TIjpWnpxP3B32Q9sqQww4DGj4otX1YhBA5NlgsdvZLOT27XLBXcgbelskFG9Ny00r+lQUvHUJMx3rarZ19ZmXQIl+wsXlSd1PJYqsCZQDj6ezIdwmdnH79dPbH3ytiWcQylrR8NmfB2FEOwNVHPpN5ld/kv59E8anVLPZYFqtf2Sq6XYpVkkUGfpbbVfIvoaGFritZxC/<a href="V8NsycLuogs2FDuP5" class="wikilink">V8NsycLuogs2FDuP5</a>/<a href="MgblV" class="wikilink">MgblV</a>/qbcnS3bGYPaGrRK3w235mtDUWDYsbWOu3o1/qavW982zJT5N1JUsfb78wCxdtx0aJpcOxShY6ibK/zk9+<a href="W3CbKZZp9MatvEhkrNptN6Bzq0GLDQ" class="wikilink">W3CbKZZp9MatvEhkrNptN6Bzq0GLDQ</a>/sp15wfNKKQ1O2kip7EUXP8vb4/<a href="Vguf2obDhfRxCXEnUR" class="wikilink">Vguf2obDhfRxCXEnUR</a>/zLWNcF+<a href="VuKr2wPbXefTrKRPrC6JbbOyjaz4uwkTkDrrFqU" class="wikilink">VuKr2wPbXefTrKRPrC6JbbOyjaz4uwkTkDrrFqU</a>+p47Mk/67/7G8lEMwSWJrGzLj711r8dgozue2zSqHcIKCH6Fd5sBmwKjJ95jjKDSbKtsn6x22LFUXBs/<a href="Po5JSFvtvYRWnIZFEUyn5C6h19jd" class="wikilink">Po5JSFvtvYRWnIZFEUyn5C6h19jd</a>+7jh+23aAoLNbmRfYlOvmVSb2rfDfXXOo1cqH9OT+<a href="XOykIIXQSXZzWzillhLEKxMSVsMZ8IYZSdh6bradT7b2k4" class="wikilink">XOykIIXQSXZzWzillhLEKxMSVsMZ8IYZSdh6bradT7b2k4</a>/<a href="Dr59A98MNf4nSptQs3TLjRvNWrxc4Fs1nm8b" class="wikilink">Dr59A98MNf4nSptQs3TLjRvNWrxc4Fs1nm8b</a>/dqln5pxdtD6wLRR0/<a href="VKIojBWt1YMe2Ejdf" class="wikilink">VKIojBWt1YMe2Ejdf</a>//<a href="Pf0sD7juOpzSrehcxcfwwajiYyMy5vYUaZd8yjZl1D3a9qbUuVHkLBCHPHEe9PKhdrdWeGpsnmEtUtCqujxlLY1oai4LBDepCmer3xtZSurvNvnm2uaVCo4d3w" class="wikilink">Pf0sD7juOpzSrehcxcfwwajiYyMy5vYUaZd8yjZl1D3a9qbUuVHkLBCHPHEe9PKhdrdWeGpsnmEtUtCqujxlLY1oai4LBDepCmer3xtZSurvNvnm2uaVCo4d3w</a>+T/qCb6kf273Ux6ebsFc+RKR6/<a href="Y8FXZiOpvRYMpSpsrulAiNmRBsgyYe7gWsTuAA6wEBgRg10CrB8AAJMvjBwYEYNdAqwfAACTL4wcGBGDXQKsHwMAdSxZ1ofQR3hrz" class="wikilink">Y8FXZiOpvRYMpSpsrulAiNmRBsgyYe7gWsTuAA6wEBgRg10CrB8AAJMvjBwYEYNdAqwfAACTL4wcGBGDXQKsHwMAdSxZ1ofQR3hrz</a>+<a href="IEBAdg10OoBsHAPsywAAAAAALcFkgUAAAAAAwCSBQAAAAADAJIFAAAAAAMAkgUAAAAAAwCSBQAAAAADAJIFAAAAAAMAkgUAAAAAAwCSBQAAAAADAJIFAAAAAANAShYCAAAAgN3jYVXIWtSS5WHzAQAAAIB7ZlijPyQLAAAAsKMMa" class="wikilink">IEBAdg10OoBsHAPsywAAAAAALcFkgUAAAAAAwCSBQAAAAADAJIFAAAAAAMAkgUAAAAAAwCSBQAAAAADAJIFAAAAAAMAkgUAAAAAAwCSBQAAAAADAJIFAAAAAANAShYCAAAAgN3jYVXIWtSS5WHzAQAAAIB7ZlijPyQLAAAAsKMMa</a>/<a href="SHZAEAAAB2lGGN" class="wikilink">SHZAEAAAB2lGGN</a>/pAsAAAAwI4yrNEfkgUAAADYUYY1+kOyAAAAADvKsEZ/<a href="SBYAAABgRxnW6A" class="wikilink">SBYAAABgRxnW6A</a>/<a href="JAgAAAOwowxr9" class="wikilink">JAgAAAOwowxr9</a>+0uWy8h3PHaxpffyLJpQj6VbSs7OBfNGRL4oS06nHhVn5+x5wcck53f+fjPLNI7idLmdxHga/xKnvCiKm5S9JOQlS282Ty2LfPqS/dfPHhltr7ptqLWzAYoZU3YvGR4yKfMsB0mNgvjm9gbMv4TeHiGE0EmUPVTL6oPV6+qWdHsevTW2Wdh7bokP3djtplumMQtEvRNCiOuHUT3KpMwjThDn6gM3cTBq/uN1Eh4SQqgfZa2fjoK41bnnceAY/0dPnqhkySKfHobJ9Zbeexn5z9xwfvdNueqeeBZNKHF9Ns+<a href="LgqenE4fSMVs8RGdictONua2" class="wikilink">LgqenE4fSMVs8RGdictONua2</a>/6vAsmlA3TBb30yncSrJoZnzoXmxQmKTtbQ0o0txiF3F3WLzOOiRswKO3xjYLu90OrQcP29itpuN5PHXInhd+ycWfycfA2yPONBaqpadk4fPQHT1zntGG2IVkKYqit2QpR7JtDfBbFkAdVN1To58SCuZh+pRHLFlKKXlPnQIky4Nwd5LldjN898S9SZZHbA1Ilo1ZQzqIUUbto1ZLFp6ELjl8z350yd6YfeP6TyFZekqWPA5cN5xz0RTpc+/<a href="FHiGEuGHC1akw6vgf6vWOPDkNxDoMdfx" class="wikilink">FHiGEuGHC1akw6vgf6vWOPDkNxDoMdfx</a>/+g6tuombOBiVAoinn6by8T3v7RuPjjx2wZPQJft+dFkURVFcRv4+qX4v/1fMvBH13r73XfnsNIo/v5PrPs6EJWJSzTYodksWZQmJesFpIhyKp7Mj+<a href="TpCvYDJuUFhEy947zuk8XbDUtRNHIyaE" class="wikilink">TpCvYDJuUFhEy947zuk8XbDUtRNHIyaE</a>/<a href="J7L7znlBBCDsP" class="wikilink">J7L7znlBBCDsP</a>//<a href="KC1Rq1xlrK9Ti2LA6dMzAniK6WjXKbxB9" class="wikilink">KC1Rq1xlrK9Ti2LA6dMzAniK6WjXKbxB9</a>+h5Y9ZWS8Xut2o47N66vImDkaHYXKtv9eWlLnuOh2pwyssjpQyTyYuSukfxSmX7bdhxjJBMSXL5vfVgw4Om2SxGdDexiW54odkFHy+<a href="MPQSJhcSlRv8KP8X9aaf48" class="wikilink">MPQSJhcSlRv8KP8X9aaf48</a>/<a href="Tyj2YcemWpzELylZV56ejGXb1RaVJGv5ka" class="wikilink">Tyj2YcemWpzELylZV56ejGXb1RaVJGv5ka</a>+wNjOVqWKMxlLTWDo5mpqTbjV12l/<a href="FRWcA6Wx1lV9Mh1JueJlmrsBfMG9EX3gtKCKFu" class="wikilink">FRWcA6Wx1lV9Mh1JueJlmrsBfMG9EX3gtKCKFu</a>+<a href="GWhuYfuLbUlZWqmllj2A2vntm1eW5" class="wikilink">GWhuYfuLbUlZWqmllj2A2vntm1eW5</a>+g9k72fqOHa2nuVHYv1ky2/<a href="EQhjwOH0HE4N5alp2S5jPx94kzj7GvoUqJOE0CyFEXRV7Lweeg" class="wikilink">EQhjwOH0HE4N5alp2S5jPx94kzj7GvoUqJOE0CyFEXRV7Lweeg</a>+86PL0n2pE8xynp6fLzJ1Kkws38p5sKs4OJD1xxfRxCWElN3EdRIeyoW6fBY4lHpH85yX49/<a href="IYxdFFvmUypWjLPIpKdvMdRIeEjqJsv" class="wikilink">IYxdFFvmUypWjLPIpKdvMdRIeEjqJsv</a>/<a href="NvFHZsWbzcEwJIc6bKF2KNMvKtkmWy8jftywzLxfsFZUKV6S870eXZVbfzdJlwdPZ1KPkIIivapuIZlC" class="wikilink">NvFHZsWbzcEwJIc6bKF2KNMvKtkmWy8jftywzLxfsFZUKV6S870eXZVbfzdJlwdPZ1KPkIIivapuIZlC</a>/<a href="XS5FTaIFL3g" class="wikilink">XS5FTaIFL3g</a>+P/<a href="LKErWmBwhxpnF" class="wikilink">LKErWmBwhxpnF</a>+nZ5/<a href="SRsrMkrj5As2poSO2YKL1MRip" class="wikilink">SRsrMkrj5As2poSO2YKL1MRip</a>+qvVeeylFOU008pL4WFrJcLxW5iJpNWK3Q8CV1hk/q93JqUre66uIqDA9n4pQ2FV+hzqqojCftQbzpLy+qQQtNgRtlfaD8DLWySxWhAe9VY07T0Em0Xks4/<a href="YUlWBn9QZ3Ka8qZn1vB56EqvK4plOntXNgRbMyzsXtcogTIkWBu7lhV7K7POsvAkdCtjypSrbzPlZ" class="wikilink">YUlWBn9QZ3Ka8qZn1vB56EqvK4plOntXNgRbMyzsXtcogTIkWBu7lhV7K7POsvAkdCtjypSrbzPlZ</a>+bGLjpV0RZE2akTzPKOsmeRT4VJy7oT/66Nf6JPOAjiK55+OU//<a href="Tm2ShX9j4z1CX7HFUqZGJ1HGLfOd6" class="wikilink">Tm2ShX9j4z1CX7HFUqZGJ1HGLfOd6</a>+fWaF5zn6D3TrZ+<a href="Y6VrKZ1Y6fbdvXrXBJWoNSHPjtlJ1NBhfSRLPfCJYUjpxCBZiqLoKVnqkay5RqvNfxT1FMilpjmKUnaIbqIWQM2pDp6ErvTFOuWbOBjRZ84z8chl5O9TP8pEM9OmXqrxUq1Co2SRjq5Nu9X" class="wikilink">Y6VrKZ1Y6fbdvXrXBJWoNSHPjtlJ1NBhfSRLPfCJYUjpxCBZiqLoKVnqkay5RqvNfxT1FMilpjmKUnaIbqIWQM2pDp6ErvTFOuWbOBjRZ84z8chl5O9TP8pEM9OmXqrxUq1Co2SRjq5Nu9X</a>/c96Ut0VhmJURXWfdV1b/<a href="SwRPvWTpdcpeEkNP1x5rFUOlNskikm0Pw0bJ8t" class="wikilink">SwRPvWTpdcpeEkNP1x5rFUOlNskikm0Pw0bJ8t</a>/<a href="WetHtJgvblpL1e21V" class="wikilink">WetHtJgvblpL1e21V</a>/<a href="N1ed3asXmF3JPH1H8zyptnXMSPQsM6ymAxorxprmr17Ce2lVcO5KYreKxe1A9ua4U1XX6SVoHpjR2NX6bBM34UhS6uxNPZGQervt6W17I3mYyhs0ewTmpmv" class="wikilink">N1ed3asXmF3JPH1H8zyptnXMSPQsM6ymAxorxprmr17Ce2lVcO5KYreKxe1A9ua4U1XX6SVoHpjR2NX6bBM34UhS6uxNPZGQervt6W17I3mYyhs0ewTmpmv</a>/+<a href="RJ6Jp0pFmybJDbnubt45y9XGuDXv2m2zN5Gp" class="wikilink">RJ6Jp0pFmybJDbnubt45y9XGuDXv2m2zN5Gp</a>+w9+<a href="XEmzZJb49" class="wikilink">XEmzZJb49</a>/rySLnp+<a href="GASFZiqLoJ1mUkazhzaK" class="wikilink">GASFZiqLoJ1mUkazhzaK</a>/aFKt7KiKspYOigBq2TqLfLm4UFXeVRIeUp+dBg71oyyLfKoMvVW/ownYFZKFL9iYVkFSLcTUX7NHa7tF1VqsLVzZNeAFx+yknFvuCsKw/ilmm9sN2yRZLj43nbv2/oZBlD9rKam8t91OZFL/38xad1Zas6Dl2+2O1BIfdYbXMCPQ6BHLUv3ZUTXWNPX0rS7UCJm6SdnL+nddA8MyjX9ljLFqbKgli6EZWr2uaZXqjR2N3fj7Vrm6JQtP4xPGGGOhWHRoG9Pc2FsFqTrJ3NoFVTPQZM8Lfmr0QZpkqQ3SbUlDszK2xI1yq1qpR5/Qt9+wuZbcm9Ok0516i+k0Pvkp8Pbqr9bVsywNN9P/hGQpiqKfZFG3NxskS+vjoyik2jV2E+r25g7JIv573z89C91n8pt+9Pb0YyVCN5MsPE+<a href="Y74zkTKkokrI6SUZBfN1TslSfJnbnlm88Y0z4rpyhfQDJUn9z2CWL2N4s0u" class="wikilink">Y74zkTKkokrI6SUZBfN1TslSfJnbnlm88Y0z4rpyhfQDJUn9z2CWL2N4s0u</a>+<a href="QLDKp7UsWoyNBstwBa0sWc9VYirgJRwAADU5JREFU01wlWSpv3ECyyFVm1w" class="wikilink">QLDKp7UsWoyNBstwBa0sWc9VYirgJRwAADU5JREFU01wlWSpv3ECyyFVm1w</a>+<a href="PGTuJ5p" class="wikilink">PGTuJ5p</a>/1WZY7kiyNeQhLDutWZl8YSk8nDiWOHzLG2Nk8fm+aZekpWaqZgFUiIE8ixo5FxIZYPX8AydI7t9JSPfqEvv1Gp2QxhwfcWrIIssin5Y9XSZZqXUmnnNGEZCmKopdk0Xb3NCrSHhHSmNSq52/<a href="V7c0dC0OlyzrOM" class="wikilink">V7c0dC0OlyzrOM</a>/<a href="GDLPLpvuOMzEEqvSRLlrBJtfZsZcOFoVUtUJla7D" class="wikilink">GDLPLpvuOMzEEqvSRLlrBJtfZsZcOFoVUtUJla7D</a>/<a href="WKn3EVheGDJJF3xR2PwtDmldYHKmxYMHnoTuyhARBsvRkHcnSFfVlS9PUS6yY4S96SpbmslS9ymNvhlava5TgHhaGGmOkeNG2FoZWdkFKI11DstT6aasLQytz290nrHLOXq4l7G" class="wikilink">WKn3EVheGDJJF3xR2PwtDmldYHKmxYMHnoTuyhARBsvRkHcnSFfVlS9PUS6yY4S96SpbmslS9ymNvhlava5TgHhaGGmOkeNG2FoZWdkFKI11DstT6aasLQytz290nrHLOXq4l7G</a>+<a href="IJdpEsjTLW72r" class="wikilink">IJdpEsjTLW72r</a>/<a href="McVksVU6Vnk0" class="wikilink">McVksVU6Vnk0</a>/<a href="KAFkiWoih6SJbG9ubWFEI8dcrJgzKaTBhdDb9VQt4a25vV6Ce5jFL5WTlrp2qUusGsK1lENJNpWbeJGn67TKM3MlZrRfht27n" class="wikilink">KAFkiWoih6SJbG9ubWFEI8dcrJgzKaTBhdDb9VQt4a25vV6Ce5jFL5WTlrp2qUusGsK1lENJNpWbeJGn67TKM3MlZrRfht27n</a>/<a href="XrBXVEaf6bFvKfOqdtIYKoSPmmJalYi88lutmuPRIo16hN8aJIt" class="wikilink">XrBXVEaf6bFvKfOqdtIYKoSPmmJalYi88lutmuPRIo16hN8aJIt</a>+<a href="Us6a4beturNh8YoOR1LDQsW" class="wikilink">Us6a4beturNh8YoOR1LDQsW</a>/i+i/otOMkCxdrCVZOtq4LU1jL2ELv11zlkWLJ50zv4rr7/hysHldgwvmjfRtAVsPv9VD8hPmO9TYaiyNvTug1RR9IhbB5UeaGlWtFNZ8AIRYOpcBzobwWzndVTXSdktcO7cm89r6hFXO2dO1RFytmHkqM2maJ1P/<a href="VE2nchUHB9oWMJEfmfgqydIhi0X3DslSFEUPyVJtbxa03Uvd5qfvBlR2uFHv9WuHEo9dKNuby19VG2VdP3jtKA1YF" class="wikilink">VE2nchUHB9oWMJEfmfgqydIhi0X3DslSFEUPyVJtbxa03Uvd5qfvBlR2uFHv9WuHEo9dKNuby19VG2VdP3jtKA1YF</a>/<a href="UNEbqmZJHbjlYuyQvUzcm1C3ZtcjYH2Ct7" class="wikilink">UNEbqmZJHbjlYuyQvUzcm1C3ZtcjYH2Ct7</a>/<a href="NQNeOoWqubgqthTbrEzbnKuU5M9Ghl57M" class="wikilink">NQNeOoWqubgqthTbrEzbnKuU5M9Ghl57M</a>+em5wNkqXa3lzbc61Nzs26s1LbpL3J2eRIIn7w9Wuv3Kt4WsXhd5gRkqWLtSRL0dXGzWl29xKNTc7rxrJUgyghxPXDD4Hct9L57W71Oj3l6I1D5PB8i03OFgsLKs1ECHH88DjwaOuc06KwNfaubcPmsmt1p2ziVQv7Z3OlTOu6xYEIhk3OdWq2lrh2bjvM2+gTVjlnb9dSK7qvSRU/0TOcJdHPyg52rbfsliyWqHZl6k6LYCgZBfGNtqm+<a href="ZI1jcsjTkizbotehYbZqA4" class="wikilink">ZI1jcsjTkizbotehYbZqA4</a>+fu6o7iA8AALgzIFmMmDcbK9Ok5TSv4cgH8Ai5r7qDZAEAgDsDksWIZZbFtnQCHj/mujPOUq49V1kDyQIAAHcGJAsAAAAABsCwRn9IFgAAAGBHGdboD8kCAAAA7CjDGv0hWQDYEfpefGNnmcaRaX/yBlTBbbfP1a2py9InM4oRHgv3ZEOexr/<a href="IPdK9doCuzx0luxnyQkpC2rvQt9gQHp5hjf6QLADsCLcd2LqOG16bxzQ4rVOW1jn0j4F7kSxdB" class="wikilink">IPdK9doCuzx0luxnyQkpC2rvQt9gQHp5hjf6QLADsCLcd2LqOG16bxzQ4rVOW1jn0j4F7kSxdB</a>+<a href="Zui8fkFcZbGoqi2HJDeHiGNfpDsgCwI0CyWIBk6fWSnZQspsxAsjwgkCwA7AhiYHNf" class="wikilink">Zui8fkFcZbGoqi2HJDeHiGNfpDsgCwI0CyWIBk6fWSnZQspsxAsjwgkCwA7AhiYHNf</a>+y9o60wBnsasfaqp+rBy9uYoiG/<a href="EqcTiJFlCCHF9Ni" class="wikilink">EqcTiJFlCCHF9Ni</a>+<a href="H8WUaM8PJrRqmhaGUeWTPC35cJ03134lyVrW4yOK592KPENK" class="wikilink">H8WUaM8PJrRqmhaGUeWTPC35cJ03134lyVrW4yOK592KPENK</a>+<a href="Mkw5W1Y9uFm7A1k5AnvPCz4mOW8awfr2C" class="wikilink">Mkw5W1Y9uFm7A1k5AnvPCz4mOW8awfr2C</a>+aNynNjRYZZIo8sUl8tk21VgHLou472q9oOtqN+<a href="W8e5ygO1RS1PWH2QdH0mL" class="wikilink">W8e5ygO1RS1PWH2QdH0mL</a>/<a href="XevPX2mkN1s" class="wikilink">XevPX2mkN1s</a>+<a href="QXzBsR53VgKGCf2leNoB5pbU9WL7niosLUb95WtVmbrk9OCvMRxtpRs5pCXaMh9KvTB4cMavSHZAFgRxADm36DlRjL1eui5E007St12h" class="wikilink">QXzBsR53VgKGCf2leNoB5pbU9WL7niosLUb95WtVmbrk9OCvMRxtpRs5pCXaMh9KvTB4cMavSHZAFgRxADm36DlRjL1eui5E007St12h</a>+<a href="X5d1P2uU15c074Ze8KK" class="wikilink">X5d1P2uU15c074Ze8KK</a>/<a href="WMpwxaJMs1VAqbmxZkSZPQrf6dznuqhcTUieY5Tw9P9cHi3wWOCMxHOo3edW3dGmXAc2Pyqtn9Kt3rW8XF6KJ0UvegyMeVy4PkqES1I8y9Rak8nWG29DENTSymuTFBa2bWbtv9ilFgLhbRyq5fncwtWdZZNlV" class="wikilink">WMpwxaJMs1VAqbmxZkSZPQrf6dznuqhcTUieY5Tw9P9cHi3wWOCMxHOo3edW3dGmXAc2Pyqtn9Kt3rW8XF6KJ0UvegyMeVy4PkqES1I8y9Rak8nWG29DENTSymuTFBa2bWbtv9ilFgLhbRyq5fncwtWdZZNlV</a>+/<a href="Srfe2iKOXyNWuy4kpFYZ" class="wikilink">Srfe2iKOXyNWuy4kpFYZ</a>/ynhB5sVr5yPRTytfPSddFUf1nWYwNoV+dPgKGNfpDsgCwI4hBq3H5thPEWb+<a href="Li9s9NTXdo9lxv7GKTbLUaSp3g" class="wikilink">Li9s9NTXdo9lxv7GKTbLUaSp3g</a>/dMU32kWVj1V3p51euUq8xcp+wlWanbrG/<a href="XwyDqu6PXvaK586u8TtZ" class="wikilink">XwyDqu6PXvaK586u8TtZ</a>+bXXz/uTq1fXF8uvfdF204jzU21V71JSYmTCM37ZkGyiZlxMzlRapyvu9n890ZLi/<a href="ZDE1hM3q9CEY1ugPyQLAjqBfDldU3Wsir0xv0Oqsu5bwqz" class="wikilink">ZDE1hM3q9CEY1ugPyQLAjqBfDldU3Wsir0xv0Oqsu5bwqz</a>/<a href="FgNekvdhvkyzrp8nT" class="wikilink">FgNekvdhvkyzrp8nT</a>+<a href="IQxxlgoljxW7v1p3Xxr3DEkLycnhHrBMTspV8qaksX8dtt96eJs6GaueBK6reLZbwr8lTHG2Hu5EqHbsKWoKn2W2" class="wikilink">IQxxlgoljxW7v1p3Xxr3DEkLycnhHrBMTspV8qaksX8dtt96eJs6GaueBK6reLZbwr8lTHG2Hu5EqHbsKWoKn2W2</a>+75az1yGfn7vSRLu4B9a1/<a href="MRoiFmJ9q41rtplr6OJTLRopkqR8py7X40isn7ds3a6mxUSxL" class="wikilink">MRoiFmJ9q41rtplr6OJTLRopkqR8py7X40isn7ds3a6mxUSxL</a>+ec6dfrADGv0h2QBYEfolCw9vv/6SxbT1cQN1pYsxjTlNeaOHzLG2Nk8fu9uS7IURVHwPDlj7KfA2yNELmRoC0PWt28gWXpcKSovTHb98Jixk2j+uT3L0tIf1WzT/<a href="UmWHrUv6iGJGDsWwR7Omyhd2u0mLk" class="wikilink">UmWHrUv6iGJGDsWwR7Omyhd2u0mLk</a>+mjv+eMcai3+<a href="PGLItFsqzOSVuy1LMmt5csw7jid1ijPyQLADtCY61ErOJXC0Oru9dekkUMeKsF0DqSxZpmY7LduMTTliyNhaH2clL7qXolQjFCx9ttQ2" class="wikilink">PGLItFsqzOSVuy1LMmt5csw7jid1ijPyQLADtCY61ErOJXC0Oru9dekkUMeKsF0DqSxZpmY7LduMTTliyNhaH2clL7qXolQjFCx9ttQ2</a>/<a href="HwlD78I9WvhujYBb5tDnLsmphyCBZNl8YMhSwZ" class="wikilink">HwlD78I9WvhujYBb5tDnLsmphyCBZNl8YMhSwZ</a>+23y9Vpt6YSuoz8fU2y1Cs710l4SNww4T1zspWFIZPT9qvTx8CwRn9IFgB2BC0AU0Qa0jFblOG35ZeujNlUhr2SlHnVkGmVFzLaVAZXynDOdkzJWpLFlubfWpBswnyH9lgY0sKNLeG3fy/<a href="YKyqDWPUQ0doI3P526wKHEn5bTtK4YcJFrLG8F12LjFbRolbnTKyPNI" class="wikilink">YKyqDWPUQ0doI3P526wKHEn5bTtK4YcJFrLG8F12LjFbRolbnTKyPNI</a>/j6w6/<a href="NUkWLVC0XLIxDNUXzBuVY7CtgL1qny" class="wikilink">NUkWLVC0XLIxDNUXzBuVY7CtgL1qny</a>/<a href="YmMqIVz1ktVMJSf" class="wikilink">YmMqIVz1ktVMJSf</a>/<a href="MEjZxGgtDMsxWlHdvzL7xvn64Sfhtv4bQr04fAcMa" class="wikilink">MEjZxGgtDMsxWlHdvzL7xvn64Sfhtv4bQr04fAcMa</a>/<a href="SFZANgR5DbXt2" class="wikilink">SFZANgR5DbXt2</a>+9cpNztTG14OnsyC8X3+udsTpyYYIQj6XWnrrQd43aEltLstjTVHbnEscPjwPTJhoDSnktm5xtl8yrRrC+vSMmQ93fqyarvq7cattE7hKS2Q4/<a href="BHLjjD6D0rHJ2SxZVDOW" class="wikilink">BHLjjD6D0rHJ2SxZVDOW</a>+3UNQ7VYnRFa4U97AfvUvvabxo5ls9STylLk8P1xoG/<a href="Ocl75VeDRaZKb3mJzavMmZ0NmVO" class="wikilink">Ocl75VeDRaZKb3mJzavMmZ0NmVO</a>/p1xB61enDM6zRH5IFAABAyVrxKA/<a href="Pozp9bpAMa" class="wikilink">Pozp9bpAMa</a>/<a href="SHZAEAgB1GXW" class="wikilink">SHZAEAgB1GXW</a>+<a href="Syy6G3d2PFUiW2zKs0R" class="wikilink">Syy6G3d2PFUiW2zKs0R</a>+<a href="SBQAAdhnbMs0ggGS5LcMa" class="wikilink">SBQAAdhnbMs0ggGS5LcMa</a>/<a href="SFZAAAAgB1lWKM" class="wikilink">SFZAAAAgB1lWKM</a>/<a href="JAsAAACwowxr9IdkAQAAAHaUYY3" class="wikilink">JAsAAACwowxr9IdkAQAAAHaUYY3</a>+kCwAAADAjjKs0R+<a href="SBYAdYcVRJbeicTrFHT0CANg2wxr9IVkA2BEgWQAATYY1" class="wikilink">SBYAdYcVRJbeicTrFHT0CANg2wxr9IVkA2BEgWQAATYY1</a>+kOyALAjQLIAAJoMa/<a href="SHZAFgRxCSxX3tvyiPZv9QnSCuHtivHG1" class="wikilink">SHZAFgRxCSxX3tvyiPZv9QnSCuHtivHG1</a>+wbwRfeG9oITI622XacwM582nzKvOehfHybO56dx05djyxtHmLKiPoj+aDehgEAAGzbBGf0gWAHYEIVmIdh2guKdNXhP4bpYuy+tmxPmn4s65gyC+4umX8/<a href="Ra3iEXfsmL8rJAcYdcyjxC9Kv1xBV09mvnGhfIyWd5Pj8qb" class="wikilink">Ra3iEXfsmL8rJAcYdcyjxC9Kv1xBV09mvnGhfIyWd5Pj8qb</a>/<a href="IDANw5wxr9IVkA2BGEZKkvs" class="wikilink">IDANw5wxr9IVkA2BGEZKkvs</a>+<a href="VJ6BIniLMsmmiX3Na3zFwwb6RcP3sZ" class="wikilink">VJ6BIniLMsmmiX3Na3zFwwb6RcP3sZ</a>+fvqbbQ8CV1xO13KPKJc/lzLke5HRh67EAfGKxdHXyfhIaGTKMNMCwB3zrBGf0gWAHaEm5S9JKMgrkJZpGj4GgeO9u+1ztBPQ+fz0C2Pda8ZeezCegnzTRyM9LQrgVL+hieh20r0rmJuAAA6wxr9IVkA2BH6S5ZqcsUgWcx3/<a href="PaXLNV8jCZZ9v3o8k4KDQDoZFijPyQLADtCY2FIRJn0WBiq75y7jPx985KNTbL0XRgiZiUEALhjhjX6Q7IAsCMIyUIdnyVl" class="wikilink">PaXLNV8jCZZ9v3o8k4KDQDoZFijPyQLADtCY2FIRJn0WBiq75y7jPx985KNTbL0XRgiZiUEALhjhjX6Q7IAsCMIyUIdnyVl</a>+<a href="C0ds8XK8NtasgiVQ53JacqL8peHYXJtlyy9w2" class="wikilink">C0ds8XK8NtasgiVQ53JacqL8peHYXJtlyy9w2</a>+<a href="JO4kWvCi0uGAAwB0zrNEfkgWAHeEmZS8J9d6" class="wikilink">JO4kWvCi0uGAAwB0zrNEfkgWAHeEmZS8J9d6</a>+9cpNzizJpS7o2OSsSJZC37Gs/<a href="NIqWYq" class="wikilink">NIqWYq</a>+m5yPfEdGsSi/<a href="ERnQFpYAANtkWKM" class="wikilink">ERnQFpYAANtkWKM</a>/<a href="JAsAAACwowxr9IdkAQAAAHaUYY3" class="wikilink">JAsAAACwowxr9IdkAQAAAHaUYY3</a>+kCwAAADAjjKs0R+<a href="SBQAAANhRhjX6Q7IAAAAAO8qwRn9IFgAAAGBHGdboD8kCAAAA7CjDGv0hWQAAAIAdZVijfy1ZAAAAALBrPKwKWYsh5RUAAAAAOwskCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGwP8PmkcXrLmiubUAAAAASUVORK5CYII" class="wikilink">SBQAAANhRhjX6Q7IAAAAAO8qwRn9IFgAAAGBHGdboD8kCAAAA7CjDGv0hWQAAAIAdZVijfy1ZAAAAALBrPKwKWYsh5RUAAAAAOwskCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGACQLAAAAAAYAJAsAAAAABgAkCwAAAAAGwP8PmkcXrLmiubUAAAAASUVORK5CYII</a>=" /\>

As both Well and Borehole are types of <a href="SF_SamplingCurve" class="wikilink">SF_SamplingCurve</a> they should use the same pattern for specifying the reference elevation. This could be readily achieved by adding a <a href="BoreCollar" class="wikilink">BoreCollar</a> /elevationType property as per Well:Elevation/elevationType (subject to resolution of 1. Inconsistency between Specification Section 9.5.1 and UML elevationType documentation).

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 27 Nov 2014

OK.. this is the bit that disapeared (don't remember why) from the spec.

|  |  |
|----|----|
| /req/gwml2-construction/construction_geometry_origin | \<span\>The origin of the relative position shall be the first vertex of the Borehole shape\</span\> |

**\<span style="background-color: transparent;"\>If the borehole is associated with a well, they should share the same shape\</span\>**

It says that the Borehole's shape property shall be a xlink:href to the Well's shape (semantically sharing the same geometry). By way of consequence, the collar of reference will be located at the same place as the well reference elevation (because they follow the same rules). We need this to insure package dependency, so a Construction package cannot import Well (we might want to use construction in Oil industry for instance). The rule when you need to link construction to another Linear feature is the share this feature. Element are alway linearly located from the first vertext of the shape, and the reference elevation is also the first vertex, so is the 2D location of the well. It's all about synchronising multiple geometried all derived from the first vertex of the shape. If this is ok with you, I'll bring it back in the spec - or I'll get my asbestos suit..

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 10 Dec 2014

### Well Test

#### Needs:

Here is what is modelled in the French Water Information System

|  |  |  |
|----|----|----|
| \<span\> **Attribute Name French** \</span\> | \<span\> **English translation** \</span\> | \<span\> **Mapping to O&M** \</span\> |
| \<span\>Date de l'essai\</span\> | \<span\>Well test date\</span\> | \<span\>phenomenonTime\</span\> |
| \<span\>Heure de l'essai\</span\> | \<span\>Well test time\</span\> | ^ |
| \<span\>Coefficient d'emmagasinement (s) du pompage d'essai\</span\> | \<span\>Well test storage capacity measured\</span\> | \<span\>observedProperty\</span\> |
| \<span\>Débit critique\</span\> | \<span\>critical yield\</span\> | \<span\>observedProperty\</span\> |
| \<span\>Débit maximum exploitable\</span\> | \<span\>maximum yield\</span\> | \<span\>observedProperty\</span\> |
| \<span\>Débit spécifique\</span\> | \<span\>specific yield\</span\> | \<span\>observedProperty\</span\> |
| \<span\>Durée de l'essai\</span\> | \<span\>well test duration\</span\> | \<span\>resultTime (or deducted from)\</span\> |
| \<span\>Méthode d'interprétation du pompage d'essai [\[1\]](file:///D:/Documents/grellets/Travail/OGC/HydroDWG/GW2IE/GWML2/WellTest/GWML2_WellTest_proposal_draft2.docx#_ftn1)\</span\> | \<span\>welltest interpretation method\</span\> | \<span\>Procedure\</span\> |
| \<span\>Rabattement\</span\> | \<span\>Drawdown\</span\> | \<span\>observedProperty\</span\> |
| \<span\>Rapport d'essai sur le pompage d'essai\</span\> | \<span\>well test report\</span\> | \<span\>URL to the report in KVP via parameter ?\</span\> |
| \<span\>Transmissivité (T) du pompage d'essai\</span\> | \<span\>well test measured transmivity\</span\> | \<span\>observedProperty\</span\> |

All : please add your domain need. \<hr align="left" size="1" width="33%"\>\</hr\>

[\[1\]](file:///D:/Documents/grellets/Travail/OGC/HydroDWG/GW2IE/GWML2/WellTest/GWML2_WellTest_proposal_draft2.docx#_ftnref1) <http://www.sandre.eaufrance.fr/?urn=urn:sandre:donnees:186::::::referentiel:3.1:html>

\<span style="color: \#339900; font-size: 17px; line-height: 1.1em; background-color: transparent;"\>Well test proposal\</span\>

First version for discussion available here : [GWML2_WellTest_proposal_draft2.docx](%ATTACHURL%/GWML2_WellTest_proposal_draft2.docx)

\<span style="color: \#339900; font-size: 17px; line-height: 1.1em; background-color: transparent;"\>Discussion on how to encode having a compound result without an <a href="OM_ComplexObservation" class="wikilink">OM_ComplexObservation</a>\</span\>

There is a bit more into this. The Pump Test fit quite nicely into the concept of Observation except that any observation is about gwFuildBodyUnit.. the **association** between <a href="GW_HydroUnit" class="wikilink">GW_HydroUnit</a> and <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>. Observation are normally about a feature (through featureOfInterest or indirectly through the sampling feature sampledFeature property). <a href="GW_UnitFluidProperty" class="wikilink">GW_UnitFluidProperty</a> is not a feature either (it has no identity). One pattern we have , proposed by Simon is to use the procedure to unambiguously refer to the pair of sampledFeature (<a href="GW_HydroUnit" class="wikilink">GW_HydroUnit</a> and <a href="GW_FluidBody" class="wikilink">GW_FluidBody</a>) here: <a href="SamplingFeature" class="wikilink">SamplingFeature</a> , at the bottom of the page.

As for complex results, SWE can deal with this the same way we did for logs and coverages.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 10 Dec 2014

-- Main.<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a> - 10 Dec 2014

### bholeDrillingMethod cardinality

GWML2 only allows for a cardinality of \[0..1\]. Australian NGIS database has \[0..\*\]. -- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 02 Feb 2015

#### Pattern required over properties of <a href="SamplingFeature" class="wikilink">SamplingFeature</a> /Observation

<a href="SamplingFeature" class="wikilink">SamplingFeature</a> has two generic properties that interferes with some of the properties we have with <a href="WaterWell" class="wikilink">WaterWell</a>

- sampledFeature links to the real world features sampled by the <a href="SamplingFeature" class="wikilink">SamplingFeature</a>, but we also have gwWellBody and gwWellUnit properties that overlaps this semantic (it just adds constrain - but does not prevent usage of sampledFeature)
- relatedObservation links to any observations, but we also have a series of properties that does the same thing (gwWellConstructedDepth, gWellStaticWaterDepth)

We should probably document why use custom properties over generic sampledFeature / relatedObservation (probably around more constrained semantic)

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 05 Feb 2015

#### <a href="ManagementArea" class="wikilink">ManagementArea</a> proposal

\<span style="background-color: transparent;"\>First version for discussion available here : \</span\>

- [GWML2_ManagmentArea_proposal_draft1.docx](%ATTACHURL%/GWML2_ManagmentArea_proposal_draft1.docx): Area Management discussion document

-- Main.<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a> - 16 Mar 2015

\*

- TOPICINFO{author="<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a>" comment="reprev" date="1426520049" format="1.1" reprev="72" version="72"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW2IE_GWML_v2" class="wikilink">GW2IE_GWML_v2</a>.0.initial.zip" attachment="<a href="GW2IE_GWML_v2" class="wikilink">GW2IE_GWML_v2</a>.0.initial.zip" attr="" comment="" date="1365531673" path="<a href="GW2IE_GWML_v2" class="wikilink">GW2IE_GWML_v2</a>.0.initial.zip" size="10848629" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML_v" class="wikilink">GWML_v</a>.2.0.initial_Diagrams.docx" attachment="<a href="GWML_v" class="wikilink">GWML_v</a>.2.0.initial_Diagrams.docx" attr="" comment="" date="1365531749" path="<a href="GWML_v" class="wikilink">GWML_v</a>.2.0.initial_Diagrams.docx" size="446181" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW_Spring" class="wikilink">GW_Spring</a>.jpg" attachment="<a href="GW_Spring" class="wikilink">GW_Spring</a>.jpg" attr="" comment="" date="1400120041" path="<a href="GW_Spring" class="wikilink">GW_Spring</a>.jpg" size="37626" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="LM_v1" class="wikilink">LM_v1</a>-3.xml" attachment="GWML2-<a href="LM_v1" class="wikilink">LM_v1</a>-3.xml" attr="" comment="15 May 2014 XMI of all GWML2 <a href="ApplicationSchema" class="wikilink">ApplicationSchema</a>" date="1400127047" path="GWML2-<a href="LM_v1" class="wikilink">LM_v1</a>-3.xml" size="1242314" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="springs.jpg" attachment="springs.jpg" attr="" comment="Types of Springs" date="1400152562" path="springs.jpg" size="389968" user="<a href="PeterDahlhaus" class="wikilink">PeterDahlhaus</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="LM_v1" class="wikilink">LM_v1</a>-3all.zip" attachment="GWML2-<a href="LM_v1" class="wikilink">LM_v1</a>-3all.zip" attr="" comment="Zipped XMI file from Enterprise Architect UML of Logical Model with all dependencies (<a href="HollowWorld" class="wikilink">HollowWorld</a>, <a href="GeoSciML" class="wikilink">GeoSciML</a> 3.2)" date="1400193529" path="GWML2-<a href="LM_v1" class="wikilink">LM_v1</a>-3all.zip" size="8948154" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML2_LM_1" class="wikilink">GWML2_LM_1</a>.0.pdf" attachment="<a href="GWML2_LM_1" class="wikilink">GWML2_LM_1</a>.0.pdf" attr="" comment="GWML2 LM 1.0 pdf -- logical model diagrams following Vienna" date="1401295438" path="<a href="GWML2_LM_1" class="wikilink">GWML2_LM_1</a>.0.pdf" size="74788" user="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="GWML2-<a href="LM_1" class="wikilink">LM_1</a>.2.xml" attachment="GWML2-<a href="LM_1" class="wikilink">LM_1</a>.2.xml" attr="" comment="GWML2 LM v1.2 eap -- logical model v1.2 XMI" date="1401891761" path="GWML2-<a href="LM_1" class="wikilink">LM_1</a>.2.xml" size="1265577" user="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML2_LM_1" class="wikilink">GWML2_LM_1</a>.2.pdf" attachment="<a href="GWML2_LM_1" class="wikilink">GWML2_LM_1</a>.2.pdf" attr="" comment="GWML2 LM v1.2 pdf -- logical model v1.2 pdf" date="1401891807" path="<a href="GWML2_LM_1" class="wikilink">GWML2_LM_1</a>.2.pdf" size="77023" user="<a href="BoyanBrodaric" class="wikilink">BoyanBrodaric</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML2_CM_" class="wikilink">GWML2_CM_</a>-\_Regulation.jpg" attachment="<a href="GWML2_CM_" class="wikilink">GWML2_CM_</a>-\_Regulation.jpg" attr="" comment="Proposed licence UML" date="1404693149" path="GWML2 CM - Regulation.jpg" size="5886" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML2LM" class="wikilink">GWML2LM</a>-management.jpg" attachment="<a href="GWML2LM" class="wikilink">GWML2LM</a>-management.jpg" attr="" comment="proposed merging of Regulation and Management Area" date="1404694941" path="<a href="GWML2LM" class="wikilink">GWML2LM</a>-management.jpg" size="22421" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML2PackageDependencies" class="wikilink">GWML2PackageDependencies</a>-July2014.jpg" attachment="<a href="GWML2PackageDependencies" class="wikilink">GWML2PackageDependencies</a>-July2014.jpg" attr="" comment="GWML2 Package Dependencies 8 July 2014" date="1404784476" path="<a href="GWML2PackageDependencies" class="wikilink">GWML2PackageDependencies</a>-July2014.jpg" size="127525" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.emf" attachment="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.emf" attr="" comment="" date="1404884110" path="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.emf" size="6972" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.jpg" attachment="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.jpg" attr="" comment="" date="1404884332" path="<a href="GW_WaterBudget" class="wikilink">GW_WaterBudget</a>.jpg" size="14491" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="Cardinalities.jpg" attachment="Cardinalities.jpg" attr="" comment="Conceptual showing example cardinalities" date="1416189428" path="Cardinalities.jpg" size="22417" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>.jpg" attachment="<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>.jpg" attr="" comment="<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a> feature" date="1416190358" path="<a href="GW_ManagementArea" class="wikilink">GW_ManagementArea</a>.jpg" size="19027" user="<a href="BruceSimons" class="wikilink">BruceSimons</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML2_WellTest_proposal_draft2" class="wikilink">GWML2_WellTest_proposal_draft2</a>.docx" attachment="<a href="GWML2_WellTest_proposal_draft2" class="wikilink">GWML2_WellTest_proposal_draft2</a>.docx" attr="" comment="Well Test discussion document" date="1418221483" path="<a href="GWML2_WellTest_proposal_draft2" class="wikilink">GWML2_WellTest_proposal_draft2</a>.docx" size="158332" user="<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="GWML2_ManagmentArea_proposal_draft1" class="wikilink">GWML2_ManagmentArea_proposal_draft1</a>.docx" attachment="<a href="GWML2_ManagmentArea_proposal_draft1" class="wikilink">GWML2_ManagmentArea_proposal_draft1</a>.docx" attr="" comment="Area Management discussion document" date="1426519939" path="<a href="GWML2_ManagmentArea_proposal_draft1" class="wikilink">GWML2_ManagmentArea_proposal_draft1</a>.docx" size="84410" user="<a href="SylvainGrellet" class="wikilink">SylvainGrellet</a>" version="1"}
