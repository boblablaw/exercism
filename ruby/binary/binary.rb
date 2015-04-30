class Binary
  def initialize(binary)
    @binary = is_binary?(binary) ? binary : ''
  end

  def to_decimal
    @binary.chars.reverse.each_with_index.reduce(0) do |sum, (char, index)|
      sum += char.to_i * (2**index)
    end
  end

  private

  def is_binary?(str)
    str.to_i.to_s == str
  end
end
