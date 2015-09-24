puts "Введите год"
year = gets.chomp.to_f
puts "Введите порядковый номер месяца"
month = gets.chomp.to_f
puts "Введите сегодняшнее число"
day = gets.chomp.to_f



case month
when '1'
	a = 31
when '2'
	b = 28
when '3'
	c = 31
when '4'
	d = 30
when '5'
	e = 31
when '6'
	f = 30
when '7'
	g = 31
when '8'
	h = 31
when '9'
	i = 30
when '10'
	j = 31
when '11'
	k = 30
when '12'
	l = 31
else
	puts "Неверное значение"
end

if month == (1..12)

if year%4 == 0
	result = 
	puts "Порядковый номер дня #{}, а год - високосный"
elsif year%4 !=0
	result = 
	puts "Порядковый номер дня #{}"
	
end

result = day + a 




=begin
	
rescue Exception => e
	
end
case month
when '2'
yeardays1 = (1..366).to_a	


yeardays = (1..365).to_a

result = 

puts "Порядковый номер вашей даты в этом году "
=end