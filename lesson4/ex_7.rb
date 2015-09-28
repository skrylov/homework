=begin
Запросить у пользователя кол-во студентов в группе. 
Для каждого студента запросить оценку по 100-бальной шакле, вывести среднюю оценку группы. 
Для решения использовать массивы. 
=end

puts "Введите кол-во студентов в группе."
student_num = gets.chomp.to_f

s_array = Array.new

student_mark = 0
while student_mark != 333
	puts "Введите оценку от 1 до 100"
	student_mark = gets.chomp.to_f
	s_array << student_mark
	break if student_mark == 333
end

s_array.pop
result = s_array.inject {|a, b| a + b}

puts "Средняя оценка группы #{result/student_num}"