module Mechanics
   module High_low
        attr_accessor :result

        def initialize
          @result = result
        end

       def self.turn(user_profile)
        puts '-------Welcome to High or Low-------'
        puts %q"
  _    _ _       _                    _                     ___
 | |  | (_)     | |                  | |                   |__ \
 | |__| |_  __ _| |__     ___  _ __  | |     _____      __    ) |
 |  __  | |/ _` | '_ \   / _ \| '__| | |    / _ \ \ /\ / /   / /
 | |  | | | (_| | | | | | (_) | |    | |___| (_) \ V  V /   |_|
 |_|  |_|_|\__, |_| |_|  \___/|_|    |______\___/ \_/\_/    (_)
            __/ |
           |___/

        "


        puts 'Here is your number'
        @number = rand(1..10)
        @dealer = rand(1..10)

        puts @number

        puts "High or low?"
        bet_decision = gets.strip.downcase

          if bet_decision == 'high'
            puts @dealer
            if @number < @dealer
              puts 'you win'
              result = true
              Mechanics::Wager::adjust_balance(user_profile, result)
            else
              puts 'you lose'
              result = false
              Mechanics::Wager::adjust_balance(user_profile, result)
            end
          elsif bet_decision == 'low'
            puts @dealer
            if @number > @dealer
              puts 'you win'
              result = true
              Mechanics::Wager::adjust_balance(user_profile, result)
            else
              puts 'you lose'
              result = false
              Mechanics::Wager::adjust_balance(user_profile, result)
            end
          end

          puts 'Do you want to play again? (y/n)'
          user_input = gets.strip.downcase
          if user_input == 'y'
            Mechanics::Wager::take_bid(user_profile)
                self.turn(user_profile)
          else
              #link back to the main menu but for now exit
             Mechanics::Menu::main_menu(user_profile)
          end

       end

   end
end