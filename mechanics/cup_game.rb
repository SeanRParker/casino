module Mechanics
  class Cup_game
    attr_accessor :result
    # randomize which ball the cup is in.
    def initialize
      @result = result
    end
    def self.shuffle_cups(user_profile)

      puts "Shuffling cups..."
      cups = ["Left", "Middle", "Right"]
      shuffled_ball = cups.shuffle[0].downcase
      # Ask user which cup they think the ball is in.
      puts "Which cup is the ball in?"
      puts "Left"
      puts "Middle"
      puts "Right"
      cup_guess = gets.strip.downcase

      # Determines if user won
      if shuffled_ball == cup_guess
        puts "You win!"
        result = true
        # sends result to adjust_balance
        Mechanics::Wager::adjust_balance(user_profile, result)
      # Determines if user lost
      elsif shuffled_ball != cup_guess
        puts "You lost!"
        result = false
      # sends result to  adjust_balance
        Mechanics::Wager::adjust_balance(user_profile, result)
      end

      puts "Play again? (yes / no)"
      cups_again = gets.strip
      if cups_again == "yes"
        Mechanics::Wager::take_bid(user_profile)
        shuffle_cups(user_profile)
      else
        Mechanics::Menu::main_menu(user_profile)
      end

    #TODO play again? question set in a loop. "No" kicks them out of the loop.
    end
  end

    # if it matches give the user their money. Otherwise, take it away!!!
end

