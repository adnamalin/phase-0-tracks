#PSEUDOCODE
  # Method to create a list
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # steps:
    # split inputted string into array
    # set default quantity
    # Create hash with array as keys and quant as values
    # print the list to the console (call print method)
  # output: hash run through the print method
  # Method to add an item to a list
  # input: item name and optional quantity
  # steps: insert key into hash with quantity value
  # output: hash
  # Method to remove an item from the list
  # input: item name to remove
  # steps: Use item name as key to remove said key
  # output: hash with removed item(s)
  # Method to update the quantity of an item
  # input:  item name to update and new quantity
  # steps: use item name as key and use new quantity to update value
  # output: hash with updated quantities
  # Method to print a list and make it look pretty
  # input: completed hash
  # steps: iterate through hash and display in formatted string
  # output: string

# ORIGNAL
# def create_list(items)
#   item_array = items.split(' ')
#   item_list = {}
#   item_array.each do |item|
#     item_list[item] = 1
#   end
#   return item_list

# end

# list = create_list("carrots apples cereal pizza")
# p list

# def add_item(item_list, item, quantity = 1)
#   item_list[item] = quantity
# end

# add_item(list, "milk")
# p list

# def remove_item(item_list, item)
#   item_list.delete(item)
# end

# remove_item(list, "pizza")
# p list

# def update_item(item_list, item, quantity)
#   item_list[item] = quantity
# end

# update_item(list, "apples", 5)
# p list

# def print_list(item_list)
#   item_list.each do |item, qty|
#     puts "#{item} - #{qty}"
#   end
# end

# print_list(list)

# REFACTOR

def create_list(items)
  item_list = {}
  items.split(' ').each{ |item| item_list[item] = 1 }
  print_list(item_list)
end

def add_update_item(item_list, item, quantity = 1)
  item_list[item] = quantity
end

def remove_item(item_list, item)
  item_list.delete(item)
end

def print_list(item_list)
  item_list.each { |item, qty| puts "#{item} - #{qty}" }
end

list = create_list("carrots apples cereal pizza")
p list
add_update_item(list, "milk")
p list
remove_item(list, "pizza")
p list
add_update_item(list, "apples", 5)
p list
print_list(list)

#REFLECT

# What did you learn about pseudocode from working on this challenge? I learned how to better write pseudocode then I had been doing. I liked the example they gave us to work with and I thought it was readble and simple.

# What are the tradeoffs of using arrays and hashes for this challenge? I think using a hash is easier in this challenge as it makes sense for the context and I think calling the key/value makes more sense then calling indexes when we were printing the list. Also I think its more readable to use a hash in this case when we are creating methods to alter the list.

# What does a method return? The last line of code in the method.

# What kind of things can you pass into methods as arguments? hashes, array,s strings, integers, etc

# How can you pass information between methods? by storing the results of a method into a variable outside of the method like we did with list.

# What concepts were solidified in this challenge, and what concepts are still confusing? Having multiple methods work together and refractoring. I for sure want to improve my refractoring skills.
