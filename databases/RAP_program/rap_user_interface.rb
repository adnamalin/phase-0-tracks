require_relative 'rap_business_logic'
require_relative 'interface_methods'
require 'sqlite3'
#Trying use two different files to run this program. I want to figure out if I can access roomate_db across files without making it a global variable.

#Ask user if they want to work with contact info, or chores
  #Contact info: add roomate, update roomate, or view roomates
  #Chores: add chores, view chores, or update who did it Last

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
          puts "To add chore type 'add'\nTo update who did a chore last type 'update'\nTo remove chore type 'remove'\nTo view chores type 'view'\nWhen finished type 'quit'"
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

puts "Thanks for using the RAP Program!"
