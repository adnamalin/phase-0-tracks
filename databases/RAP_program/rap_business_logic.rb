#Roomate Accountability Program
#Contact info: add roomate, update roomate, or view roomates
#Chores: add chores, view chores, or update who did it Last

require 'sqlite3'

#Create database
$roomate_db = SQLite3::Database.new("RAP.db")
$roomate_db.results_as_hash = true

#Create contact_info table
  create_contact_table = <<-SQL
    CREATE TABLE IF NOT EXISTS contact_info(
      id INTEGER PRIMARY KEY,
      name VARCHAR(255),
      phone INT,
      email VARCHAR(255)
    )
  SQL
  $roomate_db.execute(create_contact_table)

#Create Chores table
  create_chores_table = <<-SQL
    CREATE TABLE IF NOT EXISTS chores(
      id INTEGER PRIMARY KEY,
      chore VARCHAR(255),
      last_to_do VARCHAR(255)
    )
  SQL
  $roomate_db.execute(create_chores_table)

###############Contact Info Methods

#Method to add roomates
def add_roomate(database, name, phone, email)
  database.execute("INSERT INTO contact_info (name, phone, email) VALUES (?,?,?)", [name, phone, email])
end

#Method to update contact info
def update_roomate(database, update_id, to_be_updated, new_value)
  database.execute("UPDATE contact_info SET #{to_be_updated} = '#{new_value}' WHERE id = #{update_id}")
end

#Method to remove roomate
def remove_roomate(database, to_remove)
  database.execute("DELETE FROM contact_info WHERE id = #{to_remove}")
end

#Method to view roomates
def view_roomates
   contact_print = $roomate_db.execute("SELECT  * FROM contact_info")
   contact_print.each do |roomate|
     puts "#{roomate['id']}: #{roomate['name']}'s phone number is #{roomate['phone']} and email is #{roomate['email']}"
   end
end

###############Chore Methods

#Method to add chore
def add_chore(database, chore, last_to_do)
  database.execute("INSERT INTO chores (chore, last_to_do) VALUES (?,?)", [chore, last_to_do])
end

#Method to update who last did the chore
def update_chore(database, update_id, new_value)
  database.execute("UPDATE chores SET last_to_do = '#{new_value}' WHERE id = #{update_id}")
end

#Method to remove chore
def remove_chore(database, to_remove)
  database.execute("DELETE FROM chores WHERE id = #{to_remove}")
end

#Method to view chores
def view_chores
  chores_print = $roomate_db.execute("SELECT * FROM chores")
  chores_print.each do |chore|
    puts "#{chore['id']}: #{chore['chore']} was last done by #{chore['last_to_do']}"
  end
end
