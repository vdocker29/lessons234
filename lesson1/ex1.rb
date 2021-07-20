puts "Представьтесь, ваше имя:"
user_name = gets.chomp
puts "Укажите ваш рост в см:"
body_growth = gets.chomp
body_weight = "#{(body_growth.to_i - 110) * 1.15}"
if body_weight.to_i > 0 
    puts "#{user_name}, ваш идеальный вес: #{body_weight.to_i}"
else
    puts "Ваш вес уже оптимальный."
end
