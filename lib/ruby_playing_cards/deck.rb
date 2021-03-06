module RubyPlayingCards
  class Deck
    SUITS = [
      { name: :spades,    icon: :♠,   color: :black },
      { name: :clubs,     icon: :♣,   color: :black },
      { name: :hearts,    icon: :♥,   color: :red   },
      { name: :diamonds,  icon: :♦,   color: :red   }
    ]
    attr_accessor :cards

    def initialize
      @cards = []
      build_deck
    end

    def size
      @cards.size
    end

    def to_s
      @cards.map do |card|
        "#{card.suit}#{card.rank}"
      end
    end

    private 

    def build_deck
      SUITS.each do |suit|
        1.upto(13) do |rank|
          @cards << Card.new(rank, suit)
        end
      end
    end
    
  end
end