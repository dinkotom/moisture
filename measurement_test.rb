require 'bundler'

Bundler.require
ENV['RACK_ENV'] = 'test'
require_relative('model')

class MeasurementTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_dew_point_calculation
    measurement = Measurement.new
    measurement.temperature = 22.2
    measurement.relative_humidity = 70
    assert_equal(16.6, measurement.calculate_dew_point)
  end
end