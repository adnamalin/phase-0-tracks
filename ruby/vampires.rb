puts "How many employees will be processed?"
	employees = gets.chomp.to_i
	until employees == 0
	employees = employees - 1

puts "What is your name?"
	vampire_name = gets.chomp
puts "How old are you?"
	vampire_age = gets.chomp.to_i
puts "In what year were you born?"
	vampire_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	if garlic == "yes" || "Yes" || "Y" || "y"
		garlic = true
	else garlic = false
	end
puts "Would you like to enroll in the company's health insurance plan?"
	insurance = gets.chomp
	if insurance == "yes" || "Yes" || "Y" || "y"
		insurance = true
	else insurance = false
	end

true_age = 2016 - vampire_year	
true_age = vampire_age	

if true_age && (garlic || insurance)
	puts "Probably not a vampire."
elsif !true_age && (!garlic || !insurance) 
	puts "Probably a vampire."
elsif !true_age && (!garlic && !insurance) 
	puts "Almost certainly a vampire."
elsif vampire_name == "Drake Cula" || "drake cula" || "Drake cula" || "drake Cula" || "Tu Fang" || "tu fang" || "Tu fang" || "tu Fang"
	puts "Definitely a vampire."
else 
	puts "Results inconclusive."
end

allergies = ""
  until allergies == "done" || allergies == "sunshine"
  	puts "Please list your allergies individually. If you don't have any or you have finished, please type 'done.'"
  allergies = gets.chomp.downcase

        if allergies == "sunshine"
            vampire_status = "Probably a vampire."
          elsif allergies == "done"
            puts "Got it! Thanks."
          else
            puts "#{allergies} has been added. Type 'done' when finished."
        end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end
