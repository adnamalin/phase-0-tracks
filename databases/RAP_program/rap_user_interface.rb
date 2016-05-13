require_relative 'rap_business_logic'
require 'sqlite3'
#Trying use two different files to run this program. I want to figure out if I can access roomate_db across files without making it a global variable.

puts "Add roommate name:"
rm_name = gets.chomp
puts "Add roommate phone number (format: ##########):"
rm_phone = gets.chomp.to_i
puts "Add roommate email:"
rm_email= gets.chomp
add_roomate($roomate_db, rm_name, rm_phone, rm_email)

contact_print = $roomate_db.execute("SELECT * FROM contact_info")
p contact_print
