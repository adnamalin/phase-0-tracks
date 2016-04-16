#BEGIN Encrypt Method
#Get string from user
#index through string using.length
#Any space character remains a space character after encryption
#Identify index numbers for letters in password
#Shift letters by one to encrypt using .next
#Print encrypted password
#END

def encrypt(getcrypted)
  for n in 0...getcrypted.length
    if getcrypted[n] == " "
       getcrypted[n] = " "
     else
       getcrypted[n] = getcrypted[n].next[0]
     end
   end
  	getcrypted
end

#Encrypt Test: EDGE CASES & Space test
# p encrypt("zed zed")
# p encrypt("a")
# p encrypt("z")
# p encrypt("abc abc")

#BEGIN Decrypt Method
#Get string from user
#Store alapabet in variable to use for comparison
#index through string using.length
#Any space character remains a space character after encryption
#Identify index numbers for letters in password
#Using that found index number -1 to get previous letter in index
#Print encrypted password
#END

def decrypt(getcrypted)
  abc_code = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  for n in 0...getcrypted.length
    if getcrypted[n] == " "
       getcrypted[n] = " "
     elsif getcrypted[n] == "a"
      getcrypted[n] = "z"
    elsif getcrypted[n] == "A"
      getcrypted[n] = "Z"
     else
       getcrypted[n] = abc_code[abc_code.index(getcrypted[n])-1]
    end
  end
   getcrypted
end

#Decrypt test: # EDGE CASES & Space test
# p decrypt("bcd bcd")
# p decrypt("aa AA")
# p decrypt("zz ZZ")
# p decrypt("bcd bcd")

#Nested Method Call & Why Does it Work
# decrypt(encrypt("swordfish"))
# This works because the decrypt method will run the output of the encrypt method that is nested inbetween. The encrypt output is "txpsegjti" so the final run of this line is decrypt("txpsegjti") which returns "swordfish"

#DRIVER CODE

decision = ""
until decision == "encrypted" || decision == "decrypted"
#Ask user if they want to encrypt or decrypt
puts "Would you like your password encrypted or decrypted?"
decision = gets.chomp.downcase
end
#Ask them for password
puts "What is your password?"
psswrd = gets.chomp
#Decide which method
#Run method
#Print results
if decision == "encrypted"
  p encrypt(psswrd)
else decision == "decrypted"
  p decrypt(psswrd)
end
