source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'

gem 'jbuilder', '~> 2.5'
gem 'bcrypt', platforms: :ruby

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem "factory_bot_rails","~> 4.0" 
  gem 'rails-controller-testing'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'spring-commands-rspec'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'will_paginate-bootstrap'
gem 'jquery-ui-rails'

gem 'faker'

gem 'bootstrap-datepicker-rails'

gem "font-awesome-rails"

gem 'bootstrap-sass'
gem 'rails-i18n', '~> 5.0.0' # For 5.0.x
gem 'nokogiri'
gem 'pg','~> 0.21.0'

gem 'simple_form'
gem 'devise'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'


group :development, :test do
  gem 'rspec-rails', '~> 3.7'
  gem 'shoulda-matchers', '~> 3.1'
end