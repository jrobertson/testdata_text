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

  def self.parse(raw_txt)

    txt = raw_txt.split(/(?=\n=begin)/m)\
                                .map {|x| x.sub(/\n=begin.*=end/m,'')}.join    
    rowx = RowX.new(txt, level: 1)
    xml = rowx.to_xml

    lib = File.dirname(__FILE__)
    xsl = File.open(lib/'testdata.xsl','r').read

    doc = Nokogiri::XML(xml)
    xslt  = Nokogiri::XSLT(xsl)
    xslt.transform(doc).to_s

  end
end
