#BEGIN Encrypt Method
#Get string from user and store in new variable
#index through string using.length
#Any space character remains a space character after encryption
#Identify index numbers for letters in password
#Shift letters by one to encrypt using .next
#Print encrypted password
#END

def encrypt(getcrypted)
  enc_password = String.new
  for n in 0...getcrypted.length
    if getcrypted[n] == " "
       enc_password[n] = " "
     else
       enc_password[n] = getcrypted[n].next[0]
     end
   end
   enc_password
end

#Encrypt Test: EDGE CASES & Space test
# p encrypt("zed zed")
# p encrypt("a")
# p encrypt("z")
# p encrypt("abc abc")

#BEGIN Decrypt Method
#Get string from user and store in new variable
#Store alapabet in variable to use for comparison
#index through string using.length
#Any space character remains a space character after encryption
#Identify index numbers for letters in password
#Using that found index number -1 to get previous letter in index
#Print encrypted password
#END

def decrypt(getcrypted)
  dec_password = String.new
  abc_code = "abcdefghijklmnopqrstuvwxyz"
  for n in 0...getcrypted.length
    if getcrypted[n] == " "
       dec_password[n] = " "
     else
       dec_password[n] = abc_code[abc_code.index(getcrypted[n])-1]
    end
  end
    dec_password
end

#Decrypt test: # EDGE CASES & Space test
# p decrypt("bcd bcd")
# p decrypt("a")
# p decrypt("z")
# p decrypt("bcd bcd")

#Nested Method Call & Why Does it Work
# p decrypt(encrypt("swordfish"))
# This works because the decrypt method will run the output of the encrypt method that is nested inbetween. The encrypt output is "txpsegjti" so the final run of this line is decrypt("txpsegjti") which returns "swordfish"

#DRIVER CODE
