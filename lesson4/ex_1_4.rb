puts "Введите целое число"
a = gets.chomp.to_i

arr = (1..a).to_a

sum = 0.0
arr.each do |i|
	sum = sum + i
end
puts sum