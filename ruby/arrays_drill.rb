def build_array(value1, value2, value3)
  new_array = [value1, value2, value3]
end

p build_array("hello", 2, "world")

def add_to(array, value)
  array << value
end

p add_to([1,2,3,4], 5)

# # 1.
# array = Array.new
# array = []
#
# # 2.
# p array.push(1,2,3,4,5)
#
# #3
#
# p array.delete_at(2)
# p array
#
# #4
# p array.insert(2, "hello")
#
# # 5
# p array.shift
# p array
#
# # 6
# p array.include?("hello")
#
# # 7
# array_two = ["one", "two"]
#
# # 8
#
# p array.concat(array_two)
