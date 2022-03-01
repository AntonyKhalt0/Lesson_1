print "Введите ваше имя: "
name = gets.chomp
name.capitalize!

print "Введите ваш рост: "
height = gets.chomp.to_i

ideal_weight = (height - 110) *1.15
ideal_weight < 0 ? puts("Ваш вес уже оптимальный") : puts("#{name}, ваш идеальный вес = #{ideal_weight} кг")

=begin #Альтернативное решение
if ideal_weight < 0
	puts "Ваш вес уже оптимальный"
else 
	puts "#{name}, ваш идеальный вес = #{ideal_weight} кг"
end
=end