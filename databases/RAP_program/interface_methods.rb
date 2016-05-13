require_relative 'rap_business_logic'
#Trying use two different files to run this program. I want to figure out if I can access roomate_db across files without making it a global variable.

def add_roomate_interface
  puts "Add roommate name:"
    rm_name = gets.chomp.downcase.capitalize
  puts "Add roommate phone number (format: ##########):"
    rm_phone = gets.chomp.to_i
  puts "Add roommate email:"
    rm_email= gets.chomp
  add_roomate($roomate_db, rm_name, rm_phone, rm_email)
  puts "Updated Contact Info:"
    view_roomates
end

def update_roomate_interface
  view_roomates
    puts "Which number do you want to update?"
    update_id = gets.chomp.to_i
    puts "What field do you want to update? name, phone, email"
    to_be_updated = gets.chomp.downcase
    puts "Enter in new info:"
      if to_be_updated == "phone"
      new_value = gets.chomp.to_i
      else
        new_value = gets.chomp
      end
     update_roomate($roomate_db, update_id, to_be_updated, new_value)
   puts "Updated Contact Info:"
    view_roomates
end

def remove_roomate_interface
  view_roomates
  puts "Which number do you want to remove?"
  to_remove = gets.chomp.to_i
  remove_roomate($roomate_db, to_remove)
  puts "Updated Contact Info:"
   view_roomates
end

def add_chore_interface
  puts "Add chore:"
    input_chore = gets.chomp.downcase.capitalize
  puts "Who did it last?"
    input_last_done_by = gets.chomp.downcase.capitalize
  add_chore($roomate_db, input_chore, input_last_done_by)
  puts "Updated Chore List:"
    view_chores
end

def update_chore_interface
  view_chores
    puts "Which Chore number do you want to update?"
    update_chore = gets.chomp.to_i
    puts "Who did it last?"
    new_value = gets.chomp.downcase.capitalize
  update_chore($roomate_db, update_chore, new_value)
    puts "Updated Chore List:"
    view_chores
end

def remove_chore_interface
  view_chores
  puts "What number you want to remove?"
    to_remove = gets.chomp.downcase.capitalize
  remove_chore($roomate_db, to_remove)
  puts "Updated Chore List:"
    view_chores
end
