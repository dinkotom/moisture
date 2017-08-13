$logger = Logger.new('application.log')
DataMapper::Logger.new('sql.log', :debug)
DataMapper::setup(:default, 'mysql://adminQcdfxJq:wCHYWLl3YEa4@127.3.119.2:3306/moisture')
# DataMapper::setup(:default, 'mysql://bezplenky:SalvatorDali01@localhost/bezplenky')

# encoding: UTF-8

class Measurement
  include DataMapper::Resource
  property :id, Serial
  property :time, DateTime
  property :temperature, Float
  property :relative_humidity, Float
  property :dew_point, Float
  property :comment, Text
end
