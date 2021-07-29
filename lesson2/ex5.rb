puts "Введите число: "
date = gets.chomp.to_i
puts "Введите месяц: "
month = gets.chomp.to_i
puts "Введите год:"
year = gets.chomp.to_i
days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0))
    days[1] +=1
    puts "Високосный год, порядковый номер: #{days.first(month - 1).inject(0, :+) + date}"
else 
    puts "Не високосный год, порядковый номер: #{days.first(month - 1).inject(0, :+) + date} "
end
