#Prompt designer for inputs
#Make sure inputs convert to proper data type
#Inputs will go into the hash
#Print hash
#Ask user if they need to correct anything or "none" if not
#If they need to correct:
#User enters key they want to change the value of
# kay & value are updated in the hash
#Print the final version of hash

def client_profile()
  puts "What is the clents full name?"
  full_name = gets.chomp

  puts "What is the clients age"
  client_age = gets.chomp.to_i

  puts "How many children does the client have?"
  client_kids = gets.chomp.to_i

  puts "What theme does the client prefer?"
  client_theme = gets.chomp

  puts "How many rooms does the client prefer?"
  client_roompref = gets.chomp.to_i

  puts "Does the client want hardwood floor? (yes or no)"
  hardwood_pref = gets.chomp
    if hardwood_pref == "yes"
      client_floor = true
    else
      client_floor = false
    end

  client_details = {name: full_name, :age => client_age, :children => client_kids, :decortheme => client_theme, :rooms => client_roompref, :hardwood => client_floor}
  return client_details
end

def corrections()
  puts "What key would you like to correct?"
  key_to_correct = gets.chomp.to_sym

  puts "What is the new value for this key?"
  new_value = gets.chomp

end


#Ask designer for client information
p client_profile()

#Give user chance to correct a key
# puts "Do you need to correct a key, yes or no?"
# need_correction = gets.chomp
#   if need_correction == "yes"
#     corrections()
#   else
#     puts "Great!"
#   end
