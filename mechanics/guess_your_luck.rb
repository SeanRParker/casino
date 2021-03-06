module Mechanics
   module Guess_luck
      attr_accessor :result

      def initialize
          @result = result
      end

      def self.luck(user_profile)
        puts '-------Welcome to Guess your Luck!-------'
        puts %q"
   _____                      __     __                _                _      _
  / ____|                     \ \   / /               | |              | |    | |
 | |  __ _   _  ___  ___ ___   \ \_/ /__  _   _ _ __  | |    _   _  ___| | __ | |
 | | |_ | | | |/ _ \/ __/ __|   \   / _ \| | | | '__| | |   | | | |/ __| |/ / | |
 | |__| | |_| |  __/\__ \__ \    | | (_) | |_| | |    | |___| |_| | (__|   <  |_|
  \_____|\__,_|\___||___/___/    |_|\___/ \__,_|_|    |______\__,_|\___|_|\_\ (_)

        "
        puts "A random number has been generated between 1 to 100"
        puts "Each guess will cost you money."
        puts "If you guess the number right, you will get a pay out."

        # num_array = []
        num = rand(1..100)

        # num_array << num
        puts "What number do you guess?"

        guess = gets.to_i


        if guess > num
          puts "The number is too high."
          result = false
          Mechanics::Wager::adjust_balance(user_profile, result)
        elsif guess < num
          puts "The number is too low."
          result = false
          Mechanics::Wager::adjust_balance(user_profile, result)
        elsif guess == num
          puts 'you win'
          result = true
          Mechanics::Wager::adjust_balance(user_profile, result)
        end

        puts 'Do you want to play again? (y/n)'
          user_input = gets.strip.downcase
          if user_input == 'y'
            Mechanics::Wager::take_bid(user_profile)
                self.luck(user_profile)
          else
              #link back to the main menu but for now exit
             Mechanics::Menu::main_menu(user_profile)
          end

     end

   end
end
