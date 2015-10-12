#Меню
#Приветствие. Описание программы
#Пункты управления. Введите нужный пункт меню, например 2.

#1. Создание станции
	
	#Требования к названию
	#Задать название станции
	#Создать ещё одну станцию?



#3. Создание грузового поезда
	#Добавить вагон
	#Загрузить вагон
	#Разгрузить вагон
	#Удалить вагон

#4. Создание пассажирского поезда
	#Добавить вагон
	#Заполнять вагон
	#Освобождать вагон
	#Удалить вагон

#2. Создание маршрута
	#Добавление станции в маршрут

#5. Просмотреть список созданных станций
	#Просмотреть список поездов на конкретной стацнии

#6. Выход

require_relative 'train'
require_relative 'PassengerTrain'
require_relative 'PassengerCar'
require_relative 'CargoTrain'
require_relative 'CargoCar'
require_relative 'station'
require_relative 'TrainBrand'


class Menu

	def initialize
		@stations = []
		@trains = {}
		@pass_cars =[]
		@cargo_cars = []
		@routes =[]
	end

	def menu
		loop do
		puts "Меню по управлению железной дорогой:"
		puts "1. Управление станциями"
		puts "2. Создание поездов"
		puts "3. Создание вагонов"
		puts "4. Управление поездами"
		puts "5. Просмотр сведений о созданных поездах и станциях"
		puts "0. Выход"

		puts "Введите нужный пункт меню, например, 2:"
		
		input = gets.chomp.to_i

			case input
			when 1
				self.create_station
			
			when 2
				self.create_trains
				
			when 3
				self.create_cars
			when 4
				self.manipulate_trains
			when 0
				break
			end
		end
	end	

	def create_station
		puts "Введите название новой станции"
		name = gets.chomp.strip
		@stations << Station.new(name)
		puts "Станция #{name} создана!"
	end

	def create_trains
		puts "Какой поезд вы хотите создать?"
		puts "Грузовой - введите '1' "
		puts "Пассажирский - введите '2' "
		puts "Для возврата в предыдущее меню введите '0'"

		input = gets.chomp.to_i

		case input
			when 1
				self.create_cargo_train

			when 2
				self.create_pass_train

			when 0
				self.menu
		end 

	end

	def create_cargo_train
		puts "Введите номер поезда (AAA-BB), где A обязательные цифры или буквы, B - небязательные."
		train_num = gets.chomp.strip
		@trains["#{train_num}"] = CargoTrain.new(train_num)
		puts "Грузовой поезд с номером #{train_num} успешно создан!"
		
		puts "Для возврата введите нажмите Enter "

		gets.chomp.to_i		
	end

	def create_pass_train
		puts "Введите номер поезда (AAA-BB), где A обязательные цифры или буквы, B - небязательные."
		train_num = gets.chomp.strip
		@trains["#{train_num}"] = PassengerTrain.new(train_num)
		puts "Пассажирский поезд с номером #{train_num} успешно создан!"

		puts "Для возврата введите нажмите Enter "

		gets.chomp.to_i
	end

	def create_cars
		puts "Какой вагон вы хотите создать?"
		puts "1 - Пассажирский"
		puts "2 - Грузовой"
		puts "Для выхода введите 0"

		input = gets.chomp.to_i

		case input
			when 1
				@pass_cars << PassengerCar.new
				puts 'Пассажирский вагон создан. Нажмите 1, чтобы посадить в вагон пассажира или 2, чтобы убрать пассажира.'
				puts "Уже созданные вагоны: #{@cars}"
				puts 'Для выхода нажмите 0'
				input = gets.chomp.to_i

				loop do

					case input
						when 1
							@pass_cars[-1].take_place
							puts "В вагоне еще #{@pass_cars[-1].print_vacant_places} свободных мест."
							puts "Добавить пассажира - 1, выход - 0"
							input = gets.chomp.to_i
						when 2
							@pass_cars[-1].free_place
							puts "В вагоне еще #{@pass_cars[-1].print_vacant_places} свободных мест."
							puts "Убрать пассажира - 1, выход - 0"
							input = gets.chomp.to_i
						when 0
							break
					end
				end
			when 2
				@cargo_cars << CargoCar.new
				puts 'Грузовой вагон создан. Нажмите 1, чтобы загрузить груз в вагон или 2, чтобы убрать разгрузить груз.'
				puts "Уже созданные вагоны: #{@cargo_cars}"
				puts 'Для выхода нажмите 0'
				input = gets.chomp.to_i

				loop do

					case input
						when 1
							@cargo_cars[-1].take_space
							puts "В вагоне еще #{@cargo_cars[-1].print_free_space} свободного места"
							puts "Добавить груз - 1, выход - 0"
							input = gets.chomp.to_i
						when 2
							@cargo_cars[-1].free_space
							puts "В вагоне еще #{@cargo_cars[-1].print_free_space} свободного места"
							puts "Удалить груз - 1, выход - 0"
							input = gets.chomp.to_i
						when 0 
							self.create_cars
					end
				end
			when 0
				self.create_cars
		end
	end

	def manipulate_trains
		puts "Выберите поезд по номеру или нажмите 0 для выхода:"
		puts "#{@trains.keys}"
		input_train_num = gets.chomp

		puts "Вы выбрали поезд номер #{input_train_num}. "
		puts "Чтобы разогнаться, нажмите 1"
		puts "Чтобы тормозить, нажмите 2"
		puts "Чтобы посмотреть текущую скорость, нажмите 3"

		puts "Для выхода и смены поезда нажмите 0"
		input = gets.chomp.to_i

		case input
		when 0
			self.manipulate_trains
		when 1
			loop do
			@trains[input_train_num].accelerate
			puts "Скорость поезда #{@trains[input_train_num].print_speed }"
			puts "Увеличить скорость - 1, сбросить скорость - 2, выход - 0"
			input = gets.chomp.to_s.strip
			end
		when 2
			@trains[input_train_num].slow
			puts "Скорость поезда #{@trains[input_train_num].print_speed }"
			puts "Увеличить скорость - 1, сбросить скорость - 2, выход - 0"
			input = gets.chomp.to_i
		when 3
			puts "Скорость поезда #{@trains[input_train_num].print_speed }"
			puts "Увеличить скорость - 1, сбросить скорость - 2, выход - 0"
			input = gets.chomp.to_i
		when 0
			self.manipulate_trains
		end



	end


end

m = Menu.new
m.menu