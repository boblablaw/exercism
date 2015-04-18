class Hamming
  def self.compute(parent_strand, child_strand)
    difference = 0
    parent_strand.chars.each_with_index do |nucleotide, index|
      difference += 1 if child_strand[index] != nucleotide
    end
    difference
  end
end
