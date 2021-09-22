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

class Rook < Piece # horizontal only 
  include Slideable
  
  def move_dirs
  end
end

class Bishop < Piece # diagonal only
  include Slideable
  
  def move_dirs # have to call module & return possible directions? 
    # this => modules => private method +> returns all of the possible diagonal moves the bishop can make 
    #should only return diagonal dirs, (specific diagonal spaces?)
  end
end

class Queen < Piece # horizontal & diagonal 
  include Slideable
  
  def move_dirs # return diagonal and horizontal spaces available
  end
end


class Knight < Piece

  def move_dirs
  end
end

class King < Piece

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