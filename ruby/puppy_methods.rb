# create new puppy class

class Puppy

  # def initialize(say_a_thing)
  #    puts "Initializing a new puppy instance."
  #  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
   end

  def speak(integer)
    integer.times do 
      puts "Bork"
    end
  end
    
   def roll_over
     puts "*rolls over*"
   end

  def dog_years(years)
      age = years.to_i/7
      return age
  end

  def shake(directional)
    puts "Shake with your #{directional} paw!"
  end
end

# DRIVER CODE #

little_dog = Puppy.new
little_dog.fetch("kong")
little_dog.speak(4)
little_dog.roll_over
p little_dog.dog_years(14)
little_dog.shake("right")

# New class

class Frequent_traveller

def flying(miles)
  puts "I have #{miles} frequent flyer miles. Basically a billion."
end

def languages(language_spoken) 
  puts "I can speak #{language_spoken}."
end

end


# DRIVER CODE #

individual = Frequent_traveller.new
individual.flying(5)
individual.languages("Urdu")

travellers = []
 
 50.times do
 	travellers << Frequent_traveller 
end
# p travellers

 travellers.each { |person| person.flying 
 	person.languages("Georgian") }