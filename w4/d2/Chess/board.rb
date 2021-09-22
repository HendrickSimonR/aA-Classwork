require_relative 'Piece'

class Board

  def initialize
    @board = Array.new(8) { Array.new(8) } 
    @sentinal = nil
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @board[row][col] = val
  end

  def valid_pos?(pos)
    row, col = pos
    return false if (row > 7 || row < 0) || (col > 7 || col < 0)
    # if same color at pos, return false
    true
  end

  def move_piece!(color, start_pos, end_pos)
    raise RuntimeError.new("No Piece") if self[start_pos] == @sentinal
    raise RuntimeError.new("Invalid End Position") if !self.valid_pos?(end_pos) 

    move_this = self[start_pos] 
    self[end_pos] = move_this
    self[start_pos] = @sentinal
  end

end

# take piece, move to new pos @self[end_pos] = piece???
# make prev pos a null piece @self[start_pos] + nullpiece