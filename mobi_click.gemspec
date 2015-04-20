# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mobi_click/version'

Gem::Specification.new do |spec|
  spec.name          = "mobi_click"
  spec.version       = MobiClick::VERSION
  spec.authors       = ["Jeff Morgan", "Sreepad Bhagwat"]
  spec.email         = ["jeff.morgan@leandog.com", "bhsree@yahoo.com"]
  spec.summary       = %q{Page Object like DSL for testing mobile applications.}
  spec.description   = %q{Page Object like DSL for testing mobile applicaitons.}
  spec.homepage      = "http://github.com/cheezy/mobi_click"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'appium_lib', '>= 6.0'
  spec.add_dependency 'page_navigation', '>= 0.9'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'cucumber', '>= 1.3.0'
  spec.add_development_dependency "rake", "~> 10.0"
end
