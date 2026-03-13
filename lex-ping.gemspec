# frozen_string_literal: true

require_relative 'lib/legion/extensions/ping/version'

Gem::Specification.new do |spec|
  spec.name          = 'lex-ping'
  spec.version       = Legion::Extensions::Ping::VERSION
  spec.authors       = ['Esity']
  spec.email         = ['matthewdiverson@gmail.com']

  spec.summary       = 'LEX::Slack'
  spec.description   = 'Connects Legion to Slack'
  spec.homepage      = 'https://github.com/LegionIO/lex-ping'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.4'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/LegionIO/lex-ping'
  spec.metadata['documentation_uri'] = 'https://github.com/LegionIO/lex-ping'
  spec.metadata['changelog_uri'] = 'https://github.com/LegionIO/lex-ping'
  spec.metadata['bug_tracker_uri'] = 'https://github.com/LegionIO/lex-ping/issues'
  spec.metadata['rubygems_mfa_required'] = 'true'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'

  spec.add_dependency 'multi_json'
  spec.add_dependency 'net-ping'
end
