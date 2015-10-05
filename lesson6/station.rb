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

	def list_type_pass
		@train_list.select { |train_type| train_type.class == PassengerTrain } 
	end

	def list_type_cargo
		@train_list.select { |train_type| train_type.class == CargoTrain } 
	end
end