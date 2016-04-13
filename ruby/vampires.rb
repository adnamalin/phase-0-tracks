
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y or N)"
garlic = gets.chomp.upcase

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp.upcase

#variables set to true when the input answer indicates non-vampire traits
case
  when age == 2016 - birth_year
  age_test = true
  when garlic == "Y"
  garlic_test = true
  when insurance == "Y"
  insurance_test = true
  when name != "Drake Cula" && name != "Tu Fang"
  name_test = true
end

if !name_test && (age_test && garlic_test &&    insurance_test)
  puts "definitely a vampire."

  elsif age_test && (garlic_test || insurance_test)
  puts "probably not a vampire"

  elsif !age_test && !garlic_test && !insurance_test
  puts "almost certainly a vampire"

  elsif !age_test && (!garlic_test || !insurance_test)
  puts "probably a vampire"

  else
  puts "Results inconclusive"
end
