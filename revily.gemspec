# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'revily/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "revily"
  spec.version       = Revily::CLI::VERSION

  spec.authors       = ["Dan Ryan"]
  spec.email         = ["hi@revi.ly"]
  spec.description   = %q{Revily command-line utility}
  spec.summary       = %q{A command-line application to interact with the revi.ly service or self-hosted Revily setup.}
  spec.homepage      = "https://revi.ly"
  spec.license       = "MIT"

  spec.files = %x{ git ls-files }.split("\n").select { |d| d =~ %r{^(LICENSE|README|CONTRIBUTING|CHANGELOG|bin/|ext/|lib/|spec/|test/)} }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version     = '>= 1.9.3'
  spec.required_rubygems_version = '>= 1.3.6'

  spec.add_dependency 'clamp', '~> 0.6'
  spec.add_dependency 'revily-client'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'guard-rspec', '~> 3.0'
  spec.add_development_dependency 'guard-spork'
  spec.add_development_dependency 'json_spec', '~> 1.1'
  spec.add_development_dependency 'libnotify'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rb-fsevent'
  spec.add_development_dependency 'rb-inotify'
  spec.add_development_dependency 'rspec', '~> 2.14'
  spec.add_development_dependency 'ruby_gntp'
  spec.add_development_dependency 'webmock', '~> 1.13.0'
  spec.add_development_dependency 'vcr', '~> 2.5'
end
