# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chinese/holidays/version'

Gem::Specification.new do |spec|
  spec.name          = "chinese-holidays"
  spec.version       = Chinese::Holidays::VERSION
  spec.authors       = ["bastengao"]
  spec.email         = ["bastengao@gmail.com"]

  spec.summary       = %q{Chinese holidays}
  spec.description   = %q{Chinese holidays}
  spec.homepage      = "https://github.com/bastengao/chinese-holidays-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", [">= 1.12", "< 3.0"]
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
