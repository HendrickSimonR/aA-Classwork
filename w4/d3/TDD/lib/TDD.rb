def my_uniq(array)
  uniques = []
  array.each { |ele| uniques << ele unless uniques.include?(ele) }
  uniques
end 

class Array
  def two_sum
    pairs = []
    (0...self.length - 1).each do |i|
      (i + 1...self.length).each {|j| pairs << [i, j] if self[i] + self[j] == 0} 
    end
    pairs
  end
end

def my_transpose(two_d_array)
  transposed = []
  (0...two_d_array.length).each do |i|
    sub_array = []
    (0...two_d_array.length).each do |j|
      sub_array << two_d_array[j][i]
    end
    transposed << sub_array
  end
  transposed
end 

#find unique pairs 
