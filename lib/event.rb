# require 'pry'
#require './lib/standard_diviation'

class Event
    attr_reader :event_name,
                :ages
  def initialize(event_name, ages)
    @event_name = event_name
    @ages = ages
  end

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

  def standard_deviation_age
    #step 1: sum of all the integers method
    sum_all_integers = sum_of_integers(ages)

    #step 2: find the number of integer inside array
    length = arrays_length(ages)

    #step 3: average number of all the elements in the array
    average = average_number(sum_all_integers, length)

    #step 4:subtract each integer in the index
    subtract = subtract_index(ages, average)

    #step 5: square each index value
    square = square_numbers(subtract)

     # step 6
    sum_square_numbers = square.sum
    # puts sum_square_numbers

    # step 7
    standart = sum_square_numbers / length

    # step 8
     Math.sqrt(standart).round(2)
  end

  # step 1
  def sum_of_integers(array)
    sum = 0
    array.each do |number|
      sum += number
    end
   sum
  end

  # step 2
  def arrays_length(array)
    number_of_integers = array.length
  end

  # step 3
  def average_number(sum, length)
     (sum.to_f / length.to_f).round(2)
  end

  #step 4
  def subtract_index(array, average)
    average_sub_integer = []

    array.each do |index|
      average_sub_integer << (index - average).round(2)
    end
    average_sub_integer
  end

  # step 5
  def square_numbers(array)
    square_number = []
    array.each do |square|
      square_number << (square ** 2).round(2)
    end
    square_number
  end

end
