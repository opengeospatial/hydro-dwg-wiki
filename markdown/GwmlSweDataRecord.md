# GWML SWE Data Record Encoding

<span class="twiki-macro TOC"></span>

The pattern proposed to encode logs in GWML is to use swe <a href="DataRecord" class="wikilink">DataRecord</a>. A data record is a flexible way to encode a record, similar to a database row, made of a collection of fields. The <a href="DataRecord" class="wikilink">DataRecord</a> can point to a swe record definition (which is very similar to an actualy record containing data, but without any value). The GWML 2.0 pattern to encode lithologic or geologic unit log is to require that the data provider has at least one of the field with a specific content type (a Category) and flag this field with a know URI (for consumer to spot it). The whole Record definition is up to the data provider, given that the required field are present (if they want to be conformant).

## Lithology (<a href="EarthMaterial" class="wikilink">EarthMaterial</a>) example:

```
<gww:value>
  <swe:DataRecord definition="http://www.opengis.net/def/gwml/2.0/datarecord/earthMaterial" id="le.1">
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
</gww:value>
```

This Record contains two field (@name=lithology and @name=description). Only the first one is mandatory for lithologic log. The other is perhaps a requirement defined for another community.

## Australian National Groundwater Information System database lithology:

```
<swe:DataRecord definition="http://www.gwml.org/def/gwml/2.0/datarecord/earthMaterial">
    <swe:field name="lithology">
        <swe:Category definition="http://www.gwml.org/def/gwml/2.0/observedProperty/earthMaterial">
            <swe:identifier>http://resource.geosciml.org/classifier/cgi/lithology/sand</swe:identifier>
            <swe:label>Sand</swe:label>
            <swe:codeSpace xlink:href="http://resource.geosciml.org/classifierscheme/cgi/201211/simplelithology"/>
            <swe:value>http://resource.geosciml.org/classifier/cgi/lithology/sand</swe:value>
        </swe:Category>
    </swe:field>
    <swe:field name="minor-lithology">
        <swe:Category definition="http://www.gwml.org/def/gwml/2.0/observedProperty/earthMaterial">
            <swe:label>Clay</swe:label>
            <swe:value>Clay</swe:value>
        </swe:Category>
    </swe:field>
    <swe:field name="description">
        <swe:Text definition="http://www.gwml.org/def/gwml/2.0/datarecord/FreeText">
            <swe:value>Sandy clay</swe:value>
        </swe:Text>
    </swe:field>
</swe:DataRecord>
```

## Federation University lithology

```
<swe:DataRecord definition="http://www.gwml.org/def/gwml/2.0/observedProperty/earthMaterial">
  <swe:field name="lithology">
        <swe:Text definition="http://www.gwml.org/def/gwml/2.0/datarecord/FreeText">
             <swe:value>weathered grey brown basalt</swe:value>
        </swe:Text>
   </swe:field>
</swe:DataRecord>
```

## Discussion Points:

