$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'minister/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'minister'
  s.version     = Minister::VERSION
  s.authors     = ['Andrea Dal Ponte']
  s.email       = ['info@andreadalponte.com']
  s.license     = 'MIT'
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of Minister.'
  s.description = <<-DESCRIPTION
  TODO: Description of Minister.
DESCRIPTION

  s.files = Dir[
    '{app,config,db,lib}/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.rdoc'
  ]

  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '~> 4.2'
  s.add_dependency 'responders'
  s.add_dependency 'kaminari'
  s.add_dependency 'ransack'
  s.add_dependency 'slim'
end
