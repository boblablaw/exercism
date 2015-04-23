class Prime
  NUMBERS = 1..105_000

  def self.nth(num)
    raise ArgumentError.new("Can't find the #{num}th prime") if (num <= 0)
    primes = NUMBERS.map { |n| is_prime?(n) ? n : nil }.compact
    primes.values_at(num - 1).first
  end

  def self.is_prime?(num)
    return false if num <= 1
    2.upto(Math.sqrt(num)) do |x|
      return false if num % x == 0
    end
    true
  end
end
