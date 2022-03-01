print "Введите длину 1 стороны треугольника: "
first_side = gets.chomp.to_i

print "Введите длину 2 стороны треугольника: "
second_side = gets.chomp.to_i

print "Введите длину 3 стороны треугольника: "
third_side = gets.chomp.to_i

a, b, hypo = [first_side, second_side, third_side].sort
isosceles = (hypo == a || hypo == b || a == b)
right_triangle = hypo**2 == a**2 + b**2 

if hypo > 0 && a > 0 && b > 0
    if hypo == a && hypo == b
        puts "Треугольник равносторонний!"
    elsif right_triangle
        puts "Треугольник прямоугольный? #{right_triangle}"
        puts "Треугольник равнобедренный? #{isosceles}"
    elsif isosceles
       puts "Треугольник равнобедренный!"
    else
        puts "Треугольник обычный!" 
    end
else 
    puts "Введите корректные данные!"
end
