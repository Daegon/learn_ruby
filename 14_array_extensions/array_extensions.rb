class Array

  def sum
    sum = 0
    self.each {|el| sum += el}
    sum
  end

  def get_square_lambda
    lambda { |x| x ** 2 }
  end

  def square
    self.map &get_square_lambda
  end

  def square!
    self.map! &get_square_lambda
  end

end