def my_min(arr)
  smallest = nil
  arr.each do |num1|
    smallest = num1 if arr.all? do |num2|
      num1 <= num2
    end
  end
  smallest
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

# quadratic polynomial, n^2

def my_min2(arr)
  smallest = nil
  arr.each do |num1|
    smallest = num1 if smallest.nil? || smallest > num1
  end
  smallest
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min2(list)

# linear polynomial, n


def largest_contiguous_subsum(list)
  sub_arrs = []

  (0...list.length).each do |i| 
    (0...list.length).each do |j|
      sub_arrs << list[i..j]if i <= j
    end 
  end 

  max = nil
  sub_arrs.each do |sub|
    max = sub.sum if max == nil || sub.sum > max
  end 

  max 
end


# Time Complexity = O(n^3) polynomial/quadratic
# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

    # possible sub-sums
    # [5]           # => 5
    # [5, 3]        # => 8 --> we want this one
    # [5, 3, -7]    # => 1
    # [3]           # => 3
    # [3, -7]       # => -4
    # [-7]          # => -7

def largest_contiguous_subsum2(list)
  largest_sum = list.first
  current_sum = list.first

  (1...list.length).each do |i|
    if current_sum < 0
      current_sum = 0
    end 
    current_sum += list[i]
    if current_sum > largest_sum
      largest_sum = current_sum
    end
  end 
  largest_sum
end

# O(n) time because only used one loop



list = [-5, -1, -3]
p largest_contiguous_subsum2(list) # => 8 (from [7, -6, 7])