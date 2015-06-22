Gem::Specification.new do |s|
  s.name = 'sps-sub-ping'
  s.version = '0.1.0'
  s.summary = 'Embed within a service for responding to a SimplePubSub ping message'
  s.authors = ['James Robertson']
  s.files = Dir['lib/sps-sub-ping.rb']
  s.add_runtime_dependency('sps-pub', '~> 0.4', '>=0.4.0')
  s.add_runtime_dependency('sps-sub', '~> 0.2', '>=0.2.0')  
  s.signing_key = '../privatekeys/sps-sub-ping.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/sps-sub-ping'
end
