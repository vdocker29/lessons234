#К сожалению без гема метод .capitalize! не работает на русской кириллице, оставил так.
shopping = { }
basket = []
    while true 
        puts "Введите название товара?"
        title = gets.chomp.downcase
        if title.to_s == "стоп"
            puts "Спасибо что посетили наш магазин!"
            shopping.delete("стоп")
            break
        end
        puts "Введите цену: "
        price = gets.chomp.downcase
        if price.to_s == "стоп"
            puts "Спасибо что посетили наш магазин!"
            shopping.delete("стоп")
            break
        end
        puts "Введите количество товара: "
        count = gets.chomp.downcase
        if count.to_s == "стоп"
            puts "Спасибо что посетили наш магазин!"
            shopping.delete("стоп")
            break
        end
        shopping[title.to_sym] = [price.to_i => count.to_i]
        shopping.each do |k, v| puts "#{k}"
            v.each do |p|
                p.each do |n1, n2|
                    basket << (n1*n2)
                end
            end
        end
        puts "Ваша корзина:"
        shopping.each do |key, value|
            value.each do |b_basket|
                b_basket.each do |bb1, bb2| puts "#{key.to_s.capitalize!}: #{bb1} рублей, количество - #{bb2}шт."
                end
            end
        end
        puts "ИТОГОВАЯ СУММА #{basket.uniq.inject(&:+)}."
    end
