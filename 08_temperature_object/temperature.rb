class Temperature
  def initialize(temperature)
    @temperature = temperature
    if @temperature[:f] == nil
      @temperature[:f] = self.class.ctof(@temperature[:c])
    else
      @temperature[:c] = self.class.ftoc(@temperature[:f])
    end
  end

  def self.from_celsius(c)
    self.new(:c => c)
  end

  def self.from_fahrenheit(f)
    self.new(:f => f)
  end

  def in_celsius
    @temperature[:c]
  end

  def in_fahrenheit
    @temperature[:f]
  end

  def self.ftoc(f)
    (f - 32) * (5.0 / 9)
  end

  def self.ctof(c)
    c * (9.0 / 5) + 32
  end
end


class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end