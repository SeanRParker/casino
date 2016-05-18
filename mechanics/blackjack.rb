# module Mechanics
# require "pry"
# user is delt 2 cards
# dealer is delt 2 cards
# closest to 21 without going over wins
module Mechanics
   class  Blackjack

      attr_accessor :result

      def initialize
          @result = result
      end

      def self.blackjack(user_profile)
          puts "Welcome to Blackjack!"
          puts '''
  ____  _            _    _            _
 |  _ \| |          | |  (_)          | |
 | |_) | | __ _  ___| | ___  __ _  ___| | __
 |  _ <| |/ _` |/ __| |/ / |/ _` |/ __| |/ /
 | |_) | | (_| | (__|   <| | (_| | (__|   <
 |____/|_|\__,_|\___|_|\_\ |\__,_|\___|_|\_\
                        _/ |
                       |__/
          '''
          
    

        #class and instance variables
        @card1 = rand(1..11)
        @card2 = rand(1..11)
        @card3 = rand(1..11)
        @card4 = rand(1..11)
        @card5 = rand(1..11)
        @card6 = rand(1..11)
        

      
        puts "Your cards are #{@card1} and #{@card2}"
        @player_cards_total = @card1 + @card2
        puts "Your cards total is #{@player_cards_total}"
        puts "Dealer Cards"
        puts "Dealer cards are #{@card3} and #{@card4}"
        @dealer_cards_total = @card3 + @card4

        puts "Dealer cards total is #{@dealer_cards_total}"
        puts "Would you like another card? y/n?"
        @user_input = gets.strip
        
       if @user_input == "y"
          # when user selects yes then add @card1 + @card2 + @card3 = total
          puts "Your new card is #{@card6}"
          @player_cards_total = @card1 + @card2 + @card5
          puts "Total #{@player_cards_total}"
    
        else @user_input == "n"
          @player_cards_total = @card1 + @card2
          puts @player_cards_total

        end
      


      
        if @player_cards_total > 21
          puts "You lose!"
          result = false
              Mechanics::Wager::adjust_balance(user_profile, result)
          
        elsif @dealer_cards_total == 21
          puts "You lose!"
          result = false
              Mechanics::Wager::adjust_balance(user_profile, result)
        elsif @dealer_cards_total > 21 && (@player_cards_total < 21)
          puts "You win!"
          result = true
              Mechanics::Wager::adjust_balance(user_profile, result)
         
        elsif @player_cards_total < 21 && (@player_cards_total > @dealer_cards_total)
          puts "You win!"
          result = true
              Mechanics::Wager::adjust_balance(user_profile, result)
          
        end     
        

      
        if @dealer_cards_total <= 15
          puts "Dealers hand is #{@card6}"
          @dealer_cards_total = @card3 + @card4 + @card6
          
        else
          @dealer_cards_total = @card3 + @card4
        end


      
        puts "Would you like to play again?"
        user_input = gets.strip
        if user_input == "y"
          Mechanics::Wager::take_bid(user_profile)
            self.blackjack(user_profile)
        else 
          Mechanics::Menu::main_menu(user_profile)
        end
      end

    # blackjack(user_profile)
 end
end



