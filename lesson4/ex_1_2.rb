puts "Введите целое число"
a = gets.chomp.to_i

arr = (1..a)

sum = 0.0
index = 1
while index <= a do
	sum = sum + index
	index += 1
end
puts "#{sum}"