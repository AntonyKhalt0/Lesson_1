puts "Введите 3 коэффициента уравнения a, b, c (Enter для ввода): "
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i

d = b**2 - 4 * a * c

if d.positive?
  puts "Дискриминант = #{d}, 1й корень уравнения = #{(-b + Math.sqrt(d)) / 2 * a}, 2й корень уравнения = #{(-b - Math.sqrt(d)) / 2 * a}"
elsif d == 0
  puts "Дискриминант = #{d}, 1й корень уравнения = #{-b / 2 * a}"
else
  puts "Дискриминант = #{d}, корней уравнения нет!"
end