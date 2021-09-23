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

