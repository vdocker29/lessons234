# ах^2 + bx + c = 0. 
puts "Введите коэффициент - а: "
coeff_a = gets
puts "Введите коэффициент - b: "
coeff_b = gets
puts "Введите коэффициент - c: "
coeff_c = gets
dt = coeff_b.to_i**2 - 4 * coeff_a.to_i * coeff_c.to_i
if dt < 0
    puts "#{dt}, корней нет"
elsif dt == 0
    puts "Один корень, Х = #{-coeff_b.to_i / (2 * coeff_a.to_i)}"
else dt > 0
    x1 = (-coeff_b.to_i - Math.sqrt(dt.to_i)) / ( 2 * coeff_a.to_i)
    x2 = (-coeff_b.to_i + Math.sqrt(dt.to_i)) / (2 * coeff_a.to_i)
    puts "Дискриминант равен = #{dt}, имеет два корня x1 = #{x1.round(2)}, x2 = #{x2.round(2)}"
end
