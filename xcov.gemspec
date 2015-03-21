# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xcov/version'

Gem::Specification.new do |spec|
  spec.name        = 'xcov'
  spec.version     = Xcov::VERSION
  spec.authors     = ['Julian Grosshauser']
  spec.email       = ['julian@juliangrosshauser.com']

  spec.summary     = 'Create code coverage reports for your Xcode projects'
  spec.description = 'xcode creates code coverage reports for Xcode projects'
  spec.homepage    = 'https://github.com/juliangrosshauser/xcov'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_runtime_dependency 'thor', ['~> 0.19.1']

  spec.add_development_dependency 'bundler', ['~> 1.9']
end
