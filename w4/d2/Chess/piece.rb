class Piece

  def initialize(color, board, pos)
    @color = color # white/black
    @board = board
    @pos = pos # [x,y]
  end

  def pos=(val)
  end

  def to_s
  end

  def empty?
  end

  def moves
    result = []

    result
  end 
end

class Rook < Piece
  include Slideable
  
  def move_dirs
  end
end

class Knight < Piece

  def move_dirs
  end
end

class Pawn < Piece

  def move_dirs
  end
end

class NullPiece < Piece
  def initialize
  end

  def empty?
  end

end