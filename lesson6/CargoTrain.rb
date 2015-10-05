require_relative 'train'

class CargoTrain < Train

	def initialize(train_num)
		@train_num = train_num
		super
	end

	def add_car(car)
		super if car.class == CargoCar
	end
end