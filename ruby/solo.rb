####BEGIN####
  #Class: Pikachu
  #Attributes:
    #Name
    #Type
    #Hometown:Kanto, Johto, Hoenn, Sinnoh, Kalos
    #Attacks: Thunder shock, Growl, Wild Charge
    #Age
  #Methods:
    #Attack: randomizes attacks and prints one
    #Speak: prints "pika pika!"
    #Age Convert: takes age integer and * 9
#####END#####

class Pikachu
  attr_reader :type, :attacks
  attr_accessor :name, :hometown, :age

  def initialize(name, hometown, age)
    @name = name.capitalize
    @hometown = hometown.capitalize
    @age = age
    @type = "electric"
    @attacks = ["Thundershock", "Growl", "Wild Charge"]
  end

  def attack
    puts "#{name} uses: #{@attacks.sample}"
  end

  def speak
    puts "PIKA PIKA!"
  end

  def age_convert(poke_age)
    poke_age * 9
  end

  def format_pikachus
    "#{name} lives in #{hometown} and is #{age} years old. #{name}'s' favorite attack is #{@attacks.sample}"
  end
end

def print_list(list)
  list.each {|profile|
    puts profile
    puts "--------------"}
end
#Testing:
  # pika = Pikachu.new("fred", "Johto", 10)
  # p pika.name
  # p pika.type
  # p pika.attacks
  # p pika.hometown
  # p pika.age
  # pika.attack
  # pika.speak
  # p pika.age_convert(10)

puts "How many Pikachus do you want to create?"
number_of_pikas = gets.chomp.to_i

pikachu_list = []
number_of_pikas.times do
  puts "Enter Pikachus: name hometown age"
    profile = gets.chomp.split(' ')
  pikachu_list << Pikachu.new(profile[0], profile [1], profile[2].to_i).format_pikachus
end

puts "Here are your Pikachus:"
print_list(pikachu_list)
