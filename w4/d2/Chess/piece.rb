class Piece #SUPERDUPER
  attr_reader :board, :color
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color # white/black
    @board = board
    @pos = pos # [x,y]
  end

  def to_s
    # symbol
  end

  def empty?
    false
  end

  def moves(pos) # (piece_class, pos) ? (Rook, [0,0])
    result = []
  
    result
  end 
end

# piece_class.move_dirs.each do |direction|
#    result << grow_unblocked(direction)
# end 












