# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yahoojp/version'

Gem::Specification.new do |spec|
  spec.name          = "yahoojp-api"
  spec.version       = Yahoojp::VERSION
  spec.authors       = ["Kyohei Hamada"]
  spec.email         = ["kyohei.hamada@gmail.com"]
  spec.summary       = %q{Yahoo jp api client, written in Ruby}
  spec.description   = %q{Yahoo jp api client, written in Ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency "faraday", "~> 0.9"
  spec.add_development_dependency "pry"
end
