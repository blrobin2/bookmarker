# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'active_model_serializers', '~> 0.8.4'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'doorkeeper', '~> 5.6', '>= 5.6.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors'
gem 'rails', '~> 6.1.7', '>= 6.1.7.1'
gem 'swagger-blocks', '~> 3.0'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 5.2', '>= 5.2.0'
  gem 'rspec-rails', '~> 4.1', '>= 4.1.2'
  gem 'rubocop', '~> 0.85.1', require: false
  gem 'rubocop-rspec', require: false
end

group :test do
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.3'
end

group :development do
  gem 'listen', '~> 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
