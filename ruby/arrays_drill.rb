shopping_list = []
p shopping_list

shopping_list.concat(["milk", "eggs", "flour", "sugar", "oil"])

shopping_list.delete_at(2)
p shopping_list

shopping_list.insert(2, "salt")
p shopping_list

shopping_list.shift
p shopping_list

if shopping_list.include?("eggs")
	puts "Shopping list includes eggs."
else puts "Shopping list doesn't include eggs."
end