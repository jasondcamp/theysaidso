# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'theysaidso/version'

Gem::Specification.new do |spec|
  spec.name          = "theysaidso"
  spec.version       = Theysaidso::VERSION
  spec.authors       = ["Hassanin Ahmed"]
  spec.email         = ["sas1ni69@gmail.com"]
  spec.summary       = "A gem for the https://theysaidso.com API"
  spec.description   = "A gem for the https://theysaidso.com API" 
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_dependency "rest-client"
  spec.add_dependency "json"
end
