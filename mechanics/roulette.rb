module Mechanics
   module Roulette

       def self.spin
        puts "What number do you want to bet on (1..30)?"
        bet_number = gets.strip.to_i
        puts "What color do you want to bet on (Red or Black)?"
        bet_color = gets.strip.downcase

          @color = %w(red black)

           spin = []
           spin << rand(1..30) << @color.sample
           puts spin

          if bet_color == spin
            puts "you win"
          else
            puts "You Lost"
          end

          puts 'Do you want to play again? (y/n)'
          user_input = gets.strip.downcase
          if user_input == 'y'
                self.spin
          else
              #link back to the main menu but for now exit
             exit(0)
                # casino
          end

       end

   end
end