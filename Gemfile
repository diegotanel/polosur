source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem 'gravatar_image_tag'
gem 'rails-i18n'
gem 'responders'
gem 'money'
gem 'money-rails', "0.7.0"#, :git => 'git://github.com/RubyMoney/money-rails.git'
gem 'hirb-unicode'
gem 'travis-lint'
# gem 'schema_plus'
gem "pg"

group :production do
  # gems specifically for Heroku go here
  # gem "pg"
end

group :development do
  gem 'htmlbeautifier'
  gem 'rspec-rails'
  gem 'annotate'
  gem 'faker'
  gem 'sqlite3', '1.3.6'
end

group :test do
  gem 'rspec'
  gem 'webrat'
  gem "spork"
  gem 'factory_girl_rails', '1.0'
  gem 'database_cleaner'
  gem 'sqlite3', '1.3.6'
  gem 'simplecov', :require => false
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'consultart_user_management', :path => 'vendor/engines/consultart_user_management'
