# Setting up UML for RGS

If you are using a vmware instanace, don't try to put things on virtual shared drives. Store things within the vm. Or odd lock-ups happen.

Subversion is version dependent. If you check out a model using svn 1.6 and try to use svn 1.7 as the subversion exe path below, it won't work.

It's not obvious from the <a href="HollowWorld" class="wikilink">HollowWorld</a> page, but the subversion URL for ISO TC 211 is [https://www.seegrid.csiro.au/mirrors/iso-harmonized-model](https://www.seegrid.csiro.au/mirrors/iso-harmonized-model/isotc211/) check that out and set the isotc211 link to the base of the checkout. The <a href="HollowWorld" class="wikilink">HollowWorld</a> model seems to expect a path of \$base/isotc211/ISOTC211.xml for some reason.

(<a href="SlikSvn" class="wikilink">SlikSvn</a>) If you have a different user id/password to what's normal, the initial svn update may hang. You need to open a command line, go the the directory where you have stored the working copy and execute something like svn info --xml --incremental <https://svn.sdsc.edu/repo/WaterML/WaterML2.0-part2/uml-model/> at that point, you will be prompted for a password. Just enter, you'll then be prompted for a username/password and that should get saved.

# Ratings and gaugings model environment

1\. Setup the base <a href="HollowWorld" class="wikilink">HollowWorld</a> environment according to <https://www.seegrid.csiro.au/wiki/AppSchemas/ConfiguringUMLToolForHollowWorld>. This will setup version control for <a href="HollowWorld" class="wikilink">HollowWorld</a> template and ISO models. So there will be two models in the VC setup window:

\<img alt="" data-base-url="<https://wiki.csiro.au>" data-image-src="/download/attachments/545784490/<a href="VersionControl" class="wikilink">VersionControl</a>.png?version=1&modificationDate=1342058436390" data-linked-resource-container-id="545784490" data-linked-resource-default-alias="<a href="VersionControl" class="wikilink">VersionControl</a>.png" data-linked-resource-id="545947754" data-linked-resource-type="attachment" src="<https://wiki.csiro.au/download/attachments/545784490/VersionControl.png?version=1&modificationDate=1342058436390>" title='"WRON:' /\>

2\. Check out the RGS model from the SDSC SVN here: <https://svn.sdsc.edu/repo/WaterML/WaterML2.0-part2/uml-model/> using an SVN client. SVN login details available from here: <https://wiki.csiro.au/display/WaterML20/Infrastructure+Tools+-+Subversion+and+JIRA>.

3\. In EA, configure a new package under version control (right click project -\> Package control -\> Version control settings...) that points to the local directory holding the checked out XMI file. This should look like this:

\<img alt="" data-base-url="<https://wiki.csiro.au>" data-image-src="/download/attachments/545784490/<a href="VCforRGS" class="wikilink">VCforRGS</a>.png?version=1&modificationDate=1342058436347" data-linked-resource-container-id="545784490" data-linked-resource-default-alias="<a href="VCforRGS" class="wikilink">VCforRGS</a>.png" data-linked-resource-id="545947755" data-linked-resource-type="attachment" src="<https://wiki.csiro.au/download/attachments/545784490/VCforRGS.png?version=1&modificationDate=1342058436347>" title='"WRON:' /\>

4\. From Package control -\> <a href="GetPackage" class="wikilink">GetPackage</a>, you will prompted with the XMI import:

\<img alt="" data-base-url="<https://wiki.csiro.au>" data-image-src="/download/attachments/545784490/<a href="EA_shot_svn" class="wikilink">EA_shot_svn</a>.png?version=1&modificationDate=1344989393277" data-linked-resource-container-id="545784490" data-linked-resource-default-alias="<a href="EA_shot_svn" class="wikilink">EA_shot_svn</a>.png" data-linked-resource-id="550962314" data-linked-resource-type="attachment" src="<https://wiki.csiro.au/download/attachments/545784490/EA_shot_svn.png?version=1&modificationDate=1344989393277>" title='"WRON:' /\> <a href="ModelEnvironmentSetup" class="wikilink">ModelEnvironmentSetup</a> \> <a href="EA_shot_svn" class="wikilink">EA_shot_svn</a>.png" /\>

The model you want is RGS-core-model.xml. The RGS-existing-models.xml may also be imported. This contains reverse engineered existing models (UGSS, WDTF, FEWS etc.). This will import the model into the selected package. You should end up with a base structure something like this:

\<img alt="" data-base-url="<https://wiki.csiro.au>" data-image-src="/download/attachments/545784490/model_strucure.png?version=1&modificationDate=1344989538960" data-linked-resource-container-id="545784490" data-linked-resource-default-alias="model_strucure.png" data-linked-resource-id="550962315" data-linked-resource-type="attachment" src="<https://wiki.csiro.au/download/attachments/545784490/model_strucure.png?version=1&modificationDate=1344989538960>" title='"WRON:' /\>

The existing models are reversed engineered from the associated schema with some small manual adjustment.

The ensure you have the dependent ISO/<a href="HollowWorld" class="wikilink">HollowWorld</a> models, check the <a href="BaseModel" class="wikilink">BaseModel</a>::Gaugings::Gaugings model overview and you should be able to see the <a href="OM_Observation" class="wikilink">OM_Observation</a> base type from <a href="GaugingObservation" class="wikilink">GaugingObservation</a>, e.g.

\<img alt="" data-base-url="<https://wiki.csiro.au>" data-image-src="/download/attachments/545784490/HWCheck.png?version=1&modificationDate=1342058436223" data-linked-resource-container-id="545784490" data-linked-resource-default-alias="HWCheck.png" data-linked-resource-id="545947763" data-linked-resource-type="attachment" src="<https://wiki.csiro.au/download/attachments/545784490/HWCheck.png?version=1&modificationDate=1342058436223>" title='"WRON:' /\>

\<img alt="(thumbs up)" border="0" data-emoticon-name="thumbs-up" src="<https://wiki.csiro.au/s/en_GB/3391/c989735defd8798a9d5e69c058c254be2e5a762b.27/_/images/icons/emoticons/thumbs_up.png>" title="(thumbs up)" /\> You should be now good to go.

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 18 Dec 2012

- TOPICINFO{author="<a href="PeterTaylor" class="wikilink">PeterTaylor</a>" comment="save topic" date="1355873349" format="1.1" reprev="1" version="1"}

<!-- -->

- TOPICPARENT{name="<a href="WaterML2Part2" class="wikilink">WaterML2Part2</a>"}
