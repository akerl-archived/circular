Gem::Specification.new do |s|
  s.name        = 'circular'
  s.version     = '0.0.1'
  s.date        = Time.now.strftime('%Y-%m-%d')

  s.summary     = ''
  s.description = ""
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/circular'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split

  s.add_dependency 'userinput', '~> 1.0.0'
  s.add_dependency 'keylime', '~> 0.0.1'

  s.add_development_dependency 'rubocop', '~> 0.36.0'
  s.add_development_dependency 'rake', '~> 10.5.0'
  s.add_development_dependency 'codecov', '~> 0.1.1'
  s.add_development_dependency 'rspec', '~> 3.4.0'
  s.add_development_dependency 'fuubar', '~> 2.0.0'
  s.add_development_dependency 'webmock', '~> 1.22.0'
  s.add_development_dependency 'vcr', '~> 3.0.0'
end
