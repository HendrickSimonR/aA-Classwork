class MaxIntSet
  attr_accessor :store 

  def initialize(max)
    @store = Array.new(max, false) 
  end

  def insert(num)
    raise 'Out of bounds' if num >= @store.length || num < 0
    @store[num] = true 
  end

  def remove(num)
    @store[num] = false 
  end

  def include?(num)
    @store[num] 
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet

  attr_accessor :store

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
  end

  def insert(num)
    idx = num % num_buckets
    @store[idx] << num if !self.include?(num)
  end

  def remove(num)
    idx = num % num_buckets
    @store[idx].delete(num) if self.include?(num)
  end

  def include?(num)
    idx = num % num_buckets
    @store[idx].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_accessor :count, :store 

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    idx = num % num_buckets
    
    if !include?(num)
      @count += 1
      @store[idx] << num 
    end 

    if @count == num_buckets
      resize!
    end 
  end

  def remove(num)
    if include?(num)
      @count -= 1
      idx = num % num_buckets
      @store[idx].delete(num)
    end 
  end

  def include?(num)
    idx = num % num_buckets
    @store[idx].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
    new_num_buckets = num_buckets * 2
    temp_arr = Array.new(new_num_buckets) { Array.new }
    @store.each do |sub_arr| 
      sub_arr.each do |el|
        idx = el % new_num_buckets
        temp_arr[idx] << el
      end 
    end
    
    @store = temp_arr 
  end
end
