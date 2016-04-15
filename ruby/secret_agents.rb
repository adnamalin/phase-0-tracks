

#BEGIN
#Encrypt Method
#Ask user what password they would like to encrypt
#Define password to encrypt
#Identify index numbers for letters in password
#Any space character remains a space character after encryption
#Shift letters by one to encrypt
#Print encrypted password
#END

puts "What do you want to encrypt?"
enc_password = gets.chomp

def encrypt(input)
  index = 0
    while index < input.length
      input[index] = input[index].next!
      index += 1
    end
    p input
end

encrypt(enc_password)



#BEGIN
# Decrypt Method
#Ask user what password they would like to decrypt
#Define password to decrypt
#Identify index numbers for letters in password
#Any space character remains a space character after encryption
#Call index on each letter of the password
#Use index number found to compare with "abcdefghijklmnopqrstuvwxyz"
#Call index number -1
#Print decrypted password
#END
