require "sinatra"
require "sinatra/reloader"

require "apexcharts"

get "/" do
  @daily_activity = Array.new(40) { rand(1...9) }
  @increasing = 1.upto(40).map { |v| v + rand(1...5) }

  erb :index
end
