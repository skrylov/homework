puts "Введите день, месяц и год - программа определит порядковый номер дня в году.
Введите день:"
day = gets.chomp.to_i

puts "Введите месяц:"
month = gets.chomp.to_i

puts "Введите год:"
year = gets.chomp.to_i

if year%2 == 0
	feb = 29
	puts "Это високосный год."
else
	feb = 28
end


arr_mon = [31, feb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
for i in (1..month-1)
	day_num += arr_mon[i-1]
end

puts "#{day_num}"