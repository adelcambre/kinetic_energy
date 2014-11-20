# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kinetic_energy/version'

Gem::Specification.new do |spec|
  spec.name          = "kinetic_energy"
  spec.version       = KineticEnergy::VERSION
  spec.authors       = ["Andy Delcambre"]
  spec.email         = ["adelcambre@gmail.com"]
  spec.summary       = %q{Calculate power based on TCX files for Kurt Kinetic trainers.}
  spec.homepage      = "https://github.com/adelcambre/kinetic_energy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri", "~> 1.6"
end
