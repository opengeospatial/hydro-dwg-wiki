# SOS Services that serve <a href="WaterML2" class="wikilink">WaterML2</a>.0

## Current status

CSIRO and 52North are working on adapting current SOS implementations to serve <a href="WaterML2" class="wikilink">WaterML2</a>.0.

KISTERS implemented SOS with O&M1 and WML2 in their [http://kiwis.kisters.de Web Interoperability Solution (KIWIS)](http://kiwis.kisters.de%20Web%20Interoperability%20Solution%20(KIWIS)) , as well as <a href="WaterOneFlow" class="wikilink">WaterOneFlow</a> with <a href="WaterML1" class="wikilink">WaterML1</a> , and other http based query services

## Support for different RDBMS/storage layers

**Open question 1:** what types of database schemas would people like to support? Currently the 52North schema is a light schema for transmitting O&M style data. Water-based databases (ODM, WISKI7, Hydstra etc.) could be supported.

**Open question 2:** Architecture. The services will provide a subset of data from organisations. It would be best to use a staging server to hold the data relevant to the IE. It may be possible to do a translation in this case (e.g. WISKI to a 52North extended schema).

-- Main.<a href="PeterTaylor" class="wikilink">PeterTaylor</a> - 16 Jun 2010

------------------------------------------------------------------------

**About open question 1 :**

After the "Use Case 1" last week phone conference and email exchanges with Peter Taylor, it appeared a feedback and discussions on the different solutions to adapt 52n-SOS to the SWIE might be necessary. (for the record : <http://external.opengis.org/twiki_public/bin/view/HydrologyDWG/EuroIETelco20100630>)

Different solutions that are offered (from my short experience):

- **Fully adapt one's database to 52North SOS application**

It's the short-term perfect solution for the SWIE, but not fully compliant with WML2.0/OMv2 requirements regarding the actual 52N's DB. That implies fitting own database to 52N's. In terms of coding, a unique mapping has to be conducted by modifying dssos.config file, skipping any "heavy" modification in the source code.

- **Partially adapt one's database to 52N's by customizing DAO**

It's our current choice at the SANDRE since we wanted to fit our OM-ised DB with the 52N-SOS application. This solution implies adding to/deleting from SOS DB some tables (for example, we have added tables to simulate time-series) to fit more closely to O&M, plus modifying source code (especially, the PGSQL DAO for the time being) From us, final result could be providing a way of customizing "as easily as possible" DB and DAO classes. It's the mid-term solution, since following own schema, even if it's close to O&Mv2, might introduce delay for the "interoperability experiment".

- **Adapt one's database to WML2.0 schema together with a specific WML2.0 Data Access Object**

This solution requires mapping between own database and WML2 schema It requires more development from the 52N/CSIRO, but may be more relevant if every part agree on using this schema. We can consider this as the long-term solution.

- **Peter Taylor wrote something about adapting <a href="WaterML2" class="wikilink">WaterML2</a> to Object DB?**

-- Main.<a href="MathieuKazmierski" class="wikilink">MathieuKazmierski</a> (IOW -SANDRE) - 08 Jul 2010

- TOPICINFO{author="<a href="StefanFuest" class="wikilink">StefanFuest</a>" date="1290695370" format="1.1" reprev="1.3" version="1.3"}

<!-- -->

- TOPICPARENT{name="<a href="SurfacewaterInteroperabilityExperiment" class="wikilink">SurfacewaterInteroperabilityExperiment</a>"}
