puts "Введите целое число. Программа посчитает сумму чисел до вашего числа и среднее арифметическое этих чисел."
a = gets.chomp.to_i

arr = (1..a).to_a

sum = 0.0
arr.each do |i|
	sum = sum + i
end
average = sum / arr.size
puts "Сумма числе до числа #{a} равна #{sum}, а среднее арифметическое равно #{average}"
