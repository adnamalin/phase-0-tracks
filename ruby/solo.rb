# PSEUDOCODE #
#
# SPACESHIP class
#
# Three attributes: 
# name-string
# amount of fuel needed-integer
# which planet spaceship has orbited-array
# 
# Three methods (at least one needs to take an argument): 
# land
# takeoff
# fly in space at some speed - (this will take a boolean variable.)

# release 1 - set up class
class Spaceship
	attr_reader :name
	attr_accessor :propellant_in_gallons, :orbit


	def initialize(name)
		@name
		# @propellant_in_gallons = 835958
		# @orbit = ["mars", "venus", "earth", "moon", "some weird black hole thing"]
	end

	 def takeoff
	 	puts "3... 2... 1... takeoff!"
	 end

	 def land
	 	puts "Welcome back!"
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
puts "How many spaceships would you like to buy?"
	spaceship_number = gets.chomp.to_i


ship_list = []
 spaceship_number.times do 
 	ship_list << Spaceship.new("name")
end 

p ship_list

  # spaceship_number.times {
  # 	Spaceship.new.create
  # }


# DRIVER CODE #
# p spaceship = Spaceship.new("Kraken")
# spaceship.takeoff
# spaceship.land
# spaceship.fly(50)