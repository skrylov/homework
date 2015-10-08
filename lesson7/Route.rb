class Route

	def initialize (first_station, last_station)
		@route = [first_station, last_station]
	end

	def add_to_route(station_name)
		@route.insert(1, station_name)
	end

	def del_from_route(station_name)
		@route.delete(station_name)
		print @route
	end

	def print_route
		print @route
	end

	def print_gap_stations
		print @route[1...-1]
	end
end