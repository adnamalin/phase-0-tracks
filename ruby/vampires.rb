puts "How many employees will be taking the test this session?"
number_employees = gets.chomp.to_i

until number_employees == 0
  puts "What is your name?"
  name = gets.chomp.downcase

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  birth_year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y or N)"
  garlic = gets.chomp.upcase

  puts "Would you like to enroll in the company’s health insurance?"
  insurance = gets.chomp.upcase

        if (name == "drake cula" || name == "tu fang")
            vampire_status = "definitely a vampire."
          elsif (age == 2016 - birth_year) && (garlic == "Y" || insurance == "Y")
            vampire_status = "probably not a vampire"
          elsif (age != 2016 - birth_year) && garlic == "N" && insurance == "N"
            vampire_status = "almost certainly a vampire"
          elsif (age != 2016 - birth_year) && (garlic == "N" || insurance == "N")
            vampire_status = "probably a vampire"
          else
            vampire_status = "inconclusive"
        end

  allergies = ""
  until allergies == "done" || allergies == "sunshine"
  puts "Please type out your allergies. If none or you have finished please type done"
  allergies = gets.chomp.downcase

        if allergies == "sunshine"
            vampire_status = "probabaly a vampire"
          elsif allergies == "done"
            puts "Thanks for your submission"
          else
            puts "#{allergies} has been added. Type 'done' when finished"
        end

  end

  number_employees -= 1

  puts "Test Results for #{name} is #{vampire_status}"
  puts "Ready for next employee."

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends. Let's set up a committee to discuss werewolf & vampire integration programs."
