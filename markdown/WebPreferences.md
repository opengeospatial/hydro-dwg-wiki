# %WEB% Web Preferences

The following settings are \_\_web preferences\_\_ of the [<span class="twiki-macro WEB"></span>](%WEB%.%HOMETOPIC%) web. These preferences overwrite the \_\_site-level preferences\_\_ in [%TWIKIWEB%.%WIKIPREFSTOPIC%](%TWIKIWEB%.%WIKIPREFSTOPIC%) and [%LOCALSITEPREFS%](%LOCALSITEPREFS%), and can be overwritten by \_\_user preferences\_\_ (your personal topic, eg: <span class="twiki-macro MAINWEB"></span>.<span class="twiki-macro WIKINAME"></span> in the [<span class="twiki-macro MAINWEB"></span>](%MAINWEB%.%HOMETOPIC%) web).

<span class="twiki-macro TOC"></span>

## Web Preferences Settings

These settings override the defaults for this web only. See [full list of defaults with explanation](%TWIKIWEB%.TWikiPreferences#DefaultWebPreferences). Many of the settings below are commented out. Remove the \# sign to enable a local customisation.

- List of topics of the %WEB% web:
  - \#Set WEBTOPICLIST = <span class="twiki-macro WEBTOPICLIST"></span>

\<div style='background-color: %WEBBGCOLOR%;float: right'\>  %WEBBGCOLOR%  \</div\>

- Web-specific background color: (Pick a lighter one of the <span class="twiki-macro TWIKIWEB"></span>.<a href="StandardColors" class="wikilink">StandardColors</a>).
  - Set WEBBGCOLOR = \#33CCFF
  - \_\_Note:\_\_ This setting is automatically configured when you create a web

<!-- -->

- Image, URL and alternate tooltip text of web's logo.  
  \_\_Note:\_\_ Don't add your own local logos to the <span class="twiki-macro TWIKIWEB"></span>.<a href="TWikiLogos" class="wikilink">TWikiLogos</a> topic; create your own logos topic instead.
  - \#Set WEBLOGOIMG = <span class="twiki-macro WEBLOGOIMG"></span>
  - \#Set WEBLOGOURL = <span class="twiki-macro WEBLOGOURL"></span>
  - \#Set WEBLOGOALT = <span class="twiki-macro WEBLOGOALT"></span>

<!-- -->

- List this web in the <span class="twiki-macro TWIKIWEB"></span>.<a href="SiteMap" class="wikilink">SiteMap</a>. If you want the web listed, then set SITEMAPLIST to `on`, do not set NOSEARCHALL, and add the "what" and "use to..." description for the site map. Use links that include the name of the web, i.e. %WEB%.Topic links.  
  \_\_Note:\_\_ Unlike other variables, the setting of SITEMAPLIST is **not** inherited from parent webs. It has to be set in **every** web that is to be listed in the <span class="twiki-macro TWIKIWEB"></span>.<a href="SiteMap" class="wikilink">SiteMap</a>  
  - Set SITEMAPLIST = on
  - Set SITEMAPWHAT = Public Hydrology DWG
  - Set SITEMAPUSETO = ...collaborate on Hydrology
  - \_\_Note:\_\_ Above settings are automatically configured when you create a web

<!-- -->

- Exclude web from a `web="all"` search: (Set to `on` for hidden webs).
  - Set NOSEARCHALL =
  - \_\_Note:\_\_ This setting is automatically configured when you create a web

<!-- -->

- Prevent automatic linking of [WikiWords](%TWIKIWEB%.WikiWords) and acronyms (if set to `on`); link WikiWords (if empty); can be overwritten by web preferences:
  - \#Set NOAUTOLINK = <span class="twiki-macro NOAUTOLINK"></span>
  - \_\_Note:\_\_ You can still use the `[<nop>[...][...]]` syntax to link topics if you disabled WikiWord linking. The `<noautolink> ... </noautolink>` syntax can be used to prevents links within a block of text.

<!-- -->

- Default template for **new topics** for this web:
  - <a href="WebTopicEditTemplate" class="wikilink">WebTopicEditTemplate</a>: Default template for new topics in this web. (Site-level is used if topic does not exist)
  - [%TWIKIWEB%.WebTopicEditTemplate](%TWIKIWEB%.WebTopicEditTemplate): Site-level default topic template

<!-- -->

- Comma separated list of **forms** that can be attached to topics in this web. See <span class="twiki-macro TWIKIWEB"></span>.<a href="TWikiForms" class="wikilink">TWikiForms</a> for more information.
  - Set WEBFORMS =

<!-- -->

- Users or groups who \_\_are not\_\_ / \_\_are\_\_ allowed to \_\_view\_\_ / \_\_change\_\_ / \_\_rename\_\_ topics in the %WEB% web: (See <span class="twiki-macro TWIKIWEB"></span>.<a href="TWikiAccessControl" class="wikilink">TWikiAccessControl</a>). Remove the \# to enable any of these settings. Remember that an empty setting is a valid setting; setting DENYWEBVIEW to nothing means that anyone can view the web.
  - \#Set DENYWEBVIEW =
  - \#Set ALLOWWEBVIEW =
  - \#Set DENYWEBCHANGE =
  - \#Set ALLOWWEBCHANGE = <span class="twiki-macro MAINWEB"></span>.<a href="TWikiAdminGroup" class="wikilink">TWikiAdminGroup</a>
  - \#Set DENYWEBRENAME =
  - \#Set ALLOWWEBRENAME = <span class="twiki-macro MAINWEB"></span>.<a href="TWikiAdminGroup" class="wikilink">TWikiAdminGroup</a>

<!-- -->

- Users or groups allowed to change or rename this %TOPIC% topic: (e.g., <span class="twiki-macro MAINWEB"></span>.<a href="TWikiAdminGroup" class="wikilink">TWikiAdminGroup</a>)
  - \#Set ALLOWTOPICCHANGE = <span class="twiki-macro MAINWEB"></span>.<a href="TWikiAdminGroup" class="wikilink">TWikiAdminGroup</a>
  - Set ALLOWTOPICRENAME = <span class="twiki-macro MAINWEB"></span>.<a href="TWikiAdminGroup" class="wikilink">TWikiAdminGroup</a>

<!-- -->

- Web preferences that are **not** allowed to be overridden by user or topic preferences:
  - Set FINALPREFERENCES = NOSEARCHALL, ATTACHFILESIZELIMIT, WIKIWEBMASTER, WEBCOPYRIGHT, WEBTOPICLIST, DENYWEBVIEW, ALLOWWEBVIEW, DENYWEBCHANGE, ALLOWWEBCHANGE, DENYWEBRENAME, ALLOWWEBRENAME

<span class="twiki-macro INCLUDE">%TWIKIWEB%.WebPreferencesHelp</span>

- TOPICINFO{author="<a href="KevinStegemoller" class="wikilink">KevinStegemoller</a>" date="1239112368" format="1.1" version="1.13"}

<!-- -->

- TOPICPARENT{name="<a href="WebHome" class="wikilink">WebHome</a>"}

<!-- -->

- FILEATTACHMENT{name="favicon.ico" attachment="favicon.ico" attr="" comment="placeholder favicon" date="1100974473" path="favicon.ico" size="318" tmpFilename="/var/tmp/CGItemp25580" user="<a href="TWikiContributor" class="wikilink">TWikiContributor</a>" version="1.1"}
