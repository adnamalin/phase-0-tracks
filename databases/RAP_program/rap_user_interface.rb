require_relative 'rap_business_logic'
require 'sqlite3'
#Trying use two different files to run this program. I want to figure out if I can access roomate_db across files without making it a global variable.

#Ask user if they want to work with contact info, chores, or bills.
  #Contact info: add roomate, update roomate, or view roomates
  #Chores: view chores, or update who did it Last
  #Bills: view bills or add new bill value

#TESTING ADD ROOMATE
  # puts "Add roommate name:"
  # rm_name = gets.chomp
  # puts "Add roommate phone number (format: ##########):"
  # rm_phone = gets.chomp.to_i
  # puts "Add roommate email:"
  # rm_email= gets.chomp
  # add_roomate($roomate_db, rm_name, rm_phone, rm_email)
  #
  # contact_print = $roomate_db.execute("SELECT * FROM contact_info")
  # p contact_print

#TESTING UPDATE ROOMATE INFO
  # puts "Who's info do you want to update?"
  # update_name = gets.chomp
  # puts "What field do you want to update? name, phone, email"
  # to_be_updated = gets.chomp.downcase
  # puts "Enter in new info:"
  #   if to_be_updated == "phone"
  #   new_value = gets.chomp.to_i
  #   else
  #     new_value = gets.chomp
  #   end
  # update_roomate($roomate_db, update_name, to_be_updated, new_value)

view_roomates
