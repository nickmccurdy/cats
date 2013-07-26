# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cats'

Gem::Specification.new do |spec|
  spec.name          = "cats"
  spec.version       = Cats::VERSION
  spec.authors       = ["Nicolas McCurdy"]
  spec.email         = ["thenickperson@gmail.com"]
  spec.description   = "A pointless placeholder gem that might do something cat-related eventually."
  spec.summary       = "A pointless placeholder gem that might do something cat-related eventually."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
