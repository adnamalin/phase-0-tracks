require_relative 'rap_business_logic'
require 'sqlite3'
#Trying use two different files to run this program. I want to figure out if I can access roomate_db across files without making it a global variable.

#Ask user if they want to work with contact info, or chores
  #Contact info: add roomate, update roomate, or view roomates
  #Chores: add chores, view chores, or update who did it Last

def add_roomate_interface
  puts "Add roommate name:"
  rm_name = gets.chomp.downcase.capitalize
  puts "Add roommate phone number (format: ##########):"
  rm_phone = gets.chomp.to_i
  puts "Add roommate email:"
  rm_email= gets.chomp
  add_roomate($roomate_db, rm_name, rm_phone, rm_email)
end
def update_roomate_interface
  puts "Who's info do you want to update?"
  update_name = gets.chomp.downcase.capitalize
  puts "What field do you want to update? name, phone, email"
  to_be_updated = gets.chomp.downcase
  puts "Enter in new info:"
    if to_be_updated == "phone"
    new_value = gets.chomp.to_i
    else
      new_value = gets.chomp
    end
end

puts "Hello there roomate! Do you want to work with contact info or chores today?"
decision = gets.chomp.downcase

  case decision
  when "contact info"
    puts "Do you want to: add roomate, update, roomate, or view roomates?"
    roomate_task = gets.chomp.downcase
      if roomate_task == "add roomate"
        add_roomate_interface
      elsif roomate_task == "update roomate"
        update_roomate_interface
      elsif roomate_task == "view roomates"
        view_roomates
      else
        puts "Not valid task"
      end

  when decision = "chores"
    puts "Start chores loop"
  else
    puts "I didn't catch that, did you want to work with contact info or chores?"
  end


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

# view_roomates

#TESTING ADD CHORE
  # puts "Add chore:"
  # input_chore = gets.chomp
  # puts "Who did it last?"
  # input_last_done_by = gets.chomp
  # add_chore($roomate_db, input_chore, input_last_done_by)
  # view_chores

#TESTING UPDATE CHORE
  # puts "What Chore do you want to update?"
  # update_chore = gets.chomp
  # puts "Who did it last?"
  # new_value = gets.chomp
  # update_chore($roomate_db, update_chore, new_value)
  # view_chores
