require_relative 'lib/legion/extensions/ping/version'

Gem::Specification.new do |spec|
  spec.name          = 'lex-ping'
  spec.version       = Legion::Extensions::Ping::VERSION
  spec.authors       = ['Esity']
  spec.email         = ['matthewdiverson@gmail.com']

  spec.summary       = 'LEX::Slack'
  spec.description   = 'Connects Legion to Slack'
  spec.homepage      = 'https://bitbucket.org/legion-io/lex-ping'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://bitbucket.org/legion-io/lex-ping/src'
  spec.metadata['documentation_uri'] = 'https://legionio.atlassian.net/wiki/spaces/LEX/pages/631373895'
  spec.metadata['changelog_uri'] = 'https://legionio.atlassian.net/wiki/spaces/LEX/pages/631504993'
  spec.metadata['bug_tracker_uri'] = 'https://bitbucket.org/legion-io/lex-ping/issues'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'

  spec.add_dependency 'multi_json'
  spec.add_dependency 'net-ping'
end
