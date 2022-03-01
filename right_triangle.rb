print "Введите длину 1 стороны треугольника: "
first_side = gets.chomp.to_i

print "Введите длину 2 стороны треугольника: "
second_side = gets.chomp.to_i

print "Введите длину 3 стороны треугольника: "
third_side = gets.chomp.to_i

isosceles = (first_side == second_side || first_side == third_side || second_side == third_side)

if first_side > 0 && second_side > 0 && third_side > 0
	if first_side == second_side && first_side == third_side
		puts "Треугольник равносторонний!"
	elsif first_side > second_side && first_side > third_side	
		right_triangle = first_side**2 == second_side**2 + third_side**2
		puts "Треугольник прямоугольный? #{right_triangle}"
		puts "Треугольник равнобедренный? #{isosceles}" 
	elsif second_side > first_side && second_side > third_side
		right_triangle = second_side**2 == first_side**2 + third_side**2
		puts "Треугольник прямоугольный? #{right_triangle}"
		puts "Треугольник равнобедренный? #{isosceles}"
	elsif third_side > first_side && third_side > second_side 
		right_triangle = third_side**2 == first_side**2 + second_side**2
		puts "Треугольник прямоугольный? #{right_triangle}"
		puts "Треугольник равнобедренный? #{isosceles}"	
	else
		puts "Треугольник обычный!" 
	end
else 
	puts "Введите корректные данные!"
end