# Configuring Enterprise Architect for the GWML 2 Model

1.  Using a subversion client, do a SVN Checkout using the following URL
    1.  <https://xp-dev.com/svn/gwml2/model>
    2.  **\* It is mandatory\*** to use this exact path
2.  If not already done, do a SVN checkout for the following packages
    1.  <a href="GeoSciML" class="wikilink">GeoSciML</a> --\> <https://www.seegrid.csiro.au/subversion/GeoSciML/tags/3.2.0/model>
    2.  <a href="HollowWorld" class="wikilink">HollowWorld</a> --\> <https://www.seegrid.csiro.au/subversion/HollowWorld/branches/release_4>
    3.  ISOTC211 --\> <https://www.seegrid.csiro.au/mirrors/iso-harmonized-model>
3.  In EA, create a new empty project. In Project viewer, right-click on model, --\> Version control --\> then Version control Setting. Create new configurations by clicking on the new button.
    1.  In configuration Details – Type, select Subversion. Set the VC Time-Out setting to 150 seconds.
    2.  Type hollowworld in the Unique ID field. Select the path where the hollowworld model resides (at the root of the svn checkout folder). Save and click on the New button.
    3.  Type isotc211 in the Unique ID field. Select the path where the isotc211 model resides (at the root of the svn checkout folder). Save and click on the New button.
    4.  Type geosciml in the <a href="UniqueID" class="wikilink">UniqueID</a> field. Select the path where the <a href="GeoSciML" class="wikilink">GeoSciML</a> model resides. Save and click on the New button.
    5.  Type gwml in the <a href="UniqueID" class="wikilink">UniqueID</a> field. Select the path where the gwml model resides (typically, \<gwml_root\>\model). Save.
4.  In EA, in Project viewer, right-click on model, --\> Package control --\> Get Package. For <a href="HollowWorld" class="wikilink">HollowWorld</a> (select file <a href="HollowWorld" class="wikilink">HollowWorld</a>.xml). Do the same for <a href="GeoSciML" class="wikilink">GeoSciML</a> (select file geosciml.xml), For GWML, select GWML2.xml. If you placed your ISO TC211 models files correctly, the get package for isotc211 is done automatically through <a href="HollowWorld" class="wikilink">HollowWorld</a>
5.  In EA, in Project viewer, right-click on Model, --\> Package control --\> Get All Latest. In some instance, it was found that a "Get Latest" on each package was required to fully update the model to its latest version. Please verify the the model is up to date before doing any edits.
6.  Configure correctly EA. See <https://www.seegrid.csiro.au/wiki/AppSchemas/ConfiguringUMLToolForHollowWorld#A_5._Configure_the_EA_UI>
7.  Add the Inspire profile (for voidable properties) in the UML Profiles in the Resources pane. Select the file <a href="INSPIRE_UMLProfile_D2" class="wikilink">INSPIRE_UMLProfile_D2</a>.5_v3.0.xml (from the hollowWorld location). Same procedure than the previous point.
8.  You are now ready to edit the model. To do so, right-click on gwml2 and do a check out. You can then check out other packages. When completed, simply do a check in and add some edition notes if required.
9.  If more details are required, please visit <https://www.seegrid.csiro.au/wiki/CGIModel/ConfiguringEnterpriseArchitectForGeoSciML>

-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 8 Jul 2014

Updated \<br /\>-- Main.<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a> - 05 Feb 2015

## Troubleshooting

**EA throws a <a href="QueryDef" class="wikilink">QueryDef</a> error when you try to Get Latest or Get All Latest.**

Typically cause by selecting the wrong folder in Version Control Setting. At the initial Get Package, you're asked to select a xmi file. The location of resource are relative to folder selected at Version Control Setting. EA will list all xmi file recursively, but the xmi file still rely on folder selected at configuration.

## Resources

Great Resource from INSPIRE <https://www.seegrid.csiro.au/wiki/pub/AppSchemas/ConfiguringUMLToolForHollowWorld/INSPIRE_uml_howtopdf__EN_2.0.pdf>

- TOPICINFO{author="<a href="FrancoisLetourneau" class="wikilink">FrancoisLetourneau</a>" comment="reprev" date="1439990982" format="1.1" reprev="7" version="10"}

<!-- -->

- TOPICPARENT{name="<a href="GroundwaterInteroperabilityExperiment2" class="wikilink">GroundwaterInteroperabilityExperiment2</a>"}
