# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kienaide/version'

Gem::Specification.new do |spec|
  spec.name          = "kienaide"
  spec.version       = Kienaide::VERSION
  spec.authors       = ["koshikawa"]
  spec.email         = ["koshikawa@ppworks.jp"]
  spec.summary       = %q{Protect your record}
  spec.description   = %q{Protect your record easily}
  spec.homepage      = "http://github.com/ppworks/kienaide"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ["> 3.0", "< 5.0"]
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "sqlite3", "~> 1.0"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
