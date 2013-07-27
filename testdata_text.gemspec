Gem::Specification.new do |s|
  s.name = 'testdata_text'
  s.version = '0.1.3'
  s.summary = 'testdata_text'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*']
  s.add_dependency('rowx')
  s.add_dependency('nokogiri') 
  s.signing_key = '../privatekeys/testdata_text.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/testdata_text'
end
