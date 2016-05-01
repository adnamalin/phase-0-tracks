# PSEUDOCODE #
#
# SPACESHIP class
#
# Three attributes: 
# name-string
# amount of fuel needed-integer
# which planets spaceship will orbit-string
# 
# Three methods (at least one needs to take an argument): 
# land
# takeoff
# fly in space at some speed - (this will take a boolean variable.)
# --------------------------
# release 1 - set up class
class Spaceship
	attr_reader :name
	attr_accessor :propellant_in_gallons, :orbit

	def initialize
		@name 
		@propellant_in_gallons 
		@orbit 
	end

	def takeoff
		puts "3... 2... 1... takeoff!"
	end

	def land
		puts "Welcome back to Earth!"
	end

	def fly(speed)
		speed.to_i * 10000
		if speed >= 100
			puts "Superfast!"
		elsif speed.between?(10, 999) 
			puts "Yay!"
		elsif speed <= 9
			puts "Uhh, you may wanna speed up."
		else puts "Yikes. You may have an issue."
		end
	end
end

# release 2 - user can call multiple instances of spaceship

ship_info = Spaceship.new
ship_info = []

puts "How many spaceships would you like to buy? Please type 'done' when finished."
	spaceship_number = gets.chomp.to_i
	
	if spaceship_number == "done"
		puts "No spaceship for you. :-("
	else spaceship_number.times do 
			puts "What is the name of the spaceship you would like?"
				@name = gets.chomp
			puts "How many gallons of fuel would you like to buy?"
				@propellant_in_gallons = gets.chomp
			puts "Which planets would you like to visit?"
				@orbit = gets.chomp
			ship_info << @name 
			ship_info << @propellant_in_gallons 
			ship_info << @orbit
	end	
	end

p ship_info

# DRIVER CODE #
# p spaceship = Spaceship.new("Kraken")
# spaceship.takeoff
# spaceship.land
# spaceship.fly(50)