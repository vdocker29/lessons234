fib_num = [0]
x1 = 0
x2 = 1
until fib_num.sort.last > 100
    xsum = x1 + x2
    x1 = x2.to_i 
    x2 = xsum.to_i
    fib_num << x2.to_i
end
if fib_num.last > 100
    fib_num.delete(fib_num.last)
    fib_num.each {
        |x| puts "#{x}"
    }
else
    fib_num.each {
        |x| puts "#{x}"
    }
end