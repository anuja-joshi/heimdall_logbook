Gem::Specification.new do |s|
  s.name        = 'heimdall_logbook'
  s.version     = '0.0.0'
  s.date        = '2019-04-28'
  s.summary     = "Heimdall Logbook!"
  s.description = "A gem to log all incoming request and response"
  s.authors     = ["Anuja Joshi"]
  s.email       = 'anuja.joshi443@gmail.com'
  s.files       = `git ls-files`.split($/)
  s.homepage    = 'https://rubygems.org/gems/heimdall_logbook'
  s.homepage    = 'https://github.com/anuja-joshi/heimdall_logbook'
  s.license     = 'MIT'
  s.require_paths = ['lib']

  s.add_development_dependency 'generator_spec'

  s.add_dependency "railties", ">= 5"
  s.add_dependency "activerecord", ">= 5"
end
