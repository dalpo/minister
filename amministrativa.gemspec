$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "amministrativa/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "amministrativa"
  s.version     = Amministrativa::VERSION
  s.authors     = ["Andrea Dal Ponte"]
  s.email       = ["info@andreadalponte.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Amministrativa."
  s.description = "TODO: Description of Amministrativa."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "sqlite3"
end
