#BEGIN --------------------
  #Ask user to input name
  #Break name into array by words
  #Take name array and swap first and last name
  #Rejoin name into string
  #Take new string and split by characters
  #Have vowels change to next vowel aeiou
  #Have consonant turn into next consonant bcdfghjklmnpqrstvxz
  #Have input downcased
  #Method to take final name split it by word into array and capitlize each element then combine back
  #Allow user to keep putting names in until they type 'quit'
  #Store all fake names entered into a hash
  #Print iterration through hash "new name is actually orginal name"
#-------------------- END

#Method to switch first and last name and return a new string
def reverse(name)
  name_array = name.split(' ')
  name_array.reverse!
  new_name_string = name_array.join(' ')
  return new_name_string
end
# p reverse("Amanda Lin")

#Method to change vowels and consonants
def next_letter(name)
    char_array = name.split('')
    char_array.map! do |character|
    #Set up hash to store vowels $ consonants
     letter = {vowel: "aeiou", consonant: "bcdfghjklmnpqrstvwxyz"}
    #Set variables to define original index position of the character
     og_pos_vowel = letter[:vowel].index(character)
     og_pos_con = letter[:consonant].index(character)

    	if character == " "
        	character = " "
      elsif character == "u"
          character = "a"
      elsif character == "z"
          character = "b"
    	elsif letter[:vowel].include?(character)
    		character = letter[:vowel][og_pos_vowel + 1]
    	elsif letter[:consonant].include?(character)
    		character = letter[:consonant][og_pos_con + 1]
    	else character = "?"
    	end
    end
  new_string_char = char_array.join('')
end
# p next_letter(reverse("felicia torres"))

#Method to capitlize the final full name
def capitalize(name)
  capitalize_array = name.split(' ')
  capitalize_array.map! do |name|
    name.capitalize!
  end
  final_name_string =capitalize_array.join(' ')
end
# p capitalize(next_letter(reverse("felicia torres")))

#Method to gather names for the final output
def gather_names()
  output = create_hash()

  entry = ""

  while entry != "quit"
    puts "Enter the full name you want to fakeify, type 'quit' when finished."
    entry = gets.chomp.downcase
    reversed_name = reverse(entry)
    changed_letter = next_letter(reversed_name)
    fake_name = capitalize(changed_letter)
    real_name = capitalize(entry)
    output.store(real_name, fake_name)
    output.delete_if {|key, value| key == "Quit"}
  end
  return output
end

#Method to create empty hash
def create_hash()
  name_hash = {}
  return name_hash
end

#Method to format the final output list of names
def print_formatted_names(initial_names)
  puts "Here are the names you have entered:".upcase
  puts "------------------------------------"
  initial_names.each {|key, value|
    puts "#{key} is also knows as #{value}"
    puts "----------------"
  }
end


#####DRIVER CODE####

#Ask user for names they want to fakeify

get_name_hash = gather_names()
# p get_name_hash

#Print out all names formatted
formatted_output = print_formatted_names(get_name_hash)
p formatted_output
