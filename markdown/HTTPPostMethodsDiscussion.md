## Posting an entire XML request document in a single form parameter

### Original Problem:

A url-encoded post from the form at <http://www.opennrm.org/-/ioe/sosbbox.html> is not being accepted by the OGC-IE service (location reserved for IE participants), but the same kind of request (posting an entire xml request document in a single form parameter) is accepted by the other participating services in the OGC-IE.

### The Underlying problem:

There are three different technical ways that a RESTlike request can be sent via POST: 1) in the HTTP body as an xml document, unencoded 2) in the HTTP body where the xml document elements are broken up as standard KVP pairs, URL encoded. 3) in the HTTP body where the xml document as a whole is sent as the value of a single KVP, URL encoded

### Discussion:

While all the different OGC specifications have some language regarding the service behavior in response to HTTP requests, I believe the authoritative OGC specification in this case is the "OGC Web Services Common specification". In this discussion, I'm using 06-121r3, dated 2007-02-09, obtainable from <http://www.opengeospatial.org/standards/common>.

From my reading of Section 11.4 on HTTP POST, either method \#1 or \#2 above is allowed by the spec. However, method \#3 (used by the form at opennrm.org) is often highly desired because it allows the invocation of the service through a simple html form with a single text input field as in the above url. Technically, the first two methods are more difficult to use. Method \#1 cannot be invoked by an html form without using additional javascript to write directly to the HTTP request body and to alter the accepted mime-types header. While method \#2 does not require additional scripting, it does requires the form to have multiple input fields, and so the form has to be modified for each different service. Thus, method \#3 is the most convenient to use across multiple services. However, while method \#3 is not expressly forbidden by the specification, the current "standard" implementation of it in use \_\_DOES\_\_ conflict with the specification. Where's the conflict? The current usage of \#3 places the entire xml into a KVP whose key is "request". This key name of "request" is reserved by the OGS specification for KVP POST, and its value is supposed to be "Operation name text" such as "<a href="GetCapabilities" class="wikilink">GetCapabilities</a>", not an entire xml document.

Tom's going to go ahead and accept method \#3 just to be compatible with the other participating services in the OGC-IE, but I think that if we're really serious about this functionality, then we need to propose an addition to the OGC Web Services Common specification using a non-conflicting key name such as "request-body" or something.

- TOPICINFO{author="<a href="NateBooth" class="wikilink">NateBooth</a>" date="1265328385" format="1.1" version="1.2"}

<!-- -->

- TOPICPARENT{name="<a href="SOSLargeCollectionSensorDiscussion" class="wikilink">SOSLargeCollectionSensorDiscussion</a>"}
