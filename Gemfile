# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Web frameworks
gem 'sinatra', '~> 3.0'
gem 'sinatra-contrib', '~> 3.0' # for sinatra/reloader
gem 'thin', '~> 1.8', '>= 1.8.1'

# Charting libraries
gem "apexcharts", "~> 0.2"

# Fake Data
gem 'faker', '~> 3.0'

group :development, :test do
  gem "standard", "~> 1.17"
  gem "pry", "~> 0.14.1"
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  gem 'binding_of_caller', '~> 1.0'

  gem 'rake', '~> 13.0', '>= 13.0.6'
end

group :test do
  gem 'minitest', '~> 5.8', '>= 5.8.4'
  gem 'rspec', '~> 3.12'
end
