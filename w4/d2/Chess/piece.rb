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
  end 
end

class Rook < Piece
end

class Knight < Piece
end

class Pawn < Piece
end

class NullPiece < Piece
end