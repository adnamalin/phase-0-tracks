# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @request_campuses = db.execute("SELECT * FROM campus_request")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

######9.5 Pair
get '/campus_request' do
  erb :campus_request
end

post '/cityrequest' do
  name = params['name']
  city = params['city']
  db.execute("INSERT INTO campus_request (name, city) VALUES (?,?)", [name,city])
  redirect '/'
end
