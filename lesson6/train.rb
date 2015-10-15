require_relative 'TrainBrand'

class Train
	include TrainBrand

	def initialize (train_num)
		@train_num = train_num
		@cars_num = 0
		@speed = 0
		@accelerate = 10
		@cars_list =[]
		@route_list = []
		@current_station = nil
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

	def add_car(car)
		@cars_list << car && @cars_num += 1 if @speed == 0
	end

	def remove_car
		@cars_list.pop && @cars_num -= 1 if @speed == 0
	end

	def cars_list
		puts @cars_list
		print @cars_list.count
	end

	#def car_number(car) Хотел так выводить номер вагона. Почему то так не работает :(
	#	@cars_list[car]
	#end

	def get_route(route_name)
		@route_list << route_name
	end

	def go(station_name)
		@current_station = station_name
	end

	def show_current_station
		print @current_station
	end

	def show_prev_station
		@route.find_index(@current_station) - 1
	end
end