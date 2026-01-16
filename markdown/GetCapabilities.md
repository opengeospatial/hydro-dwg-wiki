# GetCapabilities use case

Note: page format will be formalised / cleaned up as we go.

The GetCapabilities document is mainly used for discovery of what the service can provide. In the context of the experiment, we already set many of the details already so technically, the client would not reallt need to access this document. But since some metadata is provided in there, such as contact name and such I created an instance of such document.

## Request

Client can send either a GET request or a POST request

```
http://www.someserver.com?
```

Since there is no GET (<a href="HttpRest" class="wikilink">HttpRest</a>), there are no 'request' parameters to pass.

Mock up system from GIN

- <http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/sos/>
- <http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/sos/GetCapabilities>

## Response

annotated document is attached to this page.

## Issues and discussions

-- Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a> - 25 Nov 2009

- TOPICINFO{author="<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" date="1259172823" format="1.1" reprev="1.1" version="1.1"}

<!-- -->

- TOPICPARENT{name="<a href="ExperimentUseCaseDiscussion" class="wikilink">ExperimentUseCaseDiscussion</a>"}

<!-- -->

- FILEATTACHMENT{name="getcapabilities.xml" attachment="getcapabilities.xml" attr="" comment="" date="1259171345" path="getcapabilities.xml" size="5978" stream="getcapabilities.xml" tmpFilename="/tmp/6Gl2aKRZay" user="Main.<a href="EricBoisvert" class="wikilink">EricBoisvert</a>" version="1"}
