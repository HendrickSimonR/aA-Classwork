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
p my_min2(list)

# linear polynomial, n

