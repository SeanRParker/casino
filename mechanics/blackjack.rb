# module Mechanics
require "pry"
# user is delt 2 cards
# dealer is delt 2 cards
# closest to 21 without going over wins
   
  def blackjack
      puts "Welcome to Blackjack!"
      card_selection
  end
               
    
      
  def card_selection
    #class and instance variables
    @card1 = rand(1..11) 
    @card2 = rand(1..11)
    @card3 = rand(1..11)
    @card4 = rand(1..11)
    @card5 = rand(1..11)
    @card6 = rand(1..11)
    card_output
  end
   
  def card_output
    puts "Your cards are #{@card1} and #{@card2}"
    @player_cards_total = @card1 + @card2
    puts "Your cards total is #{@player_cards_total}"
    puts "Dealer Cards"
    puts "Dealer cards are #{@card3} and #{@card4}"
    @dealer_cards_total = @card3 + @card4
    dealer_hand
    puts "Dealer cards total is #{@dealer_cards_total}"
    puts "Would you like another card? y/n?"
    @user_input = gets.strip
    calc
  end

  def calc
   if @user_input == "y"
      # when user selects yes then add @card1 + @card2 + @card3 = total
      puts "Your new card is #{@card6}"
      @player_cards_total = @card1 + @card2 + @card5
      puts "Total #{@player_cards_total}"
      twenty_one
    else @user_input == "n"
      @player_cards_total = @card1 + @card2
      puts @player_cards_total
      twenty_one
    end
  end

 
  def twenty_one
    if @player_cards_total > 21
      puts "You lose!"
      play_again
    elsif @dealer_cards_total == 21
      puts "You lose!"
      play_again
    elsif @dealer_cards_total > 21 && (@player_cards_total < 21)
      puts "You win!"
     play_again
    elsif @player_cards_total < 21 && (@player_cards_total > @dealer_cards_total)
      puts "You win!"
      play_again
    end
  end
    

  def dealer_hand
    if @dealer_cards_total <= 15
      puts "Dealers hand is #{@card6}"
      @dealer_cards_total = @card3 + @card4 + @card6
      twenty_one 
    else
      @dealer_cards_total = @card3 + @card4
      twenty_one
    end
  end
      

  def play_again
    puts "Would you like to play again?"
    user_input = gets.strip
    if user_input == "y"
      blackjack
    else 
      exit(0)
    end
  end

blackjack

        



      
    
   

  
       





 
  



