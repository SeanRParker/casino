module Mechanics

  class Cards
    attr_accessor :rank, :suit, :color
    #card = Card.new('k','Spade', 'Black')
    def initialize(rank, suit)
      @rank = rank
      @suit = suit
      @color = (suit == 'Spades' || suit == "Clubs")? 'Black' : 'Red'
    end
  end

  class Deck
    attr_accessor :cards

    def initialize
      @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
      @suits = %w(Spades Diamonds Clubs Hearts)
      @cards = []
      generate_deck
    end

    def generate_deck
      @suits.each do |suit|
        @ranks.each do |rank|
          @cards << Card.new(rank, suit)
        end
      end
    end

    def blackjack_mech
      cards = Deck.new.cards.shuffle
      cards.each do |card|
        #player is dealt two cards
        puts "#{card.rank} of #{card.suit}" << "#{card.rank} of #{card.suit}"
        # player is offered another card
        puts "Would you like another card?"
        # if under 21 offer player if they would like another
        if @user_input == "y"
          choice = get.to_i
          puts "Would you like another card?"
          # }
          # else over 21 they have lost their bet.
        else
          puts "You have lost your bet!"
        end # end of if

      end # end of do loop ?

    end # end of blackjack_mech method

  end # end of deck class

end # end of mechanics module
