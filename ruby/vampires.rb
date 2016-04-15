# puts "How many employees will be processed?"
#	employees = gets.chomp


puts "What is your name?"
	vampire_name = gets.chomp
puts "How old are you?"
	vampire_age = gets.chomp.to_i
puts "In what year were you born?"
	vampire_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp.to_b
	if garlic == "yes" || "Yes" || "Y" || "y"
		garlic = true
	else garlic = false
	end
puts "Would you like to enroll in the company's health insurance plan?"
	insurance = gets.chomp
	garlic = gets.chomp.to_b
	if garlic == "yes" || "Yes" || "Y" || "y"
		garlic = true
	else garlic = false
	end

true_age = 2016 - vampire_year	
true_age == vampire_age	

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
if true_age && (garlic || insurance)
	puts "Probably not a vampire."
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
elsif !true_age && (garlic || insurance) 
	puts "Probably a vampire."
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
elsif !true_age && (garlic || insurance) 
	puts "Almost certainly a vampire."
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
elsif vampire_name == "Drake Cula" || "drake cula" || "Drake cula" || "drake Cula" || "Tu Fang" || "tu fang" || "Tu fang" || "tu Fang"
	puts "Definitely a vampire."
# Otherwise, print “Results inconclusive.”
else 
	puts "Results inconclusive."
end