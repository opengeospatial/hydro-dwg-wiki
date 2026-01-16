# GWIE 2 UC 5 Discussion page

This page has been created to collect discussions and ideas and keep the main <a href="UseCase5" class="wikilink">UseCase5</a> page relatively clean.

## Realistic use case ideas

My idea here would be to scope the use case to something implementable. Groundwater model covers a lot of thing and having a an implementation of a mediation of all possible dataset is out of reach for a 1 year IE. At this point I propose we elect a small subset, but try to cover most of the required element needed to bring the same subset from heterogenous sources - so, more vertical than horizontal integration (if you allow the metaphor). We pick a small subset and we traverse all the steps instead of covering all dark corners of groundwater data . Of course, one constrains is data availability from various providers. I was thinking of a piezometric maps for instance. Getting from registring the dataset and service up to a standard dataset. Comments ? Suggestions ?

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 30 Oct 2012

We have two suggestions of sample data sets i.e. ADES from France \<a href="<http://www.ades.eaufrance.fr/Viewer.aspx>" title="blocked::<http://www.ades.eaufrance.fr/Viewer.aspx>"\><http://www.ades.eaufrance.fr/Viewer.aspx>\</a\> and BIS from Bavaria <http://www.bis.bayern.de/bis/>. Following Erics suggestion my idea is to use some example subset of data from these data sets (e.g. groundwater wells and piezometric maps from ADES and BIS), list up the codelists associated with these features in the respective systems and check how they fit in present GWML2 and INSPIRE models. Guess this would be a first step into pending data conversion tasks and also show similarities/differences of the data models.

Bernhard - 15 Nov 2012

Reading your suggestion, I realise the UC5 is not clear. The way the use case is described on <a href="UseCase5" class="wikilink">UseCase5</a>, it does not implies how the transformation will be done. My understanding was that the use case would demonstrate dynamic translation from heterogenous data sources (pretty much what OWS-9 CCI Semantic Mediation Engineering Report describes : <http://www.ogcnetwork.net/node/1798> ). The GWIE2 document is not clear about this. It does states that it a technological UC (so I concluded it was some technology development). We should nail this down before we go any further.

Here's how I understand it: The goal of the UC is to demonstrate how we can connect to heterogenous datasets and dynamically transform it into a common model. I was contemplating showing on a map a piezometric map with sampling features (water well essentially) and having delived with this 1..\* aquifer features (with relevant information). In OGC concepts, we have: <a href="SamplingFeatures" class="wikilink">SamplingFeatures</a> (in GWML, <a href="WaterWells" class="wikilink">WaterWells</a> are subtypes of <a href="SamplingFeatures" class="wikilink">SamplingFeatures</a> - let's see if this still holds), Those samplingFeatures have Observations (water levels). Each <a href="SamplingFeature" class="wikilink">SamplingFeature</a> "samples" a domain feature, which is the Aquifer (or the Water Body ?). A collection of those <a href="SamplingFeatures" class="wikilink">SamplingFeatures</a> (the piezometric map) forms a coverage. So maybe we are looking into a WMC/WFS/WMS instead of a SOS/WFS/SOS package ?

Can we have an agreement on how this transformation is to be done ?

While writing this, it occurs to me that I have a big issues : This UC requires that we have a pretty stable model to work with (at least the components that are relevant to this UC). Isn't this UC putting cart beforethe horses ?

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 16 Nov 2012

My experience is that the technology UC tests components of the information model to see if they can be delivered, filtered, transformed etc. As such it does require an agreed information model to test.

Assuming we have a 'strawman' model to test we need to decide on the technology. Without being specific about the use case I'd be looking at something like:

- Display location of sampling features (<a href="WaterWells" class="wikilink">WaterWells</a>, Guages, pump tests) as WMS
- Query sampling feature resulting in WFS response or SOS response depending on the nature of the sampling feature;
- Display results as WFS file or WCS (time and variable coverage for SOS feature).

Is this way off mark?

-- Main.<a href="BruceSimons" class="wikilink">BruceSimons</a> - 18 Nov 2012

Does this UC presuppose that all those service uses the same schema (OGCG GW schema) - \_à la\_ <a href="OneGeology" class="wikilink">OneGeology</a> - or do we need to consider integration of heterogenous schemas ? In the latter case, we need an extra component (an a big one). What you are listing is a case of stitching different data types into a single application. In a sense, it's not different from UC1 to UC4 (just one more application). What I understood of UC5 was different data source (but the same type - ie, water level) each having different schemas / vocabularies ( two or more WFS providing water wells exposing different schemas). Therefore, this UC could be a component of any/all of the other UC. I think we should have a agenda item about this on the next telecon.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 19 Nov 2012

After a discussion with Boyan, I filled the UC for sake of discussion. The goal is to transform existing schemas , out of an instance document or a service, into the new international standard.

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 20 Nov 2012

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" comment="reprev" date="1353406867" format="1.1" reprev="3" version="7"}

<!-- -->

- TOPICPARENT{name="<a href="UseCase5" class="wikilink">UseCase5</a>"}
