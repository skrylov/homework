class Train
	def initialize (train_num, train_type, cars_num)
		@train_num = train_num
		@train_type = train_type
		@cars_num = cars_num
		@speed = 0
		@accelerate = 10
	end	
		
	def accelerate
		@speed += @accelerate if @speed <= 110
	end

	def print_speed
		print @speed
	end

	def slow
		@speed -= 10 if @speed > 0
	end

	def add_car
		@cars_num += 1 if @speed == 0
	end

	def remove_car
		@cars_num -= 1 if @speed == 0
	end

	def cars_num
		print @cars_num
	end
end