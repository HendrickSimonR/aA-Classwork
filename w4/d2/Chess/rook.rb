require_relative "Piece"
require_relative "Slideable"

class Rook < Piece # horizontal only 
  include Slideable
  
  def self.move_dirs
    HORIZONTAL_DIRS
  end
end