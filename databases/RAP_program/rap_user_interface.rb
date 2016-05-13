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
end
def remove_roomate_interface
  view_roomates
  puts "Which number do you want to remove?"
  to_remove = gets.chomp.to_i
  remove_roomate($roomate_db, to_remove)
end
def add_chore_interface
  puts "Add chore:"
    input_chore = gets.chomp.downcase.capitalize
  puts "Who did it last?"
    input_last_done_by = gets.chomp.downcase.capitalize
  add_chore($roomate_db, input_chore, input_last_done_by)
end
def update_chore_interface
  puts "Which Chore number do you want to update?"
  update_chore = gets.chomp.to_i
  puts "Who did it last?"
  new_value = gets.chomp.downcase.capitalize
  update_chore($roomate_db, update_chore, new_value)
end
def remove_chore_interface
  view_chores
  puts "What number you want to remove?"
  to_remove = gets.chomp.downcase.capitalize
  remove_chore($roomate_db, to_remove)
end

loop do
  puts puts "----------HOME MENU---------"
  puts "Hello there roomate! Do you want to work with: contact info or chores?\nType 'done' when finished"
  decision = gets.chomp.downcase
break if decision == "done"
    case decision
      when "contact info"
        roomate_task = ""
        while roomate_task != "quit"
          puts "----------MENU---------"
          puts "To add roomate type 'add'\nTo update roomate type 'update'\nTo remove roomate type 'remove'\nTo view roomates type 'view'\nWhen finished type 'quit'"
          roomate_task = gets.chomp.downcase
          puts "----------RESULTS---------"
            if roomate_task == "add"
              add_roomate_interface
            elsif roomate_task == "update"
              update_roomate_interface
            elsif roomate_task == "remove"
              remove_roomate_interface
            elsif roomate_task == "view"
              view_roomates
            elsif roomate_task == "quit"
              puts "Returning to Home Selection"
            else
              puts "Not valid task"
            end
        end
      when decision = "chores"
        chore_task = ""
        while chore_task != "quit"
          puts "----------MENU---------"
          puts "To add chore type 'add'\nTo update who did a chore last type 'update'\nTo remove chore type 'remove'\nTo view chores type 'view'\n When finished type 'quit'"
          chore_task = gets.chomp.downcase
          puts "----------RESULTS---------"
            if chore_task == "add"
              add_chore_interface
            elsif chore_task == "update"
              update_chore_interface
            elsif chore_task == "remove"
              remove_chore_interface
            elsif chore_task == "view"
              view_chores
            elsif chore_task == "quit"
              puts "Returning to Home Selection"
            else
              puts "Not valid task"
            end
        end
    end
end

"Thanks for using the RAP Program!"
