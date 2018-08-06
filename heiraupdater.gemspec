# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heiraupdater/version'

Gem::Specification.new do |spec|
  spec.name          = "heiraupdater"
  spec.version       = Heiraupdater::VERSION
  spec.authors       = ["Noel Sharpe"]
  spec.email         = ["noels@users.noreply.github.com"]
  spec.summary       = %q{Updates hiera puppet variables stored in yaml file.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", ">= 0.0"
  spec.add_development_dependency('rdoc', "5.1.0")
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rake')
  spec.add_dependency('methadone', '~> 1.8.0')
end
