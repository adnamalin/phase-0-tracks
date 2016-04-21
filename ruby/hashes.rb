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
def create_client_hash()
  puts "What is the client's first name?"
  first_name = gets.chomp.capitalize

  puts "What is the client's last name?"
  last_name = gets.chomp.capitalize

  full_name = "#{first_name} #{last_name}"

  puts "What is the clients age"
  client_age = gets.chomp.to_i

  puts "How many children does the client have?"
  client_kids = gets.chomp.to_i

  puts "What theme does the client prefer?"
  client_theme = gets.chomp.capitalize

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
    :Name => full_name,
    :Age => client_age,
    :Children => client_kids,
    :Theme => client_theme,
    :Rooms => client_roompref,
    :Hardwood => client_floor}

  return client_details
end

#Method to correct client data
def corrections()
  puts "What key would you like to correct?"
  key_to_correct = gets.chomp.to_sym.capitalize

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
        new_value = gets.chomp.capitalize
    end
    #Turning correction into an array
  corrections_array =[key_to_correct, new_value]
  return corrections_array
end

#Method to format list output
def print_hash(client_info)
  puts "Client Profile for #{client_info[:Name]}"
  puts "----------------------------"
  client_info.each {|key, value|
    puts "\t #{key}: #{value}"
  }
end


########### DRIVER CODE ##########

#Allow for entering multiple profiles
puts "How many profiles would you like to enter?"
number_of_profiles = gets.chomp.to_i
number_of_profiles.times do

#Ask designer for client information
  client_profile = create_client_hash()
  puts "Here is the profile you have entered:"
  p print_hash(client_profile)

  #Give user chance to correct a key
  puts "Do you need to correct a key, yes or no?"
  needs_correction = gets.chomp.downcase
    #Run appropriate response
    if needs_correction == "yes"
      make_corrections = corrections()
      #Using array make_corrections to push new key & value into existing hash
      client_profile[make_corrections[0]] = make_corrections[1]
    else
      p "Great!"
    end

  #Print final results
  puts "Here is the final version for this client's profile:"
  p print_hash(client_profile)
end

puts "The client(s) profiles have been entered. Thank you. "
