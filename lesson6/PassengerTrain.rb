require_relative 'train'

class PassengerTrain < Train

	def initialize(train_num)
		@train_num = train_num
		super
	end

	def add_car(car)
		super if car.class == PassengerCar
	end
end
