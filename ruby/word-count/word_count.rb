class Phrase
  def initialize(phrase)
    @phrase = parse(phrase)
  end

  def word_count
    @phrase.each_with_object(Hash.new(0)) do |word, memo|
      memo[word] += 1
    end
  end

  private

  def parse(phrase)
    phrase.downcase.scan(/[\w']+/)
  end
end
