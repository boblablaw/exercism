class Grains
  @chess_board = Hash.new {|hash, key| hash[key] = (key == 1) ? 1 : hash[key-1] * 2}

  def self.square(n)
    puts @chess_board[8]
    @chess_board[n]
  end

  def self.total
    (1..64).inject {|total, i| total + @chess_board[i]}
  end
end
