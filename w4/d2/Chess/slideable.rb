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

  # MAYBE DONT NEED THESE ?
  # def horizontal_dirs
  #   HORIZONTAL_DIRS
  # end

  # def diagonal_dirs
  #   DIAGONAL_DIRS
  # end

  def moves # maybe take in a pos?
    # call grow_unblocked_(pos) & return result 
  end

  private

  def move_dirs # ERROR IF move_dirs not written properly
  end

  def grow_unblocked_moves_in_dir(dx, dy) # <= piece's current position
    # return possible positions from piece's current position
  end

end

# until !valid_moves? 




