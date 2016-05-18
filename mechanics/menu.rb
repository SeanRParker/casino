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
      puts "3) Craps Jr."
      puts "4) Roulette"
      puts "5) Guess Your Luck"
      puts "6) Cup Game"
      puts "7) Quit, before you lose more."
      game_selection = gets.to_i
      case game_selection
      when 1
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Blackjack.blackjack(user_profile)
        # Mechanics::Blackjack.card_selection(user_profile)
        # Mechanics::Blackjack.card_output(user_profile)
        # Mechanics::Blackjack.calc(user_profile)
        # Mechanics::Blackjack.twenty_one(user_profile)
        # Mechanics::Blackjack.dealer_hand(user_profile)
        # Mechanics::Blackjack.play_again(user_profile)
      when 2
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::High_low.turn(user_profile)
      when 3
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Craps_jr.roll(user_profile)
      when 4
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Roulette.spin(user_profile)
      when 5
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Guess_luck.luck(user_profile)
      when 6
        puts "Welcome to the cup game!"
        Mechanics::Cup_game.new
        Mechanics::Wager::take_bid(user_profile)
        Mechanics::Cup_game::shuffle_cups(user_profile)
      when 7
        exit(0)
      else
        "Bad command. Please enter 1-8"
        self.main_menu(user_profile)
      end
    end

  end
end
