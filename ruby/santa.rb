# Your class should have three instance methods:

# A speak method that will print "Ho, ho, ho! Haaaappy 
# holidays!" (Santa has been working on being more inclusive.)
# An eat_milk_and_cookies method that takes a cookie type 
#(example: "snickerdoodle") as a parameter and prints "That was a good 
#<type of cookie here>!" 
# An initialize method that prints "Initializing Santa instance ...".
# Add a bit of code below your class declaration to check that you're 
#able to initialize a Santa instance and call its methods.

class Santa

	def initialize(gender)
		@gender = gender
		@ethnicity = ethnicity
		@suit_color = suit_color
		@facial_hair = facial_hair
		countrycount.times = { |country_count| puts "Santa has visited this country #{country_count} times this year." }
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaaappy Holidays!"
	end

	def eat_milk_and_cookies(type_of_yummy_snack)
		puts "That was a good #{type_of_yummy_snack}!"
	end
end

# DRIVER CODE #

Klaus = Santa.new

Klaus.speak
Klaus.eat_milk_and_cookies("gingersnap")
Klaus.initialize()
