# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sort_collections/version'

Gem::Specification.new do |spec|
  spec.name          = "sort_collections"
  spec.version       = SortCollections::VERSION
  spec.authors       = ["Dylan Deng"]
  spec.email         = ["dylan@beansmile.com"]
  spec.description   = "To sort a array that the element is `Hash`"
  spec.summary       = "To sort a array that the element is `Hash`"
  spec.homepage      = "https://github.com/lanrion/sort_collections"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 2.6"

end
