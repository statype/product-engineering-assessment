# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# Web frameworks
gem 'sinatra', '~> 2.2', '>= 2.2.2'
gem 'sinatra-contrib', '~> 2.2', '>= 2.2.2' # for sinatra/reloader
gem 'thin', '~> 1.8', '>= 1.8.1'

# Charting libraries
gem "apexcharts", "~> 0.2"

# Fake Data
gem 'faker', '~> 2.23'

group :development, :test do
  gem "standard", "~> 1.16"
  gem "pry", "~> 0.14.1"
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  gem 'binding_of_caller', '~> 1.0'
end
