require_relative "Piece"
require_relative "Slideable"

class Bishop < Piece # diagonal only
  include Slideable
  
  def self.move_dirs
    DIAGONAL_DIRS
  end
end