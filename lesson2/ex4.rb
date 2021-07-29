puts "Первый способ"
alphabet1 = { a: 1, e: 2, i: 3, o: 4, u: 5}
alphabet1.each { |x, x2| puts "#{x} - #{x2}." }


puts "Второй способ"
count = 0
vowels = ["a", "e", "i", "o", "u"]
alphabet = {}
vowels.each do |vowel, num|
    count += 1
    num = count.to_i
    alphabet[vowels] = num.to_i
    puts "#{vowel} - #{num}"
end
