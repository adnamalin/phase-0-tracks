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
    @name = name
    @hometown = hometown
    @age = age
    @type = "electric"
    @attacks = ["Thundershock", "Growl", "Wild Charge"]
  end

  def attack
    p " #{name} uses: #{@attack.sample}"
  end

  def speak
    puts "PIKA PIKA!"
  end

  def age_convert(poke_age)
    human_age = poke_age * 9
  end

end

# pika = Pikachu.new("fred", "Johto", 10)
# p pika.name
# p pika.type
# p pika.attacks
# p pika.hometown
# p pika.age
