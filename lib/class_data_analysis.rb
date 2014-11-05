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

  
end
