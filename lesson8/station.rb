class Station

	@@stations_all = []

	def initialize(name)
		@name = name
		validate!
		@train_list = []
		@@stations_all << self
		
	end

	def validate!
		raise ArgumentError, "Station name can not be empty." if @name.nil? || @name.empty?
		raise ArgumentError, "Station name must not be shorter than 3 symbols." if @name.length < 3 
		raise ArgumentError, "Station name must be symbols." if @name.class != String 
	end

	def block_station
		@train_list.each { |train| yield(train) }

	def valid?
		validate!
		true
	rescue 
		false
	end

	def self.all
		@@stations_all
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