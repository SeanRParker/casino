module Mechanics
  class Menu
    attr_accessor :user_profile, :total

    def self.main_menu(user_profile)
      puts "Welcome to the casino #{user_profile.user}!"

      puts "Your balance is: #{user_profile.money}"
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
        puts "Black Jack!"
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Cards::blackjack_mech
      when 2
        put "Loading Over / Under"
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::over_under
      when 3
        puts "Let's play slots!"
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::slots
      when 4
        puts "Welcome to the cup game!"
        Mechanics::Cup_game.new
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Cup_game::shuffle_cups(user_profile)
      when 5
        exit(0)
      else
        "Bad command. Please enter 1-4"
      end
    end

  end
end
