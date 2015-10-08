class PassengerCar
	def initialize
	@free_places = 40 #Имеет максимальное кол-во мест и номер
	end

	def take_place #Занять свободное место. Место нельзя занять, если свободных нет (занятые места -1)
		@free_places -= 1 if @free_places >= 0 
	end

	def	free_place #Можно освободить место (свободные места +1)
		@free_places += 1 if @free_places < 40 && @free_places != 0
	end

	def print_vacant_places #Можно посмотреть, сколько есть свободных мест
		@free_places
	end

	def print_occupied_places #Можно посмотреть, сколько есть занятых мест
		40 - @free_places	
	end
end
