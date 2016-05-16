puts "Welcome to the casino #{user_profile}!"

puts "Your balance is: #{total}"
puts "What would you like to play:"
puts "--- GAME MENU ---"
puts "1) Black Jack"
puts "2) Over Under"
puts "3) Slots"
puts "4) Cup Game"
puts "5) Quit, before you lose more."
game_selection = gets.to_i
case game_selection
when 1
  puts = Mechanics::blackJack
when 2
  puts = Mechanics::over_under
when 3
  puts = Mechanics::slots
when 4
  puts = Mechanics::cup_game
when 5
  exit(0)
else
  "Bad command. Please enter 1-4"
end
