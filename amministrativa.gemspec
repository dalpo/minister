$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "amministrativa/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "amministrativa"
  s.version     = Amministrativa::VERSION
  s.authors     = ["Andrea Dal Ponte"]
  s.email       = ["info@andreadalponte.com"]
  s.license     = "MIT"
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Amministrativa."
  s.description = <<-DESCRIPTION
  TODO: Description of Amministrativa."
DESCRIPTION

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2"
end
