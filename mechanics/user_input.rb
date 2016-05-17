module Mechanics

	class UserProfile
		attr_accessor :user, :money

		def initialize
			puts "What is your name?"
			@user = gets.strip
			puts "How much money are you bringing to the casino today?"
			@money = gets.strip.to_f
		end

	end

end

# class User_profile
# 	attr_accessor :name, :total

# 	def initialize(name, total)
# 		@name = name
# 		@total = total
# 	end
# end
