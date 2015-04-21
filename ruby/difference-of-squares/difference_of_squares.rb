class Squares

  def initialize(number)
    @number = number
  end

  def sum_of_squares
    (1..@number).map { |x| x ** 2 }.inject :+
  end

  def square_of_sums
    ((1..@number).inject :+) ** 2
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
