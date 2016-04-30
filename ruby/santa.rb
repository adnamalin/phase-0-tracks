#create class
class Santa
  attr_accessor :gender, :age, :ethnicity
  
  def initialize(gender, ethnicity)
#    @name = name
    @gender = gender
    @ethnicity = ethnicity
#    @suit_color = suit_color
#    @facial_hair = "no"
#    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  def speak
    puts "Ho, ho, ho! Haaaaappy Holidays!"
  end

  def eat_milk_and_cookies(type_of_yummy_snack)
    puts "That was a good #{type_of_yummy_snack}!"
  end

  def genders(gender)
    puts "I identify as #{gender}."
    @gender = gender
  end
  
  def ethnicities(ethnicity)
    puts "My ethnicity is #{ethnicity}."
    @ethnicity = ethnicity
  end
  
  def hairy_face(facial_hair)
    if facial_hair == "yes"
      puts "Scratchy!"
    else
      puts "Soft!"
    end
  end 
# p hairy_face("no")
    
  def about(name)
    puts "Hi, my name is #{@name} and I identify as #{@gender}. I am #{@ethnicity} and I am #{@age} years old. My reindeer ranks are as follows: #{@reindeer_ranking}."
  
  end

  def celebrate_birthday
    @age += 1
  end
  
  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << (reindeer)
  end
 
#method for release 4  
def santa_individuals
   puts "-------------------------------"
   puts "Here is one santa in the group!"
   puts "Gender: #{@gender}"
   puts "Ethnicity: #{@ethnicity}"
end

end

# RELEASE 4
santas_gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

santas_ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
 
100.times {
Santa.new(santas_gender.sample, santas_ethnicity.sample).santa_individuals}


# RELEASE 0-3 DRIVER CODE #
# santa = Santa.new("Julius", "orange")
# santa.genders("a cool dudette")
# santa.ethnicities("Latina")
# santa.hairy_face("no")
# santa.age
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("gingersnap")
# santa.about("Julius")

# p santa.get_mad_at("Vixen")
#santa.gender = "superfemme"
# puts "Now I'm #{santa.gender}!"

# p santa.age
# p santa.ethnicity
