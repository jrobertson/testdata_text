# Introducing the Testdata text gem

    require 'testdata_text'

    # the following text is an example of the manually input chronic_cron test data
    # prior to being transformed to XML (specifically testdata Polyrex format).
     
    txt =&lt;&lt;EOF
    title: chronic_cron testdata
    ruby_version: ruby-1.9.2-p180
    script: //job:test http://rorbuilder.info/r/gemtest/chronic_cron.rsf
    test_dir: /home/james/test-ruby/chronic_cron

    path: 1
    type: date only
    desc:

    input:
      date: 22-Apr-2011 12:34
      entry: * * * * *

    output:
      date: 2011-04-22 12:34

    ------------------------------

    path: 2
    type: date only
    desc:

    input:
      date: 22-Apr-2011 12:34
      entry: * * * * *

    output:
      date: 2011-04-22 12:34

    ------------------------------
    EOF

    xml = TestdataText.parse(txt)
    #=&gt;

<pre>
&lt;?xml version=&quot;1.0&quot;?&gt;  
&lt;summary&gt;
  &lt;title&gt;chronic_cron testdata&lt;/title&gt;
  &lt;recordx_type&gt;polyrex&lt;/recordx_type&gt;
  &lt;schema&gt;tests/test[path,type,description]/io[type,*]&lt;/schema&gt;
  &lt;ruby_version&gt;ruby-1.9.2-p180&lt;/ruby_version&gt;
  &lt;script&gt;//job:test http://rorbuilder.info/r/gemtest/chronic_cron.rsf&lt;/script&gt;
  &lt;test_dir&gt;/home/james/test-ruby/chronic_cron&lt;/test_dir&gt;
&lt;/summary&gt;
&lt;records&gt;
  &lt;test&gt;
    &lt;summary&gt;
      &lt;path&gt;1&lt;/path&gt;   
      &lt;type&gt;date only&lt;/type&gt;
      &lt;description&gt;date only&lt;/description&gt;
    &lt;/summary&gt;
    &lt;records&gt;
      &lt;io&gt;
        &lt;summary&gt;
          &lt;type&gt;input&lt;/type&gt;
          &lt;date&gt;22-Apr-2011 12:34&lt;/date&gt;
          &lt;entry&gt;* * * * *&lt;/entry&gt;
        &lt;/summary&gt;
        &lt;records/&gt;
      &lt;/io&gt;
... </pre>

The Testdata text gem is used for transforming text into XML for input into the testdata gem. I've found over the past few months that editing inputs in XML format can be tedious which is why I'm experimenting with using this simpler approach.
Note: If any of the initial text values contain angle brackets the value will automatically be wrapped within a CDATA element.

## Resources

* [jrobertson/testdata_text](https://github.com/jrobertson/testdata_text)

