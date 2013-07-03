$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "consultart_user_management/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "consultart_user_management"
  s.version     = ConsultartUserManagement::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ConsultartUserManagement."
  s.description = "TODO: Description of ConsultartUserManagement."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"
  s.add_dependency 'gravatar_image_tag'
  s.add_dependency 'rails-i18n'
  s.add_dependency 'responders'
  s.add_dependency 'bcrypt-ruby'
  s.add_dependency 'will_paginate', '3.0.3'
  s.add_dependency 'gravatar_image_tag', '1.1.3'

  s.add_development_dependency "rails", "~> 3.2.8"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails', "2.11"
  s.add_development_dependency 'webrat'
  s.add_development_dependency 'factory_girl_rails', '1.0'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'will_paginate', '3.0.3'
  s.add_development_dependency 'gravatar_image_tag', '1.1.3'
end
