class Piece #SUPERDUPER
  attr_reader :board 

  def initialize(color, board, pos)
    @color = color # white/black
    @board = board
    @pos = pos # [x,y]
  end

  def pos=(val)
  end

  def to_s
    @board.each { |row| puts row.join(' ') }
  end

  def empty?
  end

  def moves(pos) # (piece_class, pos) ? (Rook, [0,0])
    result = []
  
    result
  end 
end

# piece_class.move_dirs.each do |direction|
#    result << grow_unblocked(direction)
# end 












