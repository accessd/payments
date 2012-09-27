$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "payments/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "payments"
  s.version     = Payments::VERSION
  s.authors     = ["divineforest"]
  # s.email       = ["TODO: Your email"]
  # s.homepage    = "TODO"
  s.summary     = "MVC solution for payments in rails"
  # s.description = "TODO: Description of Payments."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.1"
  s.add_dependency "state_machine-audit_trail"
  s.add_dependency "activemerchant"
  s.add_dependency "devise"

  s.add_development_dependency "sqlite3"
end
