Gem::Specification.new do |s|
  s.name        = 'compose_cucumber'
  s.version     = '0.0.1'
  s.date        = '2016-03-29'
  s.summary     = 'Cucumber Steps for Testing docker-compose applications'
  s.description = 'cucumber/aruba is for testing command line applications like compose_cucumber for docker-compose applications.'
  s.authors     = ['Stefan Rohe']
  s.homepage    = 'http://github.com/funkwerk/compose_cucumber/'
  s.files       = `git ls-files`.split("\n")
  s.executables = s.files.grep(%r{^bin/}) { |file| File.basename(file) }
  s.add_runtime_dependency 'cucumber', ['~> 2.3']
end
