class TodoList

	def initialize(lister)
		@list = lister
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(mow)
		@list.delete(mow)
	end

	def get_item(i)
		@list[i]
	end
end
