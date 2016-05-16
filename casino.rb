# require relative 'mechanics/dice'
Dir[File.dirname(--FILE--) + '.mechanics/*.rb'].each {|file| require file}

class Casino
  include mechanics

  def play
  puts Mechanics::Dice.roll
  cards = Mechanics::Deck.new.cards
  cards.each do |card|
    puts "#{card.rank} of #{card.suit}"
  end
end





module Mechanics
  module Dice
    def self.roll
      die = []
      die << rand(1..6) << rand(1..6)
    end
  end
end