1.  Is use of \<swe:identifier\> as the URI for the concept correct (\<swe:identifier\><http://resource.geosciml.org/classifier/cgi/lithology/sand%3C/swe:identifier%3E>;) or should it be in the \<value\> (\<swe:value\><http://resource.geosciml.org/classifier/cgi/lithology/sand%3C/swe:value%3E>;)?
2.  Should the human readable term be in \<value\> (\<swe:value\>Clay\</swe:value\>) or \<label\> (\<swe:label\>Clay\</swe:label)?

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 28 Nov 2014

I'm having trouble configuring a WFS to deliver the <a href="GeologyLog" class="wikilink">GeologyLog</a> where there are two different values for the same property, as per the NGIS example where there are different values for swe:field/swe:Category. Although this is schema valid does it break some other rule? Or is there some way of using the swe:field/name attribute to distinguish these during the encoding?

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 21 Feb 2015

So, you have 0..\* occurrence for that field ?. I don't think there are any rule against having the same field repeated, but this break the expectation (is there?) that a <a href="DataRecord" class="wikilink">DataRecord</a> looks like a table (field = column), because normally, the number of columns are usually fixed for the whole "table". But, in this case, we deliver a single row. I was thinking that maybe they are not the same thing, because one would be secondary lithology, or alternate lithology, or something like this, but this would mean create a special definition of secondary lithology. So we have two options (that are not documented in the spec right now)

- "lithology" field is expected to be 1..1, all other "lithology" fields have different semantic by design. client expect only one lithology.
- "lithology" field can be 1..\* (so, they all have the same "lithology" name), and have the same semantic (they are "alternate" interpretations) and the client must be prepared to have more than one lithology without any guidance of what are the relations amongst them. So, if the client tries to draw a log, it must do "something" with the many occurences.

I prefer first option, because it let the data provider the chance to tell the client "use this one if you don't know".

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 22 Feb 2015

## Alternative log types

### Stratigraphy Log

The same approach can be used for stratigraphy logs.

```
<swe:DataRecord definition="http://www.gwml2.org/def/gwml/2.0/data-record/classifier">
    <swe:field name="stratigraphy">
        <swe:Category definition="http://www.gwml2.org/def/gwml/2.0/observedProperty/classifier">
             <swe:identifier>http://environment.data.gov.au/groundwater/feature/hydrogeologicunit/hgu.1079</swe:identifier>
             <swe:label>Lockyer Creek Alluvium</swe:label>
             <swe:description>Lockyer Creek Alluvium</swe:description>
              <swe:codeSpace xlink:href="http://www.bom.gov.au/water/groundwater/ngis/hydrogeologicunit"/>
              <swe:value>Tca</swe:value>
         </swe:Category>
     </swe:field>
</swe:DataRecord>
```

#### Discussion points:

Should we use \<swe:label\>, \<swe:description\> or \<swe:value\> for the name of the stratigraphy?

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 28 Nov 2014

### Chronostratigraphy Log

The same approach for age data:

```
<swe:DataRecord definition="http://www.gwml.org/def/gwml/2.0/observedProperty/geologicAge">
     <swe:field name="geologicAge">
          <swe:Category definition="http://www.gwml.org/def/gwml/2.0/observedProperty/chronostratigraphy">
                <swe:identifier>xlink:href="http://resource.geosciml.org/classifier/ics/ischart/Quaternary"</swe:identifier>
                <swe:label>Quaternary</swe:label>
                <swe:codeSpace xlink:href="http://resource.geosciml.org/classifier/ics/ischart/Quaternary"/>
                <swe:value>Quaternary</swe:value>
          </swe:Category>
     </swe:field>
</swe:DataRecord>
```

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 28 Nov 2014

### Geophysical Log

The same approach can be used to deliver geophysical data.

```
<swe:DataRecord definition="http://www.opengis.net/def/gwml/2.0/datarecord/geophysic" id="le.1">
<!-- this field is mandatory, the definition is the normative flag to identify this category has having the earthMaterial-->
    <swe:field name="resistance">
       <swe:Quantity definition="http://www.opengis.net/def/gwml/2.0/currentResistance">
          <swe:uom code="ohms"/>
          <swe:value>200</swe:value>
       </swe:Quantity>
    </swe:field>
<!-- error band for the measurement -->
   <swe:field name="error">
       <swe:QuantityRange>
           <swe:uom code="ohms" ></swe:uom>
           <swe:value>0.4 0.3</swe:value>
       </swe:QuantityRange>
    </swe:field>
</swe:DataRecord>
```

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 18 Sep 2014

## Example Lithology Log, with major lithology, minor lithology and lithology description fields, and stratigraphy log for a borehole

This example provides a lithology log for a single depth (28.34m to 31.69m). The log contains a major lithology, a minor lithology and a description for the interval as three gwml20w:element. These three would be repeated for each depth interval containing different lithology descriptions down the well.

The example includes a stratigraphy for one depth interval (204.2 to 215.0).

Whether major lithology, minor lithology, lithology description or stratigraphy, swe:identifier, swe:label and swe:value have been provided. This is a convenience for the NGIS configuration, and is not necessary for GWML2 schema conformance.

Do we wish to be prescriptive with the swe:<a href="DataRecord" class="wikilink">DataRecord</a> content?

```
<!-- Dummy GeologyLogCoverage with all NGIS examples -->
<gwml20w:GW_Well gml:id="borehole.id1">
    <!--... snip ... -->
<!-- Other GW_Well properties deleted -->
    <gwml20w:gwWellGeology>
        <gwml20w:GW_GeologyLog gml:id="borehole.id1.1.lithology">
            <gml:identifier codeSpace="http://www.ietf.org/rfc/rfc2616">http://environment.data.gov.au/groundwater/feature/lithology-log/borehole.nsw.10015350.1</gml:identifier>
            <om:phenomenonTime xlink:href="http://www.opengis.net/def/nil/OGC/0/unknown" xlink:title="unknown"/>
            <om:resultTime xlink:href="http://www.opengis.net/def/nil/OGC/0/unknown" xlink:title="unknown"/>
            <om:procedure xlink:href="http://environment.data.gov.au/groundwater/def/procedure/drillers_log" xlink:title="drillers_log"/>
            <om:observedProperty xlink:href="http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial" xlink:title="lithology"/>
            <om:featureOfInterest xlink:href="http://environment.data.gov.au/groundwater/feature/borehole/nsw.10015350"/>
            <om:result>
                <gwml20w:GW_GeologyLogCoverage gml:id="borehole.id1.1.lithology.coverage">
                    <gwml20w:element>
                        <gwml20w:LogValue>
                            <gwml20w:fromDepth>
                                <swe:Quantity>
                                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                                    <swe:value>28.34</swe:value>
                                </swe:Quantity>
                            </gwml20w:fromDepth>
                            <gwml20w:toDepth>
                                <swe:Quantity>
                                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                                    <swe:value>31.69</swe:value>
                                </swe:Quantity>
                            </gwml20w:toDepth>
                            <gwml20w:value>
                                <swe:DataRecord definition="http://www.opengis.net/def/gwml/2.0/datarecord/minor-lithology">
                                    <swe:field name="minor-lithology">
                                        <swe:Category definition="http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial">
                                            <swe:identifier>http://resource.geosciml.org/classifier/cgi/lithology/sand</swe:identifier>
                                            <swe:label>Sand</swe:label>
                                            <swe:value>Sand</swe:value>
                                        </swe:Category>
                                    </swe:field>
                                </swe:DataRecord>
                            </gwml20w:value>
                        </gwml20w:LogValue>
                    </gwml20w:element>
                    <gwml20w:element>
                        <gwml20w:LogValue>
                            <gwml20w:fromDepth>
                                <swe:Quantity>
                                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                                    <swe:value>28.34</swe:value>
                                </swe:Quantity>
                            </gwml20w:fromDepth>
                            <gwml20w:toDepth>
                                <swe:Quantity>
                                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                                    <swe:value>31.69</swe:value>
                                </swe:Quantity>
                            </gwml20w:toDepth>
                            <gwml20w:value>
                                <swe:DataRecord definition="http://www.opengis.net/def/gwml/2.0/datarecord/major-lithology">
                                    <swe:field name="major-lithology">
                                        <swe:Category definition="http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial">
                                            <swe:identifier>http://resource.geosciml.org/classifier/cgi/lithology/clay</swe:identifier>
                                            <swe:label>Clay</swe:label>
                                            <swe:value>Clay</swe:value>
                                        </swe:Category>
                                    </swe:field>
                                </swe:DataRecord>
                            </gwml20w:value>
                        </gwml20w:LogValue>
                    </gwml20w:element>
                    <gwml20w:element>
                        <gwml20w:LogValue>
                            <gwml20w:fromDepth>
                                <swe:Quantity>
                                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                                    <swe:value>28.34</swe:value>
                                </swe:Quantity>
                            </gwml20w:fromDepth>
                            <gwml20w:toDepth>
                                <swe:Quantity>
                                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                                    <swe:value>31.69</swe:value>
                                </swe:Quantity>
                            </gwml20w:toDepth>
                            <gwml20w:value>
                                <swe:DataRecord definition="http://www.opengis.net/def/gwml/2.0/datarecord/lithology-description">
                                    <swe:field name="lithology-description">
                                        <swe:Category definition="http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial">
                                            <swe:identifier>http://www.opengis.net/def/nil/OGC/0/inapplicable</swe:identifier>
                                            <swe:label>Sandy clay</swe:label>
                                            <swe:value>Sandy clay</swe:value>
                                        </swe:Category>
                                    </swe:field>
                                </swe:DataRecord>
                            </gwml20w:value>
                        </gwml20w:LogValue>
                    </gwml20w:element>
                    <!-- ... snip ... -->
<!-- Other gwml20w:element deleted for other depth intervals -->
                </gwml20w:GW_GeologyLogCoverage>
            </om:result>
        </gwml20w:GW_GeologyLog>
    </gwml20w:gwWellGeology>
    <gwml20w:gwWellGeology>
        <gwml20w:GW_GeologyLog gml:id="borehole.id1.hydrostratigraphy.1.-1">
            <gml:identifier codeSpace="http://www.ietf.org/rfc/rfc2616">http://environment.data.gov.au/groundwater/feature/stratigraphy-log/borehole.vic.20009070.hydrostratigraphy.1.-1</gml:identifier>
            <om:phenomenonTime xlink:href="http://www.opengis.net/def/nil/OGC/0/unknown" xlink:title="unknown"/>
            <om:resultTime xlink:href="http://www.opengis.net/def/nil/OGC/0/unknown" xlink:title="unknown"/>
            <om:procedure xlink:href="http://environment.data.gov.au/groundwater/def/procedure/hydrostratigraphy" xlink:title="hydrostratigraphy"/>
            <om:observedProperty xlink:href="http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial" xlink:title="lithology"/>
            <om:featureOfInterest xlink:href="http://environment.data.gov.au/groundwater/feature/borehole/vic.20009070"/>
            <om:result>
                <gwml20w:GW_GeologyLogCoverage gml:id="borehole.vic.id1.1.-1.coverage">
                    <gwml20w:element>
                        <gwml20w:LogValue>
                            <gwml20w:fromDepth>
                                <swe:Quantity>
                                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                                    <swe:value>204.2</swe:value>
                                </swe:Quantity>
                            </gwml20w:fromDepth>
                            <gwml20w:toDepth>
                                <swe:Quantity>
                                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                                    <swe:value>215.0</swe:value>
                                </swe:Quantity>
                            </gwml20w:toDepth>
                            <gwml20w:value>
                                <swe:DataRecord definition="http://www.opengis.net/def/gwml/2.0/datarecord/stratigraphy">
                                    <swe:field name="stratigraphy">
                                        <swe:Category definition="http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial">
                                            <swe:identifier>http://environment.data.gov.au/def/stratigraphy/dilwyn-formation</swe:identifier>
                                            <swe:label>Dilwyn Formation / Yaugher Volcanics / Rivernook Member</swe:label>
                                            <swe:value>Dilwyn formation</swe:value>
                                        </swe:Category>
                                    </swe:field>
                                </swe:DataRecord>
                            </gwml20w:value>
                        </gwml20w:LogValue>
                    </gwml20w:element>
                    <!-- ... snip ...-->
<!-- Other gwml20w:element properties deleted for other stratigraphic depth intervals -->
                </gwml20w:GW_GeologyLogCoverage>
            </om:result>
            <gwml20w:startDepth>
                <swe:Quantity>
                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                    <swe:value>0.0</swe:value>
                </swe:Quantity>
            </gwml20w:startDepth>
            <gwml20w:endDepth>
                <swe:Quantity>
                    <swe:uom code="m" xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
                    <swe:value>216.4</swe:value>
                </swe:Quantity>
            </gwml20w:endDepth>
        </gwml20w:GW_GeologyLog>
    </gwml20w:gwWellGeology>
</gwml20w:GW_Well>
```

## Reducing <a href="GeologyLog" class="wikilink">GeologyLog</a> encoding

There is an issue with the ‘verbosity’ of the <a href="GroundWaterML2" class="wikilink">GroundWaterML2</a> Geology Log encoding that we should think about ways to reduce.

The issue is that with the way I have encoded it, there is 25+ lines for each depth element in the log. With the NGIS data, we have 3 observations for each depth element (Major lithology e.g. ‘Clay’, minor lithology e.g. ‘Sand’, lithology description e.g. ‘sandy clay’). Given there may also be multiple drillers and geologists logs, delivering the downhole geology creates significant XML and associated performance issues.

This is an encoding of one depth element for one lithology from one log:

```
<gwml20w:element>
  <gwml20w:LogValue>
    <gwml20w:fromDepth>
      <swe:Quantity>
        <swe:uom code="m" xlink:href=" [[http://qudt.org/vocab/unit#Meter][http://qudt.org/vocab/unit#Meter]]" xlink:title="metre"/>
        <swe:value>65.76</swe:value>
      </swe:Quantity>
    </gwml20w:fromDepth>
    <gwml20w:toDepth>
      <swe:Quantity>
        <swe:uom code="m" xlink:href=" [[http://qudt.org/vocab/unit#Meter][http://qudt.org/vocab/unit#Meter]]" xlink:title="metre"/>
        <swe:value>67.67</swe:value>
      </swe:Quantity>
    </gwml20w:toDepth>
    <gwml20w:value>
      <swe:DataRecord definition=" [[http://www.opengis.net/def/gwml/2.0/datarecord/major-lithology][http://www.opengis.net/def/gwml/2.0/datarecord/major-lithology]]">
        <swe:field name="major-lithology">
           <swe:Category definition=" [[http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial][http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial]]">
              <swe:identifier> [[http://environment.data.gov.au/groundwater/def/lithology/SAND%3c/swe:identifier][http://environment.data.gov.au/groundwater/def/lithology/SAND</swe:identifier]]>
              <swe:label>SAND</swe:label>
              <swe:value>SAND</swe:value>
           </swe:Category>
        </swe:field>
     </swe:DataRecord>
    </gwml20w:value>
  </gwml20w:LogValue>
</gwml20w:element>
```

Assuming we don’t accept ‘non-standard’ solutions (e.g. point to a <a href="NetCDF" class="wikilink">NetCDF</a> version of the logs) I’ve proposed four options that come to my mind for reducing the load.

### 1. <a href="WaterML2" class="wikilink">WaterML2</a> metadata header approach:

One option is to follow the <a href="WaterML2" class="wikilink">WaterML2</a> example (which is currently being converted to the generic <a href="TimeSeriesML" class="wikilink">TimeSeriesML</a>), but I’m not sure we can pack much into the metadata header anyway, perhaps just the uom:

```
<gwml2ow:defaultElementMetadata>  
  <gwml20w:DefaultDepthMeasurementMetadata> 
    <gwml20w:uom code="m" xlink:href=" [[http://qudt.org/vocab/unit#Meter][http://qudt.org/vocab/unit#Meter]]" xlink:title="metre"/>
  </gwml20w:DefaultDepthMeasurementMetadata>
</gwml20w:defaultElementMetadata> 
```

### 2. swe:<a href="QuantityRange" class="wikilink">QuantityRange</a> approach:

I think a better solution might be to combine our fromDepth and toDepth properties and possibly use swe:<a href="QuantityRange" class="wikilink">QuantityRange</a>, which would reduce each element to:

```
<gwml20w:element>
  <gwml20w:LogValue>
    <gwml20w:depthRange>
      <swe:QuantityRange>
        <swe:uom code="m" xlink:href=" [[http://qudt.org/vocab/unit#Meter][http://qudt.org/vocab/unit#Meter]]" xlink:title="metre"/>
        <swe:value>65.76 67.67</swe:value>
      </swe:QuantityRange>
    </gwml20w:depthRange>
    <gwml20w:value>
       <swe:DataRecord definition=" [[http://www.opengis.net/def/gwml/2.0/datarecord/major-lithology][http://www.opengis.net/def/gwml/2.0/datarecord/major-lithology]]">
           <swe:field name="major-lithology">
                <swe:Category definition=" [[http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial][http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial]]">
                         <swe:identifier> [[http://environment.data.gov.au/groundwater/def/lithology/SAND%3c/swe:identifier][http://environment.data.gov.au/groundwater/def/lithology/SAND</swe:identifier]]>
                         <swe:value>SAND</swe:value>
                 </swe:Category>
            </swe:field>
        </swe:DataRecord>
        </gwml20w:value>
     </gwml20w:LogValue>
</gwml20w:element>
```

### 3. swe:field approach

A third option would be to somehow compress everything into a single <a href="LogValue" class="wikilink">LogValue</a> /swe:field, something like:

```
<gwml20w:element>
   <gwml20w:LogValue>
       <swe:field name="groundwaterml2 geology log">
             <swe:QuantityRange>
                <swe:uom code="m" xlink:href=" [[http://qudt.org/vocab/unit#Meter][http://qudt.org/vocab/unit#Meter]]" xlink:title="metre"/>            
                <swe:value>65.76 67.67</swe:value>
             </swe:QuantityRange>
             <swe:Category definition=" [[http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial][http://www.opengis.net/def/gwml/2.0/observedProperty/earthMaterial]]">
                  <swe:identifier> [[http://environment.data.gov.au/groundwater/def/lithology/SAND%3c/swe:identifier][http://environment.data.gov.au/groundwater/def/lithology/SAND</swe:identifier]]>
                  <swe:value>SAND</swe:value>          
             </swe:Category>
         </swe:field>   
    </gwml20w:LogValue>
</gwml20w:element> 
```

### 4. Multiple swe:Category in swe:field:

Option 3 may also allow combining the various lithologies at any particular interval into the same XML snippet reducing 100+ lines of XML to 20+ (I think swe:field allows this, but it does present some service configuration challenges):

```
<gwml20w:element>
     <gwml20w:LogValue>
          <swe:field name="groundwaterml2 geology log">
               <swe:QuantityRange>
                     <swe:uom code="m" xlink:href=" [[http://qudt.org/vocab/unit#Meter][http://qudt.org/vocab/unit#Meter]]" xlink:title="metre"/>
                     <swe:value>65.76 67.67</swe:value>
               </swe:QuantityRange>
               <swe:Category definition=" [[http://www.opengis.net/def/gwml/2.0/datarecord/major-lithology][http://www.opengis.net/def/gwml/2.0/datarecord/major-lithology]]">
                     <swe:identifier> [[http://environment.data.gov.au/groundwater/def/lithology/CLAY%3c/swe:identifier][http://environment.data.gov.au/groundwater/def/lithology/CLAY</swe:identifier]]>
                     <swe:value>CLAY</swe:value>
               </swe:Category>
               <swe:Category definition=" [[http://www.opengis.net/def/gwml/2.0/datarecord/minor-lithology][http://www.opengis.net/def/gwml/2.0/datarecord/minor-lithology]]">
                     <swe:identifier> [[http://environment.data.gov.au/groundwater/def/lithology/SAND%3c/swe:identifier][http://environment.data.gov.au/groundwater/def/lithology/SAND</swe:identifier]]>
                     <swe:value>SAND</swe:value>
               </swe:Category> 
               <swe:Category definition=" [[http://www.opengis.net/def/gwml/2.0/datarecord/lithology][http://www.opengis.net/def/gwml/2.0/datarecord/lithology]]-description">
                     <swe:identifier> [[http://www.opengis.net/def/nil/OGC/0/inapplicable%3c/swe:identifier][http://www.opengis.net/def/nil/OGC/0/inapplicable</swe:identifier]]>
                     <swe:value>sandy clay</swe:value>
                </swe:Category>
            </swe:field>
       </gwml20w:LogValue>
</gwml20w:element>       
```

I’m not sure how valid these approaches are, whether there are better options or whether we want to try to change at this late stage (although the aim of an experiment is to find out what works and what doesn’t, and I don’t think the current pattern works).

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 16 Mar 2015

### 5. As per 14Apr2015--<a href="GW2IEMeeting35" class="wikilink">GW2IEMeeting35</a> multiple fields (for eg major, minor and free text lithology) within the log value earthMaterial <a href="DataRecord" class="wikilink">DataRecord</a>.

[14Apr2015 (Tues) GW2IE Meeting 35](14Apr2015--GW2IEMeeting35) Encoding: change to enable sequential encoding of multiple lithologies within an interval

```
<gwml2w:element>
  <gwml2w:LogValue>
    <gwml2w:fromDepth>
      <swe:Quantity>
        <swe:uom xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
        <swe:value>0.3</swe:value>
      </swe:Quantity>
    </gwml2w:fromDepth>
    <gwml2w:toDepth>
      <swe:Quantity>
        <swe:uom xlink:href="http://qudt.org/vocab/unit#Meter" xlink:title="metre"/>
        <swe:value>2.4</swe:value>
      </swe:Quantity>
    </gwml2w:toDepth>
    <gwml2w:value>
      <swe:DataRecord definition="http://www.opengis.net/def/gwml/2.1/datarecord/earthMaterial" id="id.2">
        <swe:field name="lithology">
          <swe:Category definition="http://www.opengis.net/def/gwml/2.1/observedProperty/earthMaterial">
            <swe:codeSpace xlink:href="http://resource.geosciml.org/classifierscheme/cgi/201211/simplelithology" xlink:title="Simple lithology"/>
            <swe:value>Peat</swe:value>
          </swe:Category>
        </swe:field>
        <swe:field name="description">
          <swe:Text definition="http://www.gwml.org/def/gwml/2.1/datarecord/FreeText">
            <swe:value>organic</swe:value>
          </swe:Text>
        </swe:field>
      </swe:DataRecord>
    </gwml2w:value>
  </gwml2w:LogValue>
</gwml2w:element>
 
```

-- Main.<a href="AlexKmoch" class="wikilink">AlexKmoch</a> - 16 Apr 2015

- TOPICINFO{author="<a href="AlexKmoch" class="wikilink">AlexKmoch</a>" comment="reprev" date="1429170697" format="1.1" reprev="7" version="7"}

<!-- -->

- TOPICPARENT{name="01Oct2014--<a href="GW2IEMeeting24" class="wikilink">GW2IEMeeting24</a>"}
