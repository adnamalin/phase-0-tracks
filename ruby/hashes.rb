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