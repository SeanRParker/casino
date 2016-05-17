module Mechanics
   module Guess_luck

       def self.luck
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
        elsif guess < num
          puts "The number is too low."
        elsif guess == num
          puts 'you win'
        end

        puts 'Do you want to play again? (y/n)'
            user_input = gets.strip.downcase
        if user_input == 'y'
                self.luck
        else
            #link back to the main menu but for now exit
            exit(0)
             # casino
        end

     end

   end
end
