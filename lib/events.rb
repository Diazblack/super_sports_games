require 'pry'
require './standard_diviation'

class Event
    attr_reader :event_name,
                :ages
  def initialize(event_name, ages)
    @event_name = event_name
    @ages = ages
  end
  #method getter for name

  def name
     event_name
  end

  def age
    ages
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    sum = ages.sum
    length = ages.length
    average_number(sum, length)
  end

  def standard_diviation_age
    return standard_diviation(ages)
  end

end

event = Event.new("Polo", [24, 30, 18, 20, 41])


binding.pry
