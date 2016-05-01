# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(statement)
# 		statement.upcase + "!" + " Yay!"
# 	end
# end

# p Shout.yell_angrily("Rage")
# p Shout.yelling_happily("yes")

module Shout
	def yell_something(words)
		"I'm yelling " + words + " very loudly!"
	end	
end


class Metal_singer
	include Shout
end

class Traffic_director
	include Shout
end

metal_singer = Metal_singer.new
p metal_singer.yell_something("krzzzhhhhrrrkkskk")

traffic_director = Traffic_director.new
p traffic_director.yell_something("wrong way")