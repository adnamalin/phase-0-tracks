def add_to_array(array, item)
	array << item
end

p add_to_array(["a", "b", "c", 1, 2], 3)	


def build_array(a, b, c)
	build_array = [a, b, c]
end

p build_array(1, "two", nil)

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

produce_list = ["broccoli", "carrot", "onion"]

grocery_list = shopping_list + produce_list
p grocery_list