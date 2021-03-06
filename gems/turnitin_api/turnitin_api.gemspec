# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'turnitin_api/version'

Gem::Specification.new do |spec|
  spec.name          = "turnitin_api"
  spec.version       = TurnitinApi::VERSION
  spec.authors       = ["Brad Horrocks"]
  spec.email         = ["bhorrocks@instructure.com"]

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = Dir['{lib}/**/*'] + ['LICENSE.txt', 'README.md', 'Changelog.txt']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'simple_oauth', '0.2'
  spec.add_dependency 'webmock', '1.21'
  spec.add_dependency 'faraday', '~> 0.8'
  spec.add_dependency 'faraday_middleware', '~> 0.8'

  spec.add_development_dependency "bundler",  "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
