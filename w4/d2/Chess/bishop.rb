class Bishop < Piece # diagonal only
  include Slideable
  
  def move_dirs # have to call module & return possible directions? 
    # this => modules => private method +> returns all of the possible diagonal moves the bishop can make 
    #should only return diagonal dirs, (specific diagonal spaces?)
  end
end