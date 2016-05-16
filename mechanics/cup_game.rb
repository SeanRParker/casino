# Collect user wager.
def take_bid
  puts "How much money would you like to lose today?"
  @wager = gets.to_f
  @total = 50;
  if @wager > @total
    puts "You can't bid more than you have."
    take_bid
  else
    puts "You wagered #{@wager}"
  end
end

take_bid

# randomize which ball the cup is in.
puts "Shuffling cups..."
cups = ["Left", "Middle", "Right"]
shuffled_ball = cups.shuffle[0].downcase
# Ask user which cup they think the ball is in.
puts "Which cup is the ball in?"
puts "Left"
puts "Middle"
puts "Right"
cup_guess = gets.strip.downcase
if shuffled_ball == cup_guess
  puts "You win!"
  @total = @total + @wager
elsif shuffled_ball != cup_guess
  puts "You lost!"
  @total = @total - @wager
end

puts "Your balance is now #{@total}"



# if it matches give the user their money. Otherwise, take it away!!!
