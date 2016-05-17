# Dir[File.dirname(__FILE__) + 'casino.rb'].each {|file| require file}
#display their wallet
#bets
#math from the wallet
#balance
#repeat
module Mechanics
    module Craps_jr
        def self.roll
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
                self.roll
            else
                #link back to the main menu but for now exit
                exit(0)
                # casino
            end
        end
    end
end