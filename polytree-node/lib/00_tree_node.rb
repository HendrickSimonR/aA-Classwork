require 'byebug'
class PolyTreeNode
  attr_reader :value, :parent, :children
  def initialize(value=nil)
    @value = value
    @parent = nil
    @children = []
  end 

  def parent=(new_parent)
    # before reassigning parent, @parent => old_parent 
    if new_parent != nil 
      if @parent != nil
        @parent.children.delete(self)
      end
      @parent = new_parent
      @parent.children << self
    elsif @parent != nil
      @parent.children.delete(self)
      @parent = nil
    end
  end

  def add_child(child)
    child.parent = self if child.parent != self 
  end

  def remove_child(child)
    raise if !child.parent.children.include?(child)
    child.parent = nil
  end

  def dfs(target_value)
    return self if self.value == target_value 


    self.children.each do |child| #imagiine [child1, child2]
      rec_step = child.dfs(target_value)
      if rec_step 
        return rec_step
      end
    end
    nil
  end


  def bfs(target)
    queue = [self]
    
    queue.each do |node|
      node.children.each { |child| queue << child }
      return node if node.value == target
    end 

    nil
  end
end
