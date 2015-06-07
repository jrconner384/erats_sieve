Gem::Specification.new do |s|
  s.name        = 'erats_sieve'
  s.version     = '0.0.7'
  s.date        = DateTime.now
  s.summary     = 'erats_sieve'
  s.description = 'A pure-Ruby implementation of the Sieve of Eratosthenes.'
  s.authors     = ['Jason Conner']
  s.email       = 'jason.r.conner@gmail.com'
  s.files       = ['lib/erats_sieve.rb']
  s.homepage    = 'http://rubygems.org/gems/erats_sieve'
  s.license     = 'MIT'

  s.add_runtime_dependency 'open_integer', '~> 0.0', '>= 0.0.6'
  s.add_development_dependency 'simplecov', '~>0.9'
  s.add_development_dependency 'coveralls', '~>0.8'
  s.add_development_dependency 'minitest', '~> 5'

  s.version = "#{s.version}-pre-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
end
