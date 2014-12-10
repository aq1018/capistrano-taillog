# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/taillog/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-taillog"
  spec.version       = Capistrano::Taillog::VERSION
  spec.authors       = ["Aaron Qian"]
  spec.email         = ["aq1018@gmail.com"]
  spec.summary       = %q{Tail logs easily with cap logs:tail}
  spec.description   = %q{Capistrano plugin to allow tailing remote logs.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
