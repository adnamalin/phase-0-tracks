#Roomate Accountability Program
#3 Tables:
  #Contact Info
    #Users can: View & Update
  #Who Did It Last (Chores)
    #Users can: View & Update
  #Bills
    #Users can: View & Update
    #Columns are bill type, rows are months

require 'sqlite3'

#Create database
$roomate_db = SQLite3::Database.new("RAP.db")
$roomate_db.results_as_hash = true

#Create Contact Info table
create_contact_table = <<-SQL
  CREATE TABLE IF NOT EXISTS contact_info(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    phone INT,
    email VARCHAR(255)
  )
SQL
$roomate_db.execute(create_contact_table)

#Create method to add roomates
def add_roomate(roomate_db, name, phone, email)
  roomate_db.execute("INSERT INTO contact_info (name, phone, email) VALUES (?,?,?)", [name, phone, email])
end
