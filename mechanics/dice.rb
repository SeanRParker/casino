module Mechanics
    module Dice
        def self.roll
            die = []
            die << rand(1..6) << rand(1..6) #random dice btwn 1 & 6 && some random 1..6
            # rand(6) +1
            # #or
            # (rand * 7).floor
            # #or
            # rand(1..6)
            
        end
    end
end 
