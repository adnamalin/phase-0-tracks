puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What is the hamster's volume level (1-10, 1 being the quietest)"
volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (Y or N)"
adoption = gets.chomp.upcase!

  def status(answer)
    if answer == "Y"
      puts "They are ready to be adopted!"
    elsif answer == "N"
      puts "They are not ready to be adopted :( womp womp"
      else
      puts "That's not  valid answer"
    end
  end

puts "What is the estimated age in years of the hamster"
input_age = gets.chomp
  if input_age == ""
    input_age = nil
  else
    input_age.to_i
  end

puts "If I have this right, your hamster is named #{hamster_name}, his or hers age is #{input_age}, they're volume level is #{volume}, with luscious #{fur_color} fur. And their adoption status is:"
puts status(adoption)
