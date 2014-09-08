Gem::Specification.new do |s|
  s.name = 'testdata_text'
  s.version = '0.1.4'
  s.summary = 'testdata_text'
    s.authors = ['James Robertson']
  s.files = Dir['lib/**/*']
  s.add_runtime_dependency('rowx', '~> 0.1', '>=0.1.6')
  s.add_runtime_dependency('nokogiri', '~> 1.6', '>=1.6.2.1') 
  s.signing_key = '../privatekeys/testdata_text.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/testdata_text'
  s.required_ruby_version = '>= 2.1.2'
end
