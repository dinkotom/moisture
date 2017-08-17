require 'sinatra'
require_relative 'model'

ENV['TZ']='Europe/Prague'

get '/' do
  erb :index
end

get '/measurements' do
  @measurements = Measurement.all(:order => [ :time.desc ])
  erb :measurements
end

get '/line_chart' do
  @measurements = Measurement.all(:limit => 100, :order => [ :time.desc ]).sort { |x,y| y.time <=> x.time }
  erb :line_chart
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