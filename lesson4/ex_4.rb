puts "Программа вычислит сумму степеней до вашего числа. Например, для 2 будет 1*1 + 2*2 = 5. Введите число:"
a = gets.chomp.to_f

arr = (1..a).to_a
arr.collect! {|num| num * num }
b = arr.inject(0) { |i1, i2| i1 + i2  }
puts "Результат: #{b}"