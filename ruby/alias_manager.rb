# Pseudocode
# Break the name up by using .split and join it back together after you've switched the first and last names.
# Break out consonants and vowels into two separate categories.
# For the consonants: Move to next letter in alphabet.
# For the vowels: Move to next vowel.
# Until user types "quit" allow them to enter names.
# Store names. 
# Return them in a sentence.

# Make last name first
def alias_maker(full_name)
	new_name = full_name.split(' ')
	new_name.reverse!
	newer_name = new_name.join(' ')
	return newer_name
end

p alias_maker("Felicia Torres")
p alias_maker("Andrea Frank")

# split out consonants and make them go to next letter
def consonant(letter)
   consonants = "bcdfghjklmnpqrstvwxyz"
        n_index = consonants.index(letter)
        if letter == " "
            letter = " "
      elsif letter == "z"
           letter = "b"
        else
            letter = consonants[n_index+1]
        end
    end	

p consonant("d")


# split out vowels and make them switch to next vowel
def vowel(letter)
	vowels = "aeiou"	
	n_index = vowels.index(letter)
        if letter == " "
            letter = " "
        elsif letter == "u"
            letter = "a"
        else
            letter = vowels[n_index+1]
        end
end

p vowel("u")

# move the letters
def letter_mover(full_name)
  split_name = full_name.split('')
  split_name.map! do |letter_new|
    letter = {vowel: "aeiou", consonant: "bcdfghjklmnpqrstvwxyz"}
    consonant_selection = letter[:consonant]
    vowel_selection = letter[:vowel]
      if letter_new == " "
          letter_new = " "
      elsif consonant_selection.include?(letter_new)
        letter_new = consonant(letter_new)
      elsif vowel_selection.include?(letter_new)
        letter_new = vowel(letter_new)
      else letter_new = "unknown"
      end
    end
    split_name.join('')
  end

p letter_mover("Felicia Torres")

# capitalize so the first character is no longer "unknown"
def capitalize_first(full_name)
  make_caps = full_name.split(' ')
  make_caps.map! do |full_name|
    full_name.capitalize!
  end
  display_name = make_caps.join(' ')
end

p capitalize_first(letter_mover(alias_maker("felicia torres")))

# Get info for the end name display
def user_input(full_name)
	new_var = blank_input()
	
	user_data = ""
	
	until user_data == "quit"
	puts "Please enter your name. When you are finished, type 'quit'."
	user_data = gets.chomp
	changed_name = reverse(entry)
    changed_letter = next_letter(changed_name)
    new_name = capitalize_first(changed_letter)
    old_name = capitalize_first(entry)
    new_var.keep(old_name, new_name)
  end
  return new_var
end

