class CargoCar
	def initialize
	@free_space = 100 #Имеет максимальный объем граза
	end

	def take_space #Загрузить груз. Груз не загружается, если свободного места нет
		@free_space -= 10 if @free_space >= 0 
	end

	def	free_space #Можно выгрузить гуз
		@free_space += 10 if @free_space < 100 && @free_space != 0
	end

	def print_free_space #Можно посмотреть, сколько есть свободного места
		@free_space
	end

	def print_occupied_space #Можно посмотреть, какой объемз занят
		100 - @free_space	
	end
end