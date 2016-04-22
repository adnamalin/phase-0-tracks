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
      if character == " "
        character = " "
      elsif character == "a" || character == "e" || character == "i" || character == "o" || character == "u"
        vowel_index = "aeiou"
        character = vowel_index[vowel_index.index(character)+1]
      else
        consonant_index = "bcdfghjklmnpqrstvwxyz"
        character = consonant_index[consonant_index.index(character)+1]
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

#Method to ask for name to fakeify
def ask_for_name(name)
    reversed_name = reverse(name)
    changed_letter = next_letter(name)
    final_name = capitalize(changed_letter)
    return inital_hash = {name => final_name}
end

def create_name_hash(initialhash)
  initialhash.each do |real, fake|
  name_hash = {}
  name_hash.store(real, fake)
  return name_hash end 
end

#####DRIVER CODE####

#Ask user for names they want to fakeify
real_name = ""

until real_name == "quit"
  puts "Enter the full name you want to fakeify, type 'quit' when you are finished"
  real_name = gets.chomp.downcase
    if real_name == "quit"
      puts "Done"
    else
      name_hash_initial = ask_for_name(real_name)
      final_hash = create_name_hash(name_hash_initial)
    end
end

p final_hash
