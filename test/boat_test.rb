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

  def test_it_has_hours_rented
    kayak = Boat.new(:kayak, 20)
    assert_equal 0, kayak.hours_rented
  end

  def test_it_adds_second_hour
    kayak = Boat.new(:kayak, 20)
    kayak.add_hour
    assert_equal 2, kayak.add_hour
  end

  def test_it_adds_third_hour
    kayak = Boat.new(:kayak, 20)
    kayak.add_hour
    kayak.add_hour
    assert_equal 3, kayak.add_hour
  end

  def test_hours_rented_has_total_hours
    kayak = Boat.new(:kayak, 20)
    kayak.add_hour
    kayak.add_hour
    kayak.add_hour
    assert_equal 3, kayak.hours_rented
  end
end
