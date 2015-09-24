puts "Введите целое число"
a = gets.chomp.to_i

arr = (1..a)

sum = 0.0
for i in arr
	sum += i
end

result = sum / arr.size
puts "#{result}" 
