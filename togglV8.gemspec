version = File.open('VERSION', 'rb').read

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'r-toggl'
  s.version     = version
  s.summary     = 'Extended ruby wrapper for Toggl API v8'
  s.description = 'Extended ruby wrapper for Toggl API v8 - forked from https://github.com/kanet77/togglv8'

  s.license = 'MIT'
  s.author   = 'nathan-d'
  s.email    = 'nathan@rackspace.co.uk'
  s.homepage = 'https://github.com/nathan-d/togglv8'

  s.files = %w(README.md lib/togglV8.rb)

  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'

  s.add_runtime_dependency 'faraday', '~> 0.9'
  s.add_runtime_dependency 'awesome_print', '~> 1.1'
  s.add_runtime_dependency 'json', '~> 1.8'
  s.add_runtime_dependency 'logger', '~> 1.2'
  s.add_runtime_dependency 'jazor', '~> 0.1'
end
