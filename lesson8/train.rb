require_relative 'TrainBrand'

class Train
	
	include TrainBrand
	
	@@train_all = {} #ВОТ ЗДЕСЬ нужно продолжить делать вывод поездов по типу запрашивая номер
	
	def self.find(train_num)
		@@train_all[train_num]
	end

	def initialize (train_num)
		@train_num = train_num
		@cars_num = 0
		@speed = 0
		@accelerate = 10
		@cars_list =[]
		@route_list = []
		@current_station = nil
		@@train_all[train_num] = self
		validate!
	end

	 def validate!
    	raise ArgumentError, "Number can't be blank" if @train_num.nil? || @train_num.empty?
    	raise ArgumentError, "Number format must be 'aaa-aa', where 'a' is either letter or digit" if @train_num !~ /\A([a-z]|\d){1,3}-?([a-z]|\d){2}\z/i
    	true
  end

	def show
		@@train_all
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