class NullPiece < Piece
  include Singleton

  def initialize
  end

  def empty?
  end
end