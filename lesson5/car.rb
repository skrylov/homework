class Car
	def initialize (speed, model)
		@speed = speed
		@model = model
	end

	def initialize
		@speed = 0
	end

	def accelerate
		@speed += 5
	end 
		
	def set_speed(speed)
		@speed = speed
	end

	def start_engine
		puts "Wroom!"
	end

	def beep
		puts "beep beep"
	end

	def go
		@speed = 50
	end

	def stop
		@speed = 0
	end

	def print_speed
		print @speed
	end
end
