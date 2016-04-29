class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(integer)
		5.times do 
			puts "Bork"
		end
	end
  	
 	def roll_over
 		puts "*rolls over*"
 	end

	def dog_years(age)
		puts "How old are you in human years?"
			years.to_i = gets.chomp
			age = years/7
			return age
	end

	def shake
		



 end

# DRIVER CODE #

little_dog = Puppy.new
little_dog.fetch("kong")
little_dog.speak(4)
little_dog.roll_over
little_dog.dog_years(7)