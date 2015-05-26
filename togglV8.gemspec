# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'r-toggl/version'

Gem::Specification.new do |spec|
  spec.name          = "r-toggl"
  spec.version       = Toggl::VERSION
  spec.authors       = ["Paweł Pawlik"]
  spec.email         = ["pawel.pawlik@millwardbrown.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = Dir['Rakefile', '{features,lib,spec}/**/*', 'README*', 'LICENSE*']
  spec.require_paths = %w[ lib ]

  spec.add_runtime_dependency 'faraday', '~> 0.9'
  spec.add_runtime_dependency 'awesome_print', '~> 1.1'
  spec.add_runtime_dependency 'json', '~> 1.8'
  spec.add_runtime_dependency 'logger', '~> 1.2'
  spec.add_runtime_dependency 'jazor', '~> 0.1'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.0"
end
