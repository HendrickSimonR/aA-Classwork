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

  def moves# maybe take in a pos?
    result = []
    move_dirs.each do |dx, dy|
      result.concat(grow_unblocked_moves_in_dir(dx, dy))
    end
    result
  end

  private

  def move_dirs # ERROR IF move_dirs not written properly
    raise NotImplementedError
  end

  def grow_unblocked_moves_in_dir(dx, dy) # [1,1]
    result = []
    x, y = pos
    new_pos = dx

    until !board.valid_pos?(new_pos)
      x, y = x + dx, y + dy
    end
    

    



    result
  end 

end

# until !valid_moves? 




