
# HOME: https://github.com/bkeepers/dotenv
# Loads environment variables from `.env`.
# dotenv is initialized in your Rails app 
# during the before_configuration callback, 
# which is fired when the Application constant is defined 
# in config/application.rb with 
# class Application < Rails::Application.
# gem 'dotenv-rails', :require => 'dotenv/rails-now', :groups => [:development, :test]

source 'https://rubygems.org'

ruby '2.2.2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# HOME: https://github.com/heroku/rails_12factor
# This gem enables serving assets in production and 
# setting your logger to standard out, both of which are required to run a Rails 4 application on a twelve-factor provider.
gem 'rails_12factor', group: :production

# HOME: https://github.com/plataformatec/devise
# Flexible authentication solution for Rails with Warden
gem 'devise'

# HOME: http://github.com/michaeldv/awesome_print
# Pretty print your Ruby objects with style -- in full color and with proper indentation
gem 'awesome_print'

# HOME: https://github.com/mperham/sidekiq
# Simple, efficient background processing for Ruby
gem 'sidekiq' #, '~> 3.1.3'

# HOME: https://github.com/mhfs/devise-async
# Send Devise's emails in background. 
# Supports Resque, Sidekiq, Delayed::Job and QueueClassic.
gem 'devise-async'

# Puma web server
gem 'puma'


# HOME: https://github.com/twbs/bootstrap-sass
# Official Sass port of Bootstrap 2 and 3. 
gem 'bootstrap-sass' #, '~> 3.3.6'

gem 'foreman'

# Home: https://github.com/plataformatec/simple_form
# Forms made easy for Rails! 
# It's tied to a simple DSL, with no opinion on markup.
gem 'simple_form'


# Home: https://github.com/stripe/stripe-ruby
# The Stripe Ruby bindings provide a small SDK 
# for convenient access to the Stripe API 
# from applications written in the 
# Ruby language.
gem 'stripe'

# HOME: https://github.com/integrallis/stripe_event
# Stripe webhook integration for Rails applications.

gem 'stripe_event'

#  Database multi-tenancy for Rack (and Rails) applications
#  HOME: https://github.com/influitive/apartment
gem 'apartment'

# HOME: https://github.com/influitive/apartment-sidekiq
# Sidekiq support for the Apartment Gem
gem 'apartment-sidekiq'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  # gem 'debugger'
  #
  # HOME: https://github.com/deivid-rodriguez/byebug
  # Replacing debugger due to incompatibility with ruby 2.x
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console' #, '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Ultrahook
  gem 'ultrahook'
end

