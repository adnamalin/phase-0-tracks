#create class
class Santa
  def initialize(name, suit_color)
    @name = name
    @gender = "lady"
    @ethnicity = "aboriginal"
    @suit_color = suit_color
    @facial_hair = "no"
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
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
 
  # gender getter method
  def gender
    @gender
  end
  
  # gender setter method
  def gender=(new_gender)
    @gender = new_gender
  end
  
  # age getter method
   def age
      @age
   end  
  
  # age setter method
   def age=(new_age)
      @age = new_age
   end
  
   # ethnicity getter method
   def ethnicity
      @ethnicity
   end  
  
  # ethnicity setter method
   def ethnicity=(new_ethnicity)
      @ethnicity = new_ethnicity
   end
  
  
end

# DRIVER CODE #

santa = Santa.new("Julius", "orange")
# santa.genders("a cool dudette")
 santa.ethnicities("Latina")
# santa.hairy_face("no")
santa.age
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("gingersnap")
# santa.about("Julius")

p santa.get_mad_at("Vixen")
santa.gender = "superfemme"
puts "Now I'm #{santa.gender}!"

p santa.age
p santa.ethnicity

