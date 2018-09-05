require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require 'pry'

class BoatTest < Minitest::Test

  def test_instance_exists
    kayak = Boat.new(:kayak, 20)
    assert_instance_of Boat, kayak
  end

  def test_it_has_type
    kayak = Boat.new(:kayak, 20)
    assert_equal :kayak, kayak.type
  end

  def test_it_has_price_per_hour
    kayak = Boat.new(:kayak, 20)
    assert_equal 20, kayak.price_per_hour
  end

  def test_hours_rented_is_initialized_to_zero
    kayak = Boat.new(:kayak, 20)
    assert_equal 0, kayak.hours_rented
  end

end
