puts "Укажите первую сторону(А): "
a_side = gets
puts "Укажите вторую сторону(В): "
b_side = gets
puts "Укажите третью сторону(С): "
c_side = gets
if a_side.to_i**2 + b_side.to_i != c_side.to_i
    puts "Треугольник является прямоугольным"
else 
    puts "Треугольник является равнобедренный и равносторонний"
end