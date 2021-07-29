month_hash = { 
    "january" => 30,
    "february" => 28,
    "march" => 31,
    "april" => 30,
    "may" => 31,
    "june" => 30,
    "july" => 31,
    "august" => 31,
    "septembr" => 30,
    "october" => 31,
    "november" => 30,
    "december" => 31,
}
month_hash.each do |month, date|
    if date == 30
        puts "#{month}: #{date}"
    end
end
