# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indicadores_cl/version'

Gem::Specification.new do |spec|
  spec.name          = "indicadores_cl"
  spec.version       = IndicadoresCl::VERSION
  spec.authors       = ["Cristobal Castillo"]
  spec.email         = ["castillo85@gmail.com"]
  spec.description   = %q{Chilean financial indicators and currency conversion}
  spec.summary       = %q{Fetch current/past value of the most common financial indicators used in Chile}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "xml-simple"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "turn"

end
