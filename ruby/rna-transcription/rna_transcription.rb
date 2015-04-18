class Complement
  @dna_map = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  @rna_map = @dna_map.invert

  def self.of_dna(strand)
    find_complement(strand, @DNA_MAP)
  end

  def self.of_rna(strand)
    find_complement(strand, @RNA_MAP)
  end

  def self.find_complement(strand, gene_map)
    strand.each_char.map do |nucleotide|
      gene_map.fetch(nucleotide) { fail ArgumentError, "The nucleotide #{nucleotide} is invalid." }
    end.join
  end
end
