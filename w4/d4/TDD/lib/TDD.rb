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


def stock_picker(days)
  buy_and_sell = []
  (0...days.length - 1).each do |i|
    (i + 1...days.length).each {|j| buy_and_sell << [days[i], days[j]]}
  end
  max_profit = 0
  best_days = nil
  buy_and_sell.each do |profit|
    gains =  profit[1] - profit[0]
    if gains > max_profit
      max_profit = gains
      best_days = [days.index(profit[0]), days.index(profit[1]) ]
    end
  end
  best_days
end

#find unique pairs 
