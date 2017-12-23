# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cats'

Gem::Specification.new do |spec|
  spec.name          = 'cats'
  spec.version       = Cats::VERSION
  spec.authors       = ['Nicolas McCurdy']
  spec.email         = ['thenickperson@gmail.com']
  spec.description   = 'A library/tool that does a small number of cat-related
                       tasks.'
  spec.summary       = 'A library/tool that does a small number of cat-related
                       tasks.'
  spec.homepage      = 'https://github.com/nicolasmccurdy/cats'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thor', '~> 0.18'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'yard', '~> 0.9.11'
  spec.add_development_dependency 'rdoc', '~> 4.0'
  spec.add_development_dependency 'simplecov', '~> 0.7'
end
