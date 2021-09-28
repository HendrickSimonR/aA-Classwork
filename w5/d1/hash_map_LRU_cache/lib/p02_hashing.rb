class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash # [], []
    # self.object_id.hash
    self.join("").to_i.hash
  end
end

class String
  def hash
    res = ""
    self.each_char do |elem|
      res += elem.ord.to_s
    end
    res.to_i.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    arr = []
    self.each do |key, val|
      arr << key.to_s.ord
      arr << val.ord
    end
    arr.sort.hash

    # 0
  end
end
