module Mechanics
   module Roulette

       def self.spin(user_profile)
        puts '--------Welcome to Roulette-------'
        puts '''
  _____             _      _   _
 |  __ \           | |    | | | |
 | |__) |___  _   _| | ___| |_| |_ ___
 |  _  // _ \| | | | |/ _ \ __| __/ _ \
 | | \ \ (_) | |_| | |  __/ |_| ||  __/
 |_|  \_\___/ \__,_|_|\___|\__|\__\___|
        '''
        puts "What number do you want to bet on (1..30)?"
        bet_number = gets.strip.to_i
        puts "What color do you want to bet on (Red or Black)?"
        bet_color = gets.strip.downcase

          @color = %w(red black)

           spin = []
           spin << rand(1..30) << @color.sample
           puts spin

          if spin == bet_color && bet_number
            puts "you win"
          else
            puts "You Lost"
          end

          puts 'Do you want to play again? (y/n)'
          user_input = gets.strip.downcase
          if user_input == 'y'
            Mechanics::Wager::take_bid(user_profile)
                self.spin(user_profile)
          else
              #link back to the main menu but for now exit
             Mechanics::Menu::main_menu(user_profile)
          end

       end

   end
end