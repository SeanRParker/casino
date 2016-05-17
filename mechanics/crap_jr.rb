
module Mechanics
    module Craps_jr
        def self.roll(user_profile)
          puts '--------Welcome to Craps Jr.!-------'
          puts %q(
   _____                            _
  / ____|                          | |
 | |     _ __ __ _ _ __  ___       | |_ __
 | |    | '__/ _` | '_ \/ __|  _   | | '__|
 | |____| | | (_| | |_) \__ \ | |__| | |_
  \_____|_|  \__,_| .__/|___/  \____/|_(_)
                  | |
                  |_|
          )
          puts 'Roll a total of 7 or 11 to win!'
          puts 'Here is your roll.'
          die = []
            die << rand(1..6) << rand(1..6)
            puts '-------Results-------'
            puts die
            # puts die.inject(0){|sum,x| sum + x}
            sum_die = die.inject(0){|sum,x| sum + x}
            if sum_die == 7 || sum_die == 11
                puts 'You Win!'
            else
                puts 'You lose'
            end
            puts 'Do you want to play again? (y/n)'
              user_input = gets.strip.downcase
              if user_input == 'y'
                Mechanics::Wager::take_bid(user_profile)
                    self.roll(user_profile)
              else
                  #link back to the main menu but for now exit
                 Mechanics::Menu::main_menu(user_profile)
              end
        end
    end
  
end
