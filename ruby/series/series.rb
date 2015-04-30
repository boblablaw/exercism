class Series
  def initialize(series)
    @series = series.split('').map(&:to_i)
  end

  attr_reader :series

  def slices(num_slices)
    raise ArgumentError if num_slices > series.length

    (0..series.length - num_slices).each_with_index.map do |index, slices|
      series[index...index + num_slices]
    end
  end
end
