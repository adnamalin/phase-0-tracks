puts "What's your hamster's name?"
	hamster_name = gets.chomp
puts "What volume level can your hamster sleep through (pick a  number 1-10)"
	hamster_volume = gets.chomp.to_i
puts "What color is your hamster's fur?"
	fur_color = gets.chomp
puts "Is this hamster a good candidate for adoption?"
	adoption = gets.chomp
	if adoption == "yes" || "Yes" || "Y" || "y"
		adoption = true
	else adoption = false
	end
puts "Please estimate your hamster's age."
	hamster_age = ""
	hamster_age = gets.chomp
	if hamster_age == ""	
		hamster_age = nil
	end

puts "Your #{hamster_age} year old #{fur_color} hamster #{hamster_name} like sleeping at #{} volume level. It is #{adoption} that #{hamster_name} is good for adoption." 