class SumOfMultiples
  def self.to(top)
    new(3, 5).to(top)
  end

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(top)
    numbers = []
    @multiples.each do |digit|
      (0..top-1).step(digit) { |m| numbers << m }
    end
    numbers.uniq.reduce(:+) || 0
  end
end
