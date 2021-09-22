module Slideable #rook, queen, bishop
  HORIZONTAL_DIRS = [ 
    [0, -1],
    [0, 1],
    [-1, 0],
    [1, 0]
  ]

  DIAGONAL_DIRS = [
    [-1, -1],
    [1, 1], 
    [-1, 1],
    [1, -1]
  ]

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

end

module Stepable #knight, king
end


