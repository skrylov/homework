puts "Введите первое число. Программа посчитает сумму чисел и среднее арифметическое только тех чисел, которые делятся на второе число."
a = gets.chomp.to_i
puts "Введите второе число.."
b = gets.chomp.to_i

arr = (1..a).to_a
even_arr = arr.select { |item| item%b == 0}

sum = 0.0
even_arr.each do |i|
	sum = sum + i
end
average = sum / even_arr.size
puts "Сумма ЧЕТНЫХ чисел до числа #{a} равна #{sum}, а их среднее арифметическое равно #{average}"