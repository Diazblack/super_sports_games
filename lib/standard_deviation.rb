# step 0
ages = [24, 30, 18, 20, 41]
# step 1
sum_of_ages = 0

ages.each do |number|
  sum_of_ages += number

end
# step 2
number_of_integers = ages.length

# step 3
average_number = (sum_of_ages.to_f / number_of_integers.to_f).round(2)


#step 4
average_sub_integer = []

ages.each do |index|
  average_sub_integer << (index - average_number).round(2)

end
# step 5
square_numbers = []

average_sub_integer.each do |square|
  square_numbers << (square ** 2).round(2)
end

 # step 6
sum_square_numbers = square_numbers.sum
# puts sum_square_numbers

# step 7
standart = sum_square_numbers / number_of_integers

# step 8
standart_diviation = Math.sqrt(standart).round(2)

puts standart_diviation
