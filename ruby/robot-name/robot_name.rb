class Robot
  attr_accessor :name

  def initialize
    @name = random_name
  end

  def reset
    initialize
  end

  private

  def random_name
    (("A".."Z").to_a.sample(2) + (1..9).to_a.sample(3)).join
  end
end
