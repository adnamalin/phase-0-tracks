#BEGIN ------
#Prompt designer for inputs
#Make sure inputs convert to proper data type
#Inputs will go into the hash
#Print hash
#Ask user if they need to correct anything or "none" if not
#If they need to correct:
#User enters key they want to change the value of
# kay & value are updated in the hash
#Print the final version of hash
# ------ END

#Method to gather client data
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

  client_details = {
    :name => full_name,
    :age => client_age,
    :children => client_kids,
    :decortheme => client_theme,
    :rooms => client_roompref,
    :hardwood => client_floor}

  return client_details
end

#Method to correct client data
def corrections()
  puts "What key would you like to correct?"
  key_to_correct = gets.chomp.to_sym

  puts "What is the new value for this key?"
    #Case statement to adjust data types
    case key_to_correct
      when :age
        new_value = gets.chomp.to_i
      when :children
        new_value = gets.chomp.to_i
      when :rooms
        new_value = gets.chomp.to_i
      when :hardwood
        new_value = gets.chomp
          if new_value== "yes"
            new_value = true
          else
            new_value= false
          end
      else
        new_value = gets.chomp
    end
    #Turning correction into an array
  corrections_array =[key_to_correct, new_value]
  return corrections_array
end

########### DRIVER CODE ##########

#Ask designer for client information
client_info = client_profile()
p client_info

#Give user chance to correct a key
puts "Do you need to correct a key, yes or no?"
needs_correction = gets.chomp
#Run appropriate response and prints final results
  if needs_correction == "yes"
    make_corrections = corrections()
    #Using array make_corrections to push new key & value into existing hash 
    client_info[make_corrections[0]] = make_corrections[1]
    puts "Great! Here is the final version for this client's profile: #{client_info}"
  else
    puts "Great! Here is the final version for this client's profile: #{client_info}"
  end

#Thank user
puts "Thanks for using our program!"
