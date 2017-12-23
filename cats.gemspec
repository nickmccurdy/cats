lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cats/version'

Gem::Specification.new do |spec|
  spec.name          = 'cats'
  spec.version       = Cats::VERSION
  spec.authors       = ['Nick McCurdy']
  spec.email         = ['nick@nickmccurdy.com']

  spec.description   = 'A library/tool that does a small number of cat-related
                       tasks.'
  spec.summary       = 'A library/tool that does a small number of cat-related
                       tasks.'
  spec.homepage      = 'https://github.com/nickmccurdy/cats'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thor', '~> 0.18'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rdoc', '~> 4.0'
  spec.add_development_dependency 'simplecov', '~> 0.7'
  spec.add_development_dependency 'yard', '~> 0.9.11'
end
