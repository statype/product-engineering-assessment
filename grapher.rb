require "sinatra"
require "sinatra/reloader"

require "apexcharts"

require "better_errors"

require_relative "lib/generators"

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path("..", __FILE__)
end

get "/" do
  @daily_activity = Generators.uniformly_random_array(40)
  @increasing = Generators.linearly_increasing_series_with_random_noise

  erb :index
end
