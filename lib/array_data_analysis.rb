class ArrayDataAnalysis

  def initialize temperatures
    @temperatures = temperatures
  end

  def lowest_temperature
    min_temp = []
    @temperatures.map do |temp|
      min_temp << temp[2]
    end
    min_temp.min
  end

  def highest_temperature
    high_temp = []
    @temperatures.map do |temp|
      high_temp << temp[1]
    end
    high_temp.max
  end

  def day_of_lowest_temperature
    low_day = @temperatures.select {|day| day.include?(lowest_temperature)}
    low_day[0][0]
  end

  def day_of_highest_temperature
    high_day = @temperatures.select {|day| day.include?(highest_temperature)}
    high_day[0][0]
  end

  def average_temperatures
    avg_temp = []
    @temperatures.map do |temp|
      avg_temp << (temp[1] + temp[2])/2.0
    end
    avg_temp
  end
end
