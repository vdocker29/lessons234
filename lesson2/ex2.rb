numbers = [10]
while numbers.last != 100
    x = numbers.last
    x += 5
    numbers << x.to_i
end
puts numbers
