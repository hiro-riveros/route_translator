# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'route_translator/version'

Gem::Specification.new do |spec|
  spec.name          = 'route_translator'
  spec.version       = RouteTranslator::VERSION
  spec.authors       = ['Geremia Taglialatela', 'Enric Lluelles', 'Raul Murciano']
  spec.email         = ['tagliala.dev@gmail.com', 'enric@lluell.es']

  spec.summary       = 'Translate your Rails routes in a simple manner'
  spec.description   = 'Translates the Rails routes of your application into the languages defined in your locale files'
  spec.homepage      = 'https://github.com/enriclluelles/route_translator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z -- {CHANGELOG.md,LICENSE,README.md,lib}`.split("\x0")
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 2.3'

  spec.add_runtime_dependency 'actionpack', '>= 5.0.0.1', '< 6.1'
  spec.add_runtime_dependency 'activesupport', '>= 5.0.0.1', '< 6.1'

  spec.add_development_dependency 'appraisal', '~> 2.2'
  spec.add_development_dependency 'byebug', '>= 10.0', '< 12'
  spec.add_development_dependency 'coveralls_reborn', '~> 0.12.0'
  spec.add_development_dependency 'minitest', '~> 5.11'
  spec.add_development_dependency 'rails', '>= 5.0.0.1', '< 6.1'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rubocop', '~> 0.72.0'
  spec.add_development_dependency 'rubocop-performance', '~> 1.3'
  spec.add_development_dependency 'rubocop-rails', '~> 2.1'
  spec.add_development_dependency 'simplecov', '~> 0.16.1'
end
