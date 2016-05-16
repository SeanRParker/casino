module Mechanics

	# slot machine has three reels
	# reel 1, 2 and 3 has only one win and 2 loses
  # ask user how much they want to wager
  # show user how much they have
  #
	class Slots
		attr_accessor :win, :lose

		def initialize
			@win = ''
			@lose = ''
		end

		REEL_COUNT = 3
		REEL_VALUE = %w[Win, Lose, Lose]
		PLAY_MORE = %w[y, yes]

		def multipier
			# may need to pass something in???
			# if statement?
		end

	end
end
