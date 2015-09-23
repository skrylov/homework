a = gets.chomp.to_f
oper = gets.chomp
b = gets.chomp.to_f

case oper
when '+'
	result = a + b
when '-'
	result = a - b
when '*'
	result = a * b
when '/'
	result = a / b
else
	puts "Неверное значение"
end

puts "#{a} #{oper} #{b} = #{result}"
