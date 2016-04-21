# PSEUDOCODE: 
# Ask designer for multiple pieces of information about a client. 
# Store responses.
# Display responses in a hash.
# Display a question asking if any of the items need to be changed.
# Give option for none.
# If something does need to be changed, ask for updated value.
# Replace original value with new value.
# Print final hash.

 # Create empty hash
 client = {}

 # Obtain multiple pieces of information from the designer about the client 
 puts "What is the client's name?"
 client[:name] = gets.chomp.capitalize

 puts "Please enter the client's address:"
 client[:addr] = gets.chomp

 puts "Please enter the client's age:"
 client[:age] = gets.chomp.to_i

 puts "How many children does the client have?"
 client[:children] = gets.chomp.to_i

 puts "What is your decor theme?"
 client[:decor] = gets.chomp

 puts "Are you willing to have a interior design consultation? (y/n)"
 client[:consult] = gets.chomp

 # Print hash
 p client

 # Find out if any of the answers need to be fixed/updated.
 puts "Would you like to update any information? Please respond with one of the following: 'name', 'address', 'age', 'children', 'decor', or 'consult' or 'none'."
 change_hash = gets.chomp
 new_answer = change_hash.to_sym

 if new_answer == :name
	puts "What would you like the new name to be?"
	client[new_answer] = gets.chomp.capitalize
elsif new_answer == :age
	puts "What would you like the new age to be?"
	client[new_answer] = gets.chomp.to_i
elsif new_answer == :children
	puts "How many children does the client have?"
	client[new_answer] = gets.chomp.to_i
elsif new_answer == :decor
	puts "What decor style would the client like?"
	client[new_answer] = gets.chomp
elsif new_answer == :consult
	puts "Would the client like a consultation?"
	client[new_answer] = gets.chomp
else puts "Thanks for your input."
end

p client
