class Station

	def initialize(name)
		@name = name
		@train_list = []
	end

	def arrival(train)
		@train_list << train
	end

	def departure(train)
		@train_list.delete(train)
	end

	def list
		@train_list
	end
end