# require_relative 'mechanics/dice'
Dir[File.dirname(__FILE__) + '/mechanics/*.rb'].each {|file| require file}

class Casino
    include Mechanics
    puts = Mechanics::User_profile.new
    def play
        # puts Mechanics::Craps_jr.roll
        # puts Mechanics::Roulette.spin
        # puts Mechanics::High_low.turn
        puts Mechanics::Guess_luck.luck



        # cards = Mechanics::Deck.new.cards.shuffle
        # cards.each do |card|
        #     puts "#{card.rank} of #{card.suit}"
    end
end

@game = Casino.new
@game.play

