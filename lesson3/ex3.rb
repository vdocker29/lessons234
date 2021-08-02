require '~/mylessons/lesson3/ex2.rb'
class Train < Route
  
  attr_accessor :t_wagons, :speed, :get_route

  def initialize
  @speed = 0
  end

  def add_train(num, type, wagons)
    @t_name = num
    @t_type = type
    @t_wagons = wagons
    if (type == "Пассажирский") || (type == "Грузовой")
      puts "Все хорошо"
    else
      puts "Неправильно задан тип поезда!"
    end
  end

  def set_speed(t_speed)
    @speed = t_speed
    puts "Ваша текущая скорость: #{@speed}"
  end

  def brake
    @speed = 0
    puts "Тормозим! Текущая скорость: #{@speed}"
  end

  def wagons
    puts "#{@t_wagons}"
  end

  def add_wagon(add)
    if @speed != 0
      puts "Сначало нужно оставноить поезд!"
    else
      @t_wagons += add
    end
  end

  def remove_wagon(subtract)
    if @speed != 0
      puts "Сначало нужно оставноить поезд!"
    else
      @t_wagons -= subtract
    end
  end

  def get_route(route_name)
    @all_station << route_name
  end
end

mytrain = Train.new
mytrain.add_train("ER13", "Грузовой", 42)
mytrain.set_speed(120)
mytrain.add_wagon(5)
mytrain.wagons
#Тут я добавляю начальную и конечну станцию в список class Route
newroute = Route.new("S1", "S19")
#Проверяю список чтобы убедиться добавились ли они или нет?
newroute.list_route
#Хочу добавить в существующий список новый маршрут
mytrain.get_route("S2")
#Пишет что это неопределенный метод "<<" for nil:NilClass
#Дальше я снова проверяю, есть ли в списке хоть что-то
newroute.list_route