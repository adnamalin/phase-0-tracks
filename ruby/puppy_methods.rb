# class Puppy

#   def initialize
#   puts "initializing new puppy instance"
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(words)
#     words.times do
#       puts "woof"
#     end
#   end

#   def roll_over()
#     puts "roll over"
#   end

#   def dog_years(years)
#     age = years * 7
#     return age
#   end

#   def drink(drink)
#     puts "*glug glug glug* Damn! that #{drink} was good, burrrrrrp"
#   end

# end

# puppup = Puppy.new
# puppup.fetch("tennis ball")
# puppup.speak(13)
# puppup.roll_over
# p puppup.dog_years(3)
# puppup.drink("tequila")

class CollegeStudent
  def initialize
    puts "Waking up from hangover now"
  end

  def walk_of_shame(name)
    puts "Yes I'm #{name} and I'm lost."
  end

  def bro(name)
    puts "#{name}, do you even lift bro?"
  end

  def debt(years)
    college_debt = years * 15000
    puts "You owe $#{college_debt}!"
  end

end

 # college = CollegeStudent.new
# college.walk_of_shame("Becky")
# college.bro("Chad")
# college.debt(4)

student_list = []
50.times {student_list << CollegeStudent.new}
# p student_list

student_list.each {|student|
  student.walk_of_shame("Becky")
  student.bro("Chad")
  student.debt(10)}
