source 'https://rubygems.org'

ruby '2.3.0'

gem 'dotenv-rails', :groups => [:development, :test]
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'

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
gem 'simplecov', :require => false, :group => :test
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'
# # bundle exec rake doc:rails generates the API under doc/api.
# gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'autoprefixer-rails'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'bootstrap_form'
gem 'Bootstrap-Image-Gallery-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem "awesome_print"
  gem "bullet"
  gem "factory_girl_rails"
  gem "pry-byebug"
  gem "pry-rails"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'better_errors'
  gem 'binding_of_caller'
end

gem 'carrierwave'
gem 'fog', require: 'fog/aws'
gem 'mini_magick'

gem 'devise'
gem 'activeadmin', github: 'activeadmin'
gem "newrelic_rpm", ">= 3.9.8"
gem "simple_form"
gem "sprockets", ">= 3.0.0"
gem "sprockets-es6"
gem 'trix'
gem 'friendly_id', '~> 5.1.0'
gem 'rails_12factor'

group :test do
  gem "capybara"
  gem "database_cleaner"
  gem "shoulda-matchers"
end