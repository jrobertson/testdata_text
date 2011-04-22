#!/usr/bin/env ruby
# file: testdata_text.rb

require 'rowx'
require 'nokogiri'

class String
  def /(str_to_join)
    File.join(self, str_to_join)
  end
end

class TestdataText

  def self.parse(txt)

    rowx = RowX.new(txt)
    xml = rowx.to_xml

    lib = File.dirname(__FILE__)
    xsl = File.open(lib/'testdata.xsl','r').read

    doc = Nokogiri::XML(xml)
    xslt  = Nokogiri::XSLT(xsl)
    xslt.transform(doc).to_s

  end
end
