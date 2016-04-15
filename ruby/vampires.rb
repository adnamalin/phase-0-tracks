puts "What is your name?"
	vampire_name = gets.chomp
puts "How old are you?" 
	vampire_age = gets.chomp.to_i
puts "What year were you born?"
	year_born = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance plan?"
	insurance = gets.chomp

2016 - year_born = true_age

if true_age && (garlic || insurance) 
	puts "Probably not a vampire."
else
	puts "Probably a vampire."
elsif 
	puts "Almost certainly a vampire."
elsif 
	puts "Definitely a vampire."
elsif 
	puts "Results inconclusive."
end
