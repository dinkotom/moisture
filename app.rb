require 'sinatra'
require_relative 'model'

get '/' do
  # use the views/index.erb file
  @measurements = Measurement.all
  erb :index
end

get '/agent' do
  # use the views/agent.erb file
  erb :agent
end

post '/' do

end