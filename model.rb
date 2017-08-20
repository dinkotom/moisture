# encoding: UTF-8

# case
#   when ENV['RACK_ENV'] == 'test'
#     $logger = Logger.new('/dev/null')
#     DataMapper::setup(:default, 'sqlite3::memory:')
#   when ENV['OPENSHIFT_LOGIN'] == 'tomas.dinkov@gmail.com'
    $logger = Logger.new('application.log')
    DataMapper::Logger.new('sql.log', :debug)
    DataMapper::setup(:default, "#{ENV['OPENSHIFT_MYSQL_DB_URL']}/moisture")
  # else
  #   $logger = Logger.new('application.log')
  #   DataMapper::Logger.new('sql.log', :debug)
  #   DataMapper::setup(:default, 'mysql://bezplenky:SalvatorDali01@localhost/bezplenky')
# end

class Measurement
  include DataMapper::Resource
  property :id, Serial
  property :time, DateTime
  property :temperature, Float
  property :relative_humidity, Float
  property :dew_point, Float
  property :comment, Text
end

DataMapper::Model.raise_on_save_failure = true
DataMapper.finalize.auto_upgrade!
