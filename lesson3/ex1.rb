class Station
  attr_accessor :train_list
  def initialize(t_name)
    puts t_name
    @train_list = {}
  end

  def get_train(train_name, train_type)
    if (train_type == "Пассажирский") || (train_type == "Грузовой")
      @train_list[train_name] = train_type
      puts "Приняли поезд: #{train_name} - #{train_type}"
    else
      puts "Неправильный тип поезда: #{train_type}"
    end
  end

  def current_train_list
    puts "Текущие поезда:"
    @train_list.each {| name, type | puts "#{name} - #{type}"}
  end

  def train_type_list
    @pcount = 0 
    @gcount = 0
    @train_list.each do |name, type|
        if type.include?("Пассажирский")
          @pcount +=1
          puts "Пассажирские поезда:" if @pcount == 1
          puts "#{name} - #{type}"
        else
          @gcount +=1
          puts "Грузовые поезда:" if @gcount == 1
          puts "#{name} - #{type}"
        end
      end
    puts "Количество пассажирский поездов: #{@pcount}.
    Количество грузовых поездов: #{@gcount}."
  end

  def send_train(sname, stype)
    @train_list.each do |tname, ttype|
      if (tname == sname) & (ttype == stype)
        puts "Поезд был отправлен: #{sname} - #{ttype}"
        @train_list.delete(sname.to_s)
      else
      end
    end
  end 
end

#Ниже продемонстрированы возможности
=begin
newtrain = Station.new("Mytrain")
puts newtrain
newtrain.get_train("ER28", "Пассажирский")
newtrain.current_train_list
newtrain.train_type_list
newtrain.send_train("ER28", "Пассажирский")
newtrain.current_train_list
=end