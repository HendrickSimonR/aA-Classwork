require_relative "Piece"
require_relative "Slideable"

class Queen < Piece # horizontal & diagonal 
  include Slideable
  
  def self.move_dirs
    HORIZONTAL_DIRS + DIAGONAL_DIRS
  end
end