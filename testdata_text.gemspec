Gem::Specification.new do |s|
  s.name = 'testdata_text'
  s.version = '0.2.1'
  s.summary = 'testdata_text'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*']
  s.add_runtime_dependency('rowx', '~> 0.2', '>=0.6.0')
  s.add_runtime_dependency('nokogiri', '~> 1.8', '>=1.8.0') 
  s.signing_key = '../privatekeys/testdata_text.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/testdata_text'
  s.required_ruby_version = '>= 2.1.2'
end
