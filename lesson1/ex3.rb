puts "Укажите первую сторону(А): "
a_side = gets
puts "Укажите вторую сторону(В): "
b_side = gets
puts "Укажите третью сторону(С): "
c_side = gets
if c_side.to_i == a_side.to_i + b_side.to_i
    puts "Треугольник прямоугольный"
elsif 
    if c_side.to_i == a_side.to_i && b_side.to_i == a_side.to_i && c_side.to_i == b_side.to_i
        puts "Равнобедренный и равносторонний"
    else 
        c_side.to_i == a_side.to_i || b_side.to_i == a_side.to_i || c_side.to_i == b_side.to_i
        puts "Равнобедренный"
    end
end
