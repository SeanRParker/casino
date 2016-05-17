module Mechanics
  class Menu
    attr_accessor :user_profile, :total

    def self.main_menu(user_profile)
      puts "Welcome to the casino #{user_profile.user}!"

      puts "Your balance is: #{user_profile.money}"
      puts "What would you like to play:"
      puts "--- GAME MENU ---"
      puts "1) Black Jack"
      puts "2) High or low"
      puts "3) Slots"
      puts "4) Craps Jr."
      puts "5) Roulette"
      puts "6) Guess Your Luck"
      puts "7) Cup Game"
      puts "8) Quit, before you lose more."
      game_selection = gets.to_i
      case game_selection
      when 1
        puts "Black Jack!"
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Cards::blackjack_mech(user_profile)
      when 2
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::High_low.turn(user_profile)
      when 3
        puts "Let's play slots!"
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::slots(user_profile)
      when 4
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Craps_jr.roll(user_profile)
      when 5
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Roulette.spin(user_profile)
      when 6
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Guess_luck.luck(user_profile)
      when 7
        puts "Welcome to the cup game!"
        Mechanics::Cup_game.new
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Cup_game::shuffle_cups(user_profile)
      when 8
        exit(0)
      else
        "Bad command. Please enter 1-8"
        self.main_menu(user_profile)
      end
    end

  end
end
