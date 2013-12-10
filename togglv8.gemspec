# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'togglv8/version'

Gem::Specification.new do |spec|
  spec.name          = "togglv8"
  spec.version       = Togglv8::VERSION
  spec.authors       = ["Tom Kane","itaymendel", "Matt Cowley"]
  spec.email         = ["madcowley@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'awesome_print', '~> 1.1.0'
  spec.add_development_dependency 'logger', '~> 1.2.8'
  spec.add_development_dependency "rspec", "~> 2.6"

  spec.add_dependency 'faraday', '~> 0.8.7'
  spec.add_dependency 'json', '~> 1.8.0'
  spec.add_dependency 'jazor', '~> 0.1.8'
end
