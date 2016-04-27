class Santa
  attr_reader :ethnicity, :age
  attr_accessor :gender

  def initialize(gender, ethnicity, age)
    @gender = gender
    @ethnicity = ethnicity
    @age = age
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def celebrate_birthday
    @age += 1
  end

  def get_made_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << (reindeer)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookes(cookiename)
    puts "That was a good #{cookiename} cookie!"
  end

  def format
    puts "*********Santa Profile:*********".upcase
    puts "Gender: #{@gender} Ethnicity: #{@ethnicity} Age: #{@age} puts Favorite Reindeer: #{@reindeer_ranking.join(' ')}"
  end

end

##### RELEASE 4: Santa Creator ######
  example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

  puts "How many santas do you want in your santARMY?"
  this_many_santas = gets.chomp.to_i

  this_many_santas.times {
    Santa.new(example_genders.sample, example_ethnicities.sample, [*1..140].sample).format}



# santa = Santa.new("FEMALE", "CHINESE")
# santa.speak
# santa.eat_milk_and_cookes("sugar")
# p Santa.new("female", "chinese")
# p santa.get_made_at("Vixen")
# p santa.gender= "MALE"
# p santa.celebrate_birthday
# p santa.inspect

#### RELEASE ONE ####
#Method that allows users to create santas in a loop
  # def create_santas()
  #   santa_list = []
  #   user_input = ""
  #   while user_input != "done"
  #     puts "What is your gender and ethnicity? Type 'done' when finished"
  #       user_input = gets.chomp
  #       santa_profile = user_input.split(' ')
  #       santa_list << Santa.new(santa_profile[0], santa_profile[1])
  #     end
  #     return santa_list
  #   end
# p first_santa_registration = create_santas()

#Initialize santa using a hash
  # example_santa = {"male" => "korean", "female" => "ukrainian", "male" => "nigerian
  # santa_list =
  # example_santa.each {|gender, ethnicity| santa_list << Santa.new(gender.upcase, ethnicity.upcase
  # p santa_list
