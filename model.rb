$logger = Logger.new('application.log')
DataMapper::Logger.new('sql.log', :debug)
DataMapper::setup(:default, 'mysql://adminQcdfxJq:wCHYWLl3YEa4@127.3.119.2:3306/moisture')
# DataMapper::setup(:default, 'mysql://bezplenky:SalvatorDali01@localhost/bezplenky')