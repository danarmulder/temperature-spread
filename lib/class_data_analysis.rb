class ClassDataAnalysis
  def initialize temp_data
    @temp_data = temp_data
  end

  def lowest_temperature
    low_temps = []
    low_temps = @temp_data.map do |temp|
      temp.low
    end
    low_temps.min
  end

  def highest_temperature
    high_temps = []
    high_temps = @temp_data.map do |temp|
      temp.high
    end
    high_temps.max
  end

  def day_of_lowest_temperature
    low_day = 0
    @temp_data.each do |temp|
       if temp.low == lowest_temperature
         low_day = temp.day
       end
    end
    low_day
  end

  def day_of_highest_temperature
    high_day = 0
    @temp_data.each do |temp|
       if temp.high == highest_temperature
         high_day = temp.day
       end
    end
    high_day
  end

  def average_temperatures
    avg_temp = []
    @temp_data.each do |temp|
      avg_temp << (temp.low+temp.high)/2.0
    end
  avg_temp
  end
end
