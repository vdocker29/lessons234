class Route

  attr_accessor :all_station, :add_station, :list_route

  def initialize(starting_station, end_station)
    @all_station = []
    @starting_station = starting_station
    @end_station = end_station
    @all_station << @starting_station
    @all_station << end_station
  end

  def add_station(station_name)
    @all_station.insert(1, station_name)
  end

  def list_route
    puts "Текущие станции: "
    puts @all_station
  end

  def delete_station(d_station)
    if @all_station.include?(d_station)
      puts "Станция #{d_station}, успешна удалена из списка!"
      @all_station.delete(d_station)
    else
      puts "Станция не найдена!"
    end
  end
  
  def list_my_route
    puts "#{@all_station}"
  end
end

