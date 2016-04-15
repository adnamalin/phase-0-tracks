#BEGIN
#Encrypt Method
#Ask user what password they would like to encrypt
#Define password to encrypt
#Identify index numbers for letters in password
#Any space character remains a space character after encryption
#Shift letters by one to encrypt
#Print encrypted password
#END

puts "Do you want to encrypt or decrypt?"
enc_or_dec = gets.chomp

if enc_or_dec == "encrypt"
      puts "What do you want to encrypt?"
      enc_password = gets.chomp

      def encrypt(input)
        index = 0
          while index < input.length
            input[index] = input[index].next[0]
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

elsif enc_or_dec == "decrypt"

    puts "What do you want to decrypt?"
    dec_password = gets.chomp

    def decrypt(input)

    abc_code = " abcdefghijklmnopqrstuvwxyz "

      index = 0
        while index < input.length
            input[index] = abc_code[abc_code.index(input[index])-1]
            index += 1
        end
        p input
    end
    decrypt(dec_password)

else
  puts "That is not a valid chocie"
end
