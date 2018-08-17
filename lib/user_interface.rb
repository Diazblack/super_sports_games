require './lib/games'
require './lib/event'

puts "Welcome to Super Sports Games registation page."
loop do
  puts "If you have any questions please type help or h."
  user_input = gets.chomp

  if user_input.upcase.rstrip == "HELP" || user_input.upcase.rstrip == "H"
      puts "Type 'quit' to exit the program."
      puts "Type 'game' to add a new game."
      puts "Type 'summary' to view  a summary of the events."

  elsif user_input.upcase.rstrip == "Q" || user_input.upcase.rstrip == "QUIT"
    break

  elsif user_input.upcase.rstrip == "G" || user_input.upcase.rstrip == "GAME"
    puts "Type the year of the event."
    year = gets.chomp.to_i
    game = Games.new(year)
    puts "Please Type what event."
    event = gets.chomp
    ages = []
    ages_of_competitors = 0
      loop do
          puts "Please Type the ages of the competitors."
          puts "Type 'q' when you are done."
          ages_of_competitors = gets.chomp
          if ages_of_competitors.upcase.rstrip == "Q"
            break
          else
            ages << ages_of_competitors.to_i
          end
      end
    game.add_event(event)
    new_event = Event.new(event, ages)
    puts "Game successfully submitted!"
  elsif user_input.upcase.rstrip == "S" || user_input.upcase.rstrip == "SUMMARY"
  break
  

  end
end
