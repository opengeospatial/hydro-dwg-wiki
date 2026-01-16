# <span class="twiki-macro GREEN"></span> **Discussion Page for** **GWML 2 Consolidated Entity List** <span class="twiki-macro ENDCOLOR"></span>

## Main topics:

[Topic 1: Hydrogeological data processing chain](#Topic1)

[Topic 2: Surface water point of view versus groundwater point of view](#Topic2)

[Topic 3: Differences between surface watershed and subsurface watershed](#Topic3)

[Topic 4: International Glossary of Hydrogeology](#Topic4)

[Topic 5: Hard data and soft hypotheses in hydrogeology](#Topic5)

[Topic 6: Groundwater table as an ontological metaphor](#Topic6)

[Topic 7: Aqiufer, Aquitard and Aqiclude](#Topic7)

[Topic 8: Groundwater Yield](#Topic8)

[Topic 9: Sampling Feature in GWML](#Topic9)

[Topic 10: Relation between GWML and GeoSciML (more strictly, relation between HydrogeologicUnit and GeologicUnit)](#Topic10)

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 05 Feb 2013

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic1"\>\</a\>**Topic 1: Hydrogeological data processing chain**

\<img alt="" height="709" src="%ATTACHURL%/processing_chain.svg" width="1004" /\>

In contemporary hydrogeology, almost all research projects concerning state of groundwater systems are finalized by numerical groundwater flow modeling (last column in table above). It is only way to combine all collected data together in one consistent system. It allows comparing data of different types and from different sources, elimination or calibration of data which are inconsistent with other more reliable data. It is also only way to apply advanced methods of analysis and to achieve the best practical results.

Groundwater flow equation as a basis of numerical modeling is one of most important elements in paradigm of hydrogeology. It influences not only on modeler thinking but also on our notions of hydrogeological phenomena and their interrelationships. It should be applied in all other earlier stages of research projects, from field works to data maintenance in database (columns from first to last but one in table above). Fundamental conception is based on boundary value problem theory in mathematics. The simplest schema is on image below:

\<img alt="<a href="BoundaryProblem" class="wikilink">BoundaryProblem</a>" height="212" src="%ATTACHURL%/image2.png" width="319" /\>

Schematic relations between main components of fundamental conceptual model of hydrogeological system.\<br /\> Explanation:\<br /\> \_R'\_ – boundary of system – set of boundary points *r'(x',y',z')*\[belonging to\] *R'* – ground surface, confined bed surface, bottoms of surface waters, screens of wells (as an internal boundaries), etc,\<br /\> \_M'\_ – interior of system – set of interior points *m'(x",y",z"))*\[belonging to\] \_M'\_ – physical space of groundwater flow – a composition of aquifer and aquitards,\<br /\> \_P'\_ – exterior (surroundings) – set of points *p'(x,y,z) )*\[belonging to\] *P'* – surroundings of hydrogeological system,\<br /\> \_c1, c2, c3, c4\_ – impacts of surroundings on interior of hydrogeological system – discharging by surface waters, recharging by infiltration, water abstraction and injection by wells, water exchange between two systems, etc.

Such a point of view allows unambiguously determine:\<br /\>– what impacts on what,\<br /\>– character of impact,\<br /\> – what is a effect (result) and what is a reason (cause).

It all should be clearly expressed in data model for GWML.

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 06 Feb 2013

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic2"\>\</a\>**Topic 2: Surface water point of view versus groundwater point of view**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic3"\>\</a\>**Topic 3: Differences between surface watershed and subsurface watershed**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic4"\>\</a\>**Topic 4: International Glossary of Hydrogeology**

There is no International Glossary of Hydrogeology as it is in hydrology (\_International <a href="Glossary_" class="wikilink">Glossary_</a> of \_Hydrology\_ *).*As I know the most complete and exhaustive glossary of hydrogeology is “Hydrogeological Dictionary” (in Polish: Słownik Hydrogeologiczny): <http://www.mos.gov.pl/g2/kategoriaPliki/2009_04/d6e1baf4ccc946e5c1f7cac62c532e96.pdf>. It contains 1425 terms in five languages (Polish, English, French German and Russian) but definitions and explanations are in Polish only.

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic5"\>\</a\>**Topic 5: Hard data and soft hypotheses in hydrogeology**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic6"\>\</a\>**Topic 6: Groundwater table as an ontological metaphor**

Groundwater table (level), piezometric level, potentiometyric surface, hydraulic head, state of groundwater

------------------------------------------------------------------------

------------------------------------------------------------------------

##### **\<a name="Topic7"\>\</a\>Topic 7:** **Aqiufer, Aquitard and Aqiclude**

There is no possibility to solve problem of relation between three basic subtypes of Hydrogeological Unit on base of descriptive (textual) short definition. Quantitative comparison is presented below:

Maximal value of hydraulic conductivity (k) for natural rocks (aquifers) is about 200 m/d (about 2.3\*10\<sup\>-3\</sup\> m/s)

Typical value for aqifer (average sand) is about 10 m/d (about 10\<sup\>-4\</sup\> m/s)

Approximate threshold quantity of hydraulic conductivity (k) between aquifer and aquitard is 1 m/d (about 10\<sup\>-5\</sup\> m/s).

Typical value for aqitard (glacial till) is 10\<sup\>-3\</sup\> m/d (about 10\<sup\>-8\</sup\> m/s)

Approximate threshold quantity of hydraulic conductivity (k) between aquitard and aquiclude is 10\<sup\>-4\</sup\> m/d (about 10\<sup\>-9\</sup\> m/s).

Minimal value of hydraulic conductivity (k) for aquiclude is 0 (for example not fractured crystalline rocks).

Approximate rate between typical conductivity of aqifer and aqutard is about 1000. In case of parallel flow role of aqitard can be omitted. But in case of orthogonal flow (horizontal in aqifer and vertical in aquitard) both values can be comparable. See image bellow:

(IMAGE)\<img alt="" height="328" src="%ATTACHURL%/rysunek-2.png" width="815" /\>

(source: <http://www.psh.gov.pl/plik/id,6091.pdf> : J. Michalak et al., 2011, page 86)

T\<sup\>B\</sup\>\<sub\>P\</sub\> – horizontal transmissivity of cuboidal fragment of aquifer,

T\<sup\>B\</sup\>\<sub\>Z\</sub\> – vertical transmissivity of cuboidal fragment of aquitard, in case B (on the right) T\<sup\>B\</sup\>\<sub\>Z\</sub\> is equal to T\<sup\>B\</sup\>\<sub\>P\</sub\>.

In case A (on the left) T\<sup\>B\</sup\>\<sub\>P\</sub\> of aquifer is 10 000 times greater than T\<sup\>B\</sup\>\<sub\>Z\</sub\> of aquitard but this case is rather theoretical and case B is fully realistic.

------------------------------------------------------------------------

From the definitions in the consolidated list and the very interesting explanation provided by Janusz above, I start thinking that aquifer / aquitard are just roles assigned in a particular context.

\<img alt="Aquifer as a role" height="463" src="%ATTACHURL%/aquifer_role.png" width="500" /\>

(I know we are not supposed to start drawing boxes and model, but I can't represent it otherwise)

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 25 Jan 2013

------------------------------------------------------------------------

<a href="HydrologicRole" class="wikilink">HydrologicRole</a> is a very interesting conception, but in my understanding "role" is rather a property, not a feature. Feature can play more then one role also at the same time.

By the way: Association class cannot be implemented in XML directly. It must be substituted by kind proxy (broker) class, as it is often done in <a href="GeoSciML" class="wikilink">GeoSciML</a>.

I propose to return to „traditional” conception as it is on image below:

\<img alt="<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>" height="432" src="%ATTACHURL%/<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>.png" width="595" /\>

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 05 Feb 2013

------------------------------------------------------------------------

Hi Eric,

As I see term "Hydrostratigraphic Unit" (often used in USA and Canada) is a synonym of "Hydrogeological Unit" in Europe.

For me, element "stratigraphic" is confusing in case of hydrogeology. It suggests that it is something layered only. Definition of "stratigraphy" in Wikipedia:

"Stratigraphy is a branch of geology which studies rock layers and layering (stratification). It is primarily used in the study of sedimentary and layered volcanic rocks".

It is very hard use this term to fractured and karstic aquifers.

------------------------------

Definition of **Hydrostratigraphic Unit** in GWML v.1.0:

**Formation**(JM: I think it is synonym of Geologic Unit)**, or part of a formation, or a group**(JM: in UML it is collection) **of formation** in which there are similar hydrologic characteristics that allow for grouping into aquifers and associated confininf layers (Domenico & Schwartz, 1997)\<br /\>\<br /\>Hydrostratigraphic units were originally defined by Maxey (1964) as bodies of rock with considerable lateral extent that act as a reasonably distinct hydrologic system. It is clear from Maxey's definition that hydrostratigraphic units were to be hydraulically continuous, mappable, and scale-independent entities. Mappability, in this case, means the subsurface geology can be subdivided according to permeability (Seaber, 1988). Thus, a single hydrostratigraphic unit may include a formation, part of a formation, or a group of formations.\<br /\>\<br /\>-Maxey, G. B., 1964, Hydrostratigraphic units: Journal of Hydrology, v. 2, p. 124-129.

------------------------------------------------------------------------

Agree. For clarification. <a href="GeologicUnit" class="wikilink">GeologicUnit</a> (in <a href="GeoSciML" class="wikilink">GeoSciML</a>) is just a package of rock delimited by some properties, so it's not only lithostratigraphic unit, but any kind of unit. The same package of rock can be divided in different ways and even cut across different classifications schemes. So, as proposed by Maxey (and also by Lohman,1972) it can be a group or part of (lithostratigraphic) formations.

\-**Lohman, S. W., and others**, 1972, Definitions of selected ground-water terms--Revisions and conceptual refinements: U.S. Geological Survey, Water-Supply Paper 1988, 9 p.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 04 Feb 2013

------------------------------

More about "Hydrostratigraphic Unit":

A hydrostratigraphic unit can be defined as a **formation, part of a formation, or groups of formations** in which there are similar hydraulic characteristics allowing for grouping into aquifers or confining layers (aquitards). A simple example is an extensive gravel unit deposited during a single fluvial event that could be considered both a geologic unit and also, if saturated, a hydrostratigraphic unit.\<br /\>\<br /\>Many times the boundaries defining a hydrostratigraphic unit overlay those defining a single geologic unit. Several geologic units with similar hydraulic properties also may represent a single hydrostratigraphic unit if they are in direct contact with one another, despite lithologic or age differences. For example, although a Pliocene sand unit in contact with a Pleistocene gravel unit differ lithologically, they could be considered a single hydrostratigraphic unit (an aquifer) because ground water can easily flow between the two. Similarly, a blue clay adjacent to a brown or yellow clay are considered a single hydrostratigraphic unit (an aquitard) even though the colors may indicate different depositional environments, ages, or events. (source: <http://www.mcwra.co.monterey.ca.us/Agency_data/Hydrogeologic%20Reports/Salinas%20Basin%20Ft%20Ord%20Marina/STUDY_AREA_HYDROSTRATIGRAPH.HTM>)

------------------------------

I agree with above definition and it leads to conclusion: "Hydrogeological Unit (or Hydrostratigraphic Unit) is not a subtype of Geologic Unit (inheritance relation)". Correct relation between both feature types is bidirectional association with multiplicity many to many.

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 04 Feb 2013

------------------------------------------------------------------------

\> As I see term "Hydrostratigraphic Unit" (often used in USA and Canada) is a synonym of "Hydrogeological Unit" in Europe.

You are right, my diagram is incorrect. I should have used **<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>**. In GWML , <a href="HydrostratigraphicUnit" class="wikilink">HydrostratigraphicUnit</a> is a subtype of <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> (which is a subtype of <a href="GeologicUnit" class="wikilink">GeologicUnit</a>)

\> "Hydrogeological Unit (or Hydrostratigraphic Unit) is not a subtype of Geologic Unit (inheritance relation)"

I think this is the core of the discussion to have here. We don't understand that inheritance relation the same way. My interpretation is : Inheritance relation does not mean that <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> is bounded by <a href="GeologicUnit" class="wikilink">GeologicUnit</a>. It just says it's also a package of rock that is bounded differently.

As you point out: " *A simple example is an extensive gravel unit deposited during a single fluvial event that could be considered both a geologic unit and also, if saturated, a hydrostratigraphic unit*." and this is exactly what the inheritance relationship means: the same package of rock (with the same geologic properties), is bounded using saturation instead of lithologic contact. But it remains a package of rock (thus, inheritance).

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 05 Feb 2013

------------------------------------------------------------------------

More examples where Aquifer as a Hydrogeological Unit is not a Geologic Unit:

\<img alt="Fractured Aquifer" height="350" src="%ATTACHURL%/fractured_aquifer.png" width="401" /\>\<img alt="Fractured Thermal Aquifer" height="309" src="%ATTACHURL%/fractured_thermal_aquifer.png" width="431" /\>\<img alt="Karstic Aquifer" height="274" src="%ATTACHURL%/karstic_aquifer.png" width="634" /\>

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 05 Feb 2013

------------------------------------------------------------------------

Yes - I understand you point. An Hydrogeologic unit can cut across lithostratigraphic units. The UML does not say that Hydrogeologic unit must be a lithostratigraphic unit. The UML says that Hydrogeologic unit is another way to organise a package of rock, so it's another kind of geologic unit, See picture :

\<img alt="geologic_unit_section.png" height="643" src="%ATTACHURLPATH%/geologic_unit_section.png" width="960" /\>

A (Chrono), B (Litho) , and C (Hydrogeologic) are 3 different ways to organise the same package of rock. This is what the UML diagram says. They all are packages of rock

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 06 Feb 2013

------------------------------------------------------------------------

I see we should return to our discussion (stopped few months ago) about relation between GWML and <a href="GeoSciML" class="wikilink">GeoSciML</a>. More strictly, relation between <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> and <a href="GeologicUnit" class="wikilink">GeologicUnit</a>.

So I moved the discusion to new separate topic nr 10 on the end of this page.

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 06 Feb 2013

------------------------------------------------------------------------

##### \<a name="Topic8"\>\</a\>**Topic 8: Groundwater Yield**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### **\<a name="Topic9"\>\</a\>Topic 9:Sampling Feature in GWML\<br /\>**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### **\<a name="Topic10"\>\</a\>Topic 10:** **Relation between GWML and <a href="GeoSciML" class="wikilink">GeoSciML</a> (more strictly, relation between <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> and <a href="GeologicUnit" class="wikilink">GeologicUnit</a>)**

In <a href="GeoSciML" class="wikilink">GeoSciML</a> <a href="GeologicUnit" class="wikilink">GeologicUnit</a> is a parent class for all underground units: **<a href="GeologicUnit" class="wikilink">GeologicUnit</a>**, <a href="AllostratigraphicUnit" class="wikilink">AllostratigraphicUnit</a>, <a href="AlterationUnit" class="wikilink">AlterationUnit</a>, <a href="ArtificialGround" class="wikilink">ArtificialGround</a>, <a href="BiostratigraphicUnit" class="wikilink">BiostratigraphicUnit</a>, <a href="ChronostratigraphicUnit" class="wikilink">ChronostratigraphicUnit</a>, <a href="DeformationUnit" class="wikilink">DeformationUnit</a>, <a href="ExcavationUnit" class="wikilink">ExcavationUnit</a>, **<a href="GeophysicalUnit" class="wikilink">GeophysicalUnit</a>**, <a href="LithodemicUnit" class="wikilink">LithodemicUnit</a>, <a href="LithogeneticUnit" class="wikilink">LithogeneticUnit</a>, <a href="LithologicUnit" class="wikilink">LithologicUnit</a>, <a href="LithostratigraphicUnit" class="wikilink">LithostratigraphicUnit</a>, <a href="LithotectonicUnit" class="wikilink">LithotectonicUnit</a>, <a href="MagnetostratigraphicUnit" class="wikilink">MagnetostratigraphicUnit</a>, <a href="MassMovementUnit" class="wikilink">MassMovementUnit</a>, Pedoderm, <a href="PedostratigraphicUnit" class="wikilink">PedostratigraphicUnit</a>, <a href="PolarityChronostratigraphicUnit" class="wikilink">PolarityChronostratigraphicUnit</a>, also **in GWML: <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>**.\<br /\>\<br /\>In consequence every object of type <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> (as an instance of class) is also of (sub-) type <a href="GeologicUnit" class="wikilink">GeologicUnit</a>. In this case object of type <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> we can see as an object of type <a href="GeologicUnit" class="wikilink">GeologicUnit</a> with attribute “geologicUnitType = <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> ” and with additional hydrogeological properties.\<br /\>Class <a href="GeologicUnit" class="wikilink">GeologicUnit</a> is not abstract, it can be instantiated. So direct object of this type can exist (with attribute “geologicUnitType = <a href="GeologicUnit" class="wikilink">GeologicUnit</a> ”. In this case boundaries of object of type <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> can be different then of type <a href="GeologicUnit" class="wikilink">GeologicUnit</a>. We have two types of object: with attribute “geologicUnitType = <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> ” and with attribute “geologicUnitType = <a href="GeologicUnit" class="wikilink">GeologicUnit</a> ".\<br /\>\<br /\>I think it is inconsistency concerning the <a href="GeologicUnit" class="wikilink">GeologicUnit</a> concept (and class) in <a href="GeoSciML" class="wikilink">GeoSciML</a> and we must deal with it in GWML. I see the same problem with <a href="GeophysicalUnit" class="wikilink">GeophysicalUnit</a> but in INSPIRE model for subtheme Geophysics is independent from subtheme Geology and in consequence from <a href="GeoSciML" class="wikilink">GeoSciML</a>.\<br /\>\<br /\>This inheritance has also inconveniences in practical application: overloading by properties not needed for hydrogeology (quotation from <a href="EricBoisvert" class="wikilink">EricBoisvert</a> e-mail):

```
<?xml version="1.0" encoding="UTF-8"?>
 <gsmlgu:GeologicUnit gml:id="xtest" xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:gml="http://www.opengis.net/gml/3.2" 
 xmlns:gsmlem="http://xmlns.geosciml.org/EarthMaterial/3.0" 
 xmlns:gsml="http://xmlns.geosciml.org/GeoSciML-Core/3.0" 
 xmlns:gsmlgu="http://xmlns.geosciml.org/GeologicUnit/3.0" 
 xmlns:gsmlpp="http://xmlns.geosciml.org/PhysicalProperties/3.0" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
 xsi:schemaLocation="http://xmlns.geosciml.org/GeologicUnit/3.0 
 http://schemas.geosciml.org/geologicunit/3.0/geologicUnit.xsd">
         <gsml:observationMethod xsi:nil="true" nilReason="missing"/>
         <gsml:purpose>instance</gsml:purpose>
         <gsml:relatedFeature xsi:nil="true" nilReason="missing"/>
         <gsml:classifier xsi:nil="true" nilReason="missing"/>
         <gsml:metadata xsi:nil="true"/>
         <gsmlgu:geologicUnitType xlink:href="http://./HydrostratigraphicUnit"/>
         <gsmlgu:bodyMorphology xsi:nil="true" nilReason="missing"/>
         <gsmlgu:unitComposition xsi:nil="true" nilReason="missing"/>
         <gsmlgu:exposureColor xsi:nil="true" nilReason="missing"/>
         <gsmlgu:outcropCharacter xsi:nil="true" nilReason="missing"/>
         <gsmlgu:rank xsi:nil="true" nilReason="missing"/>
         <gsmlgu:unitThickness xsi:nil="true" nilReason="missing"/>
         <gsmlgu:composition xsi:nil="true" nilReason="missing"/>
         <gsmlgu:metamorphicCharacter xsi:nil="true" nilReason="missing"/>
         <gsmlgu:part xsi:nil="true" nilReason="missing"/>
         <gsmlgu:physicalProperty xsi:nil="true" nilReason="missing"/>
         <gsmlgu:alterationCharacter xsi:nil="true" nilReason="missing"/>
         <gsmlgu:bedding xsi:nil="true" nilReason="missing"/>
         <gsmlgu:geochemistry xsi:nil="true" nilReason="missing"/>
 </gsmlgu:GeologicUnit>
```

To summarize depicted above, I think relation between both classes in form of association is better than in form of inheritance.

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 06 Feb 2013

------------------------------------------------------------------------

\> In this case boundaries of object of type <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> can be different then of type <a href="GeologicUnit" class="wikilink">GeologicUnit</a>. We have two types of object: with attribute “geologicUnitType = <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> ” and with attribute “geologicUnitType = <a href="GeologicUnit" class="wikilink">GeologicUnit</a> ".

They are two different units (subdividing the same stack of rock). To be honest, I don't understand why "<a href="GeologicUnit" class="wikilink">GeologicUnit</a>" is in the enum. It probably means "unclassified" or "generic". What I would expect to see is a <a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> geologicUnitType="<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>" (at this point it seems redundant because we only have 1 subtype, but we could have more) and a <a href="GeologicUnit" class="wikilink">GeologicUnit</a> geologicUnitType="<a href="LithostratigraphicUnit" class="wikilink">LithostratigraphicUnit</a>". They are two distinct units (or to be more precise, two distinct way to subdivide the same stack of rock).

As for unwanted property - you are right. At the last <a href="GeoSciML" class="wikilink">GeoSciML</a> meeting it has been recognised as being a problem and, we started working on a way to better package <a href="GeoSciML" class="wikilink">GeoSciML</a> to avoid imposing those properties if they are not wanted. <a href="GeoSciML" class="wikilink">GeoSciML</a> 4.0 (the one that will be proposed to OGC) decouples the properties from the main class, so a barebone <a href="GeologicUnit" class="wikilink">GeologicUnit</a> looks like

```
<?xml version="1.0" encoding="UTF-8"?>
 <gsmlgu:GeologicUnit gml:id="xtest" xmlns:xlink="http://www.w3.org/1999/xlink" 
 xmlns:gml="http://www.opengis.net/gml/3.2" 
 xmlns:gsmlem="http://xmlns.geosciml.org/EarthMaterial/3.0" 
 xmlns:gsml="http://xmlns.geosciml.org/GeoSciML-Core/3.0" 
 xmlns:gsmlgu="http://xmlns.geosciml.org/GeologicUnit/3.0" 
 xmlns:gsmlpp="http://xmlns.geosciml.org/PhysicalProperties/3.0" 
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
 xsi:schemaLocation="http://xmlns.geosciml.org/GeologicUnit/3.0 
 http://schemas.geosciml.org/geologicunit/3.0/geologicUnit.xsd">
         <gsml:observationMethod xsi:nil="true" nilReason="missing"/>
         <gsml:purpose>instance</gsml:purpose>
         <gsml:relatedFeature xsi:nil="true" nilReason="missing"/>
         <gsml:classifier xsi:nil="true" nilReason="missing"/>
         <gsml:metadata xsi:nil="true"/>
         <gsmlgu:geologicUnitType xlink:href="http://./HydrostratigraphicUnit"/>
         <gsmlgu:physicalProperties>
                  <!-- custom property block -->
         </gsmlgu:physicalProperties>
 </gsmlgu:GeologicUnit>
```

Custom property blocks can be substituted to accomodate specific usage or requirements. We haven't tested it and we are still looking into the best way to address this issue - but we are addressing it.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 06 Feb 2013

------------------------------------------------------------------------

<a href="GeoSciML4" class="wikilink">GeoSciML4</a> - it is very good news. Now, <a href="GeologicUnit" class="wikilink">GeologicUnit</a> looks very similar to \_GeologicFeature\_ class. I see it is going in good direction. (I hope we will have “<a href="EarthUnit" class="wikilink">EarthUnit</a>” or “<a href="GeoscientificUnit" class="wikilink">GeoscientificUnit</a>” in this palace in <a href="GeoSciML5" class="wikilink">GeoSciML5</a>.)

\_\>To be honest, I don't understand why "<a href="GeologicUnit" class="wikilink">GeologicUnit</a>" is in the enum.\_

It is consistent with fact that <a href="GeologicUnit" class="wikilink">GeologicUnit</a> is not abstract so can be instantiated. I think it was designed as a pure geologic unit on the beginning and was extended later as a parent class for many other types of unit in scope of geosciences. I hope it will be amended in new version.

In that case, should we direct our works on GWML2 to harmonization with <a href="GeoSciML4" class="wikilink">GeoSciML4</a>?

\_\><a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a> geologicUnitType="<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>" (...) and a <a href="GeologicUnit" class="wikilink">GeologicUnit</a> geologicUnitType="<a href="LithostratigraphicUnit" class="wikilink">LithostratigraphicUnit</a>". They are two distinct units (or to be more precise, two distinct way to subdivide the same stack of rock).\_

I agree with it but we still have <a href="GeologicUnit" class="wikilink">GeologicUnit</a> geologicUnitType="<a href="GeologicUnit" class="wikilink">GeologicUnit</a>".

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 08 Feb 2013

------------------------------------------------------------------------

\_\>It is consistent with fact that <a href="GeologicUnit" class="wikilink">GeologicUnit</a> is not abstract so can be instantiated. I think it was designed as a pure geologic unit on the beginning and was extended later as a parent class for many other types of unit in scope of geosciences. I hope it will be amended in new version.\_

<a href="GeologicUniType" class="wikilink">GeologicUniType</a> is just a way to "softype" since all geologic unit types (lithostrat, lithodemic, etc.) are just packages of rock whatever the classification system (for instance, a biostratigraphic unit can have a lithology, even if it's not the defining character of a biostratigraphic unit). So it did not make sense to create the subtypes if they did not have any specific properties (some might argue otherwise - Boyan ?). It also allows management of "informal" units. Maybe at the end, <a href="HydrologicUnit" class="wikilink">HydrologicUnit</a> would not even need a hard subtype and just an addition to the list of geologicUnitType.

\_\>I agree with it but we still have <a href="GeologicUnit" class="wikilink">GeologicUnit</a> geologicUnitType="<a href="GeologicUnit" class="wikilink">GeologicUnit</a>".\_

Yeah - it should not be there. it should be "<a href="InformalGeologicUnit" class="wikilink">InformalGeologicUnit</a>" or something like this.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 08 Feb 2013

------------------------------------------------------------------------

*\>It also allows management of "informal" units.\<br /\>*What exactly means „<a href="InformalGeologicUnit" class="wikilink">InformalGeologicUnit</a>”? It is not clear for me.\<br /\> Should <a href="GeologicUnit" class="wikilink">GeologicUnit</a> be still non-abstract (instantiated)?\<br /\> What version of <a href="GeoSciML" class="wikilink">GeoSciML</a> will be base for GWML3?

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 11 Feb 2013

An informal unit is an arbitrary package of rock where the delimitation is not constrained by a formal classification system. "High gold grade zone" could be one, it's just defined by the concentration of gold.

<a href="GeologicUnit" class="wikilink">GeologicUnit</a> is still concrete.

\>What version of <a href="GeoSciML" class="wikilink">GeoSciML</a> will be base for GWML3?

<a href="GeoSciML" class="wikilink">GeoSciML</a> 4, since <a href="GeoSciML" class="wikilink">GeoSciML</a> 4 will be an OGC standard and we want to make a OGC standard, it make sense to use v4.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 11 Feb 2013

------------------------------------------------------------------------

More questions:

What means in this case “formal classification system”? Can we define it in GWML2 specification? Taxonomy of Hydrogeological Units (aquifer, aquitard, aquiclude) is based on value of hydraulic conductivity (k) (see: Topic 7). It is similar to concentration of gold. Somebody else can assume different threshold values. Is it still formal classification system?

Can we know more about <a href="GeoSciML4" class="wikilink">GeoSciML4</a>? For example, time table of development or initial assumptions.

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 12 Feb 2013

\>. Is it still formal classification system?

No, it's **informal**, but still a classification system.

About <a href="GeoSciML" class="wikilink">GeoSciML</a> 4: see <http://www.ogcnetwork.net/node/212>

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 13 Feb 2013

------------------------------------------------------------------------

Maybe I am wrong, but in consequence I do not see truly formal classification systems applicable to natural features in hydrogeology. All of them are informal.

-- Main.<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a> - 14 Feb 2013

- TOPICINFO{author="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" comment="save topic" date="1393436504" format="1.1" reprev="19" version="21"}

<!-- -->

- TOPICPARENT{name="<a href="Gwml2ConsolFeatureList" class="wikilink">Gwml2ConsolFeatureList</a>"}

<!-- -->

- FILEATTACHMENT{name="rysunek-2.png" attachment="rysunek-2.png" attr="" comment="" date="1358798289" path="rysunek-2.png" size="148004" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="aquifer_role.png" attachment="aquifer_role.png" attr="" comment="Aquifer as role in an aquifer system" date="1359139549" path="aquifer_role.png" size="16544" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="processing_chain.svg" attachment="processing_chain.svg" attr="" comment="processing_chain.svg" date="1360000708" path="processing_chain.svg" size="210623" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="processing_chain.pdf" attachment="processing_chain.pdf" attr="" comment="processing_chain.pdf" date="1360000813" path="processing_chain.pdf" size="424307" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="fractured_aquifer.png" attachment="fractured_aquifer.png" attr="" comment="" date="1360075951" path="fractured_aquifer.png" size="128129" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="karstic_aquifer.png" attachment="karstic_aquifer.png" attr="" comment="" date="1360076059" path="karstic_aquifer.png" size="187824" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="fractured_thermal_aquifer.png" attachment="fractured_thermal_aquifer.png" attr="" comment="" date="1360078361" path="fractured_thermal_aquifer.png" size="137834" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>.png" attachment="<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>.png" attr="" comment="" date="1360080847" path="<a href="HydrogeologicUnit" class="wikilink">HydrogeologicUnit</a>.png" size="13993" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="geologic_unit_section.png" attachment="geologic_unit_section.png" attr="" comment="Geologic units" date="1360108923" path="geologic_unit_section.png" size="525322" user="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}

<!-- -->

- FILEATTACHMENT{name="image2.png" attachment="image2.png" attr="" comment="<a href="BoundaryProblem" class="wikilink">BoundaryProblem</a>" date="1360174001" path="image2.png" size="5078" user="<a href="JanuszMichalak" class="wikilink">JanuszMichalak</a>" version="1"}
