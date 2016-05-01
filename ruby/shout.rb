module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(statement)
		statement.upcase + "!" + " Yay!"
	end
end

p Shout.yell_angrily("Rage")
p Shout.yelling_happily("yes")