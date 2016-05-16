module Mechanics

	class User_profile
	# @user = {name => total}
	@user =[]
	@money =[]

		puts "What is your name?"
		name = gets.strip
		@user << name
		puts "How much is in your wallet?"
		total = gets.strip.to_f
		@money << total
		puts @user
		puts @money
	end

end

# class User_profile
# 	attr_accessor :name, :total

# 	def initialize(name, total)
# 		@name = name
# 		@total = total
# 	end
# end
