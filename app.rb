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
  temperature = params['temperature']
  relative_humidity = params['relative_humidity']
  dew_point = params['dew_point']
  comment = params['comment']

  Measurement.create(
      :time => DateTime.now,
      :temperature => temperature,
      :relative_humidity => relative_humidity,
      :dew_point => dew_point,
      :comment => comment
  )
end