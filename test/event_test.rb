require 'minitest/autorun'
require 'minitest/pride'
require './lib/event.rb'

class EventTest < Minitest::Test
  def test_it_exists
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    assert_instance_of Event, event
  end

  def test_it_if_have_attributes
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    assert_equal "Polo", event.event_name
    assert_equal [24, 30, 18, 20, 41], event.ages
  end

  def test_it_if_it_have_a_name
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    assert_equal "Polo", event.name
  end

  def test_it_if_it_have_ages
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    assert_equal [24, 30, 18, 20, 41], event.age
  end

  def test_it_if_have_a_max_age
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    assert_equal 41, event.max_age
  end

  def test_it_if_have_a_min_age
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    assert_equal 18, event.min_age
  end

  def test_it_if_it_have_average_age
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    assert_equal 26.6, event.average_age
  end

  def test_it_if_it_have_a_standard_deviation_age
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    assert_equal 8.28, event.standard_deviation_age
  end

  def test_it_if_it_can_sum_integers
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    ages = [24, 30, 18, 20, 41]
    assert_equal 133, event.sum_of_integers(ages)
  end

  def test_it_if_it_can_average_numbers
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    sum = 133
    length = 5
    assert_equal 26.6, event.average_number(sum, length)
  end

  def test_it_if_it_can_subtract_numbers_by_index
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    average = 26.6
    array = [24, 30, 18, 20, 41]
    assert_equal [-2.6, 3.4, -8.6, -6.6, 14.4],
    event.subtract_index(array, average)
  end

  def test_it_if_it_can_square_numbers_by_index
    event = Event.new("Polo", [24, 30, 18, 20, 41])
    array = [-2.6, 3.4, -8.6, -6.6, 14.4]
    assert_equal [6.76, 11.56, 73.96, 43.56, 207.36],
    event.square_numbers(array)
  end

end
