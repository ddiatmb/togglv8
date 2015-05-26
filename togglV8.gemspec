# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'r-toggl/version'

Gem::Specification.new do |spec|
  spec.name          = "r-toggl"
  spec.version       = Toggl::VERSION
  spec.authors       = ["Paweł Pawlik"]
  spec.email         = ["pawel.pawlik@millwardbrown.com"]

  spec.summary       = %q{Extended ruby wrapper for Toggl API v8 and Reports API v2}
  spec.description   = %q{Extended ruby wrapper for Toggl API v8 - forked from https://github.com/madcowley/togglv8}
  spec.homepage      = "https://github.com/ddiatmb/togglv8"
  spec.license       = "MIT"

  spec.files         = Dir['Rakefile', 'lib/**/*', 'README*', 'LICENSE*']
  spec.require_paths = %w[ lib ]

  spec.add_runtime_dependency 'faraday', '~> 0.9'
  spec.add_runtime_dependency 'json', '~> 1.8'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.0"
end
