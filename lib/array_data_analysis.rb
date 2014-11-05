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
end
