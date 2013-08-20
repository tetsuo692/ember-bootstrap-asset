# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ember/bootstrap/asset/version'

Gem::Specification.new do |spec|
  spec.name          = "ember-bootstrap-asset"
  spec.version       = Ember::Bootstrap::Asset::VERSION
  spec.authors       = ["Guillaume BELLEGUIC"]
  spec.email         = ["guillaume@belleguic.com"]
  spec.description   = %q{Add ember-bootstrap lib to rails asset pipeline}
  spec.summary       = %q{Add ember-bootstrap lib to rails asset pipeline}
  spec.homepage      = "https://github.com/tetsuo692/ember-bootstrap-asset"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "railties", [">= 4.0"]
  spec.add_dependency "ember-bootstrap-source", "~> 0.0.3"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

end
