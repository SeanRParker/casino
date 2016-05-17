require "pry"
module Mechanics
  class Wager
    attr_accessor :wager
    def initialize
      @wager = wager
    end

    def self.take_bid(user_profile)
      puts "How much money would you like to wager today #{user_profile.user}?"
      @wager = gets.to_f
      # Pass the wager variable to adjust balance
      if @wager > user_profile.money
        puts "You can't bid more than you have."
        take_bid(user_profile)
      else
        puts "You wagered #{@wager}"

      end

    end

# TODO Take result boolean and adjust the wager variable based on whether the user won.
# TODO output messaging and new balance.
# TODO puts "Your balance is now #{user_profile.total}"


    def self.adjust_balance(user_profile, result)
      if result == false
        puts "Sorry, you lose."
        user_profile.money = user_profile.money - @wager
        puts "Your balance is now #{user_profile.money}"
      elsif result == true
        user_profile.money = user_profile.money + @wager

        puts "Winner! Winner! Chicken Dinner!"
        puts "Your balance is now #{user_profile.money}"
      end
    end

  end
end
