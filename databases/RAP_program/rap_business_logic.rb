#Roomate Accountability Program
#3 Tables:
  #Contact Info
    #Users can: View & Update
  #Who Did It Last (Chores)
    #Users can: View & Update
  #Bills
    #Users can: View & Add
    #Columns are bill type, rows are months

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

#Method to add roomates
def add_roomate(database, name, phone, email)
  database.execute("INSERT INTO contact_info (name, phone, email) VALUES (?,?,?)", [name, phone, email])
end

#Method to update contact info
def update_roomate(database, update_name, to_be_updated, new_value)
  database.execute("UPDATE contact_info SET #{to_be_updated} = '#{new_value}' WHERE name = '#{update_name}'")
end

#Method to view roomates
def view_roomates
   contact_print = $roomate_db.execute("SELECT * FROM contact_info")
   contact_print.each do |roomate|
     puts "#{roomate['name']}'s phone number is #{roomate['phone']} and email is #{roomate['email']}"
   end
end
