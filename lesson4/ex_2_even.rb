puts "Введите целое число. Программа посчитает сумму чисел до вашего числа и среднее арифметическое этих чисел."
a = gets.chomp.to_i

arr = (1..a).to_a
even_arr = arr.select { |item| item%2 == 0}

sum = 0.0
even_arr.each do |i|
	sum = sum + i
end
average = sum / even_arr.size
puts "Сумма ЧЕТНЫХ чисел до числа #{a} равна #{sum}, а их среднее арифметическое равно #{average}"