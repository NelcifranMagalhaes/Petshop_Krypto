source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4.3'
# Use sqlite3 as the database for Active Record
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'

gem 'bcrypt', platforms: :ruby
gem 'jbuilder', '~> 2.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'shoulda-matchers'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen'
  gem 'spring-commands-rspec'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'jquery-ui-rails'
gem 'will_paginate-bootstrap'

gem 'faker'

gem 'bootstrap-datepicker-rails'

gem 'font-awesome-rails'
gem 'ransack'

gem 'bootstrap-sass'
gem 'nokogiri'
gem 'pg', '~> 0.21.0'
gem 'rails-i18n', '~> 5.0.0' # For 5.0.x

gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'
gem 'devise'
gem 'friendly_id', '~> 5.1.0'
gem 'simple_form'

gem 'bootsnap', require: false
