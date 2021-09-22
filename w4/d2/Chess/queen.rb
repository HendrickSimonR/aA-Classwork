require_relative "piece"
require_relative "slideable"

class Queen < Piece # horizontal & diagonal 
  include Slideable
  
  def move_dirs
    puts horizontal_dirs + diagonal_dirs
  end
end